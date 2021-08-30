package com.ppfly.common.service;

import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.ppfly.common.utils.Page;
import lombok.extern.slf4j.Slf4j;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.bpmn.model.FlowElement;
import org.activiti.bpmn.model.FlowNode;
import org.activiti.bpmn.model.SequenceFlow;
import org.activiti.engine.*;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.runtime.Execution;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.IdentityLink;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.util.stream.Collectors;

/**
 * 工作流基础ServiceImpl
 */
@Service
@Transactional
@Slf4j
public class BaseWorkflowServiceImpl implements BaseWorkflowService {

    @Autowired
    private TaskService taskService;

    @Autowired
    private RuntimeService runtimeService;

    @Autowired
    private HistoryService historyService;

    @Autowired
    private RepositoryService repositoryService;

    @Override
    public Page<Task> getTodoPage(Map<String, String> searchParam, int curPage, int pageSize) {
        //已签出或分配给用户的任务，或等待用户(候选用户或组)签出的任务
        Page<Task> page = new Page<>();
        final String userName = searchParam.get("userName");
        TaskQuery taskQuery = taskService.createTaskQuery().taskCandidateOrAssigned(userName).active().orderByTaskCreateTime().desc();
        final int totalSize = taskQuery.list().size();
        page.setTotalSize(totalSize);

        final List<Task> taskList = taskQuery.listPage((curPage - 1) * pageSize, pageSize);
        /**
         * todo: activiti工作流获取任务Task返回错误
         *
         * org.springframework.http.converter.HttpMessageNotWritableException: Could not write JSON:
         * lazy loading outside command context; nested exception is com.fasterxml.jackson.databind.JsonMappingException:
         * lazy loading outside command context
         *
         * todo：配置了MappingJackson2HttpMessageConverter，在Controller显式调用懒加载属性，之后报错：
         * HttpMessageNotWritableException: Could not write JSON: (was java.lang.NullPointerException)
         * ？？？原因？？？：实体类数据类型与封装值不匹配！实体类数据类型与封装值不匹配！或者有get方法但是没有对应的属性！
         * eg：一个字段类型仅仅把属性的基本类型（long）改为引用类型（Long），而并没有将set/get的类型一起修改
         *
         * todo：暂时用糊涂工具包解决吧...
         **/
        JSONArray array = new JSONArray();
        taskList.forEach(task -> {
            final JSONObject jsonObject = JSONUtil.parseObj(task, true);
            array.add(jsonObject);

            //流程名称、发起人、发起时间
            final ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(task.getProcessInstanceId()).singleResult();
            jsonObject.putOpt("processInstanceName", processInstance.getName());
            jsonObject.putOpt("startUserId", processInstance.getStartUserId());
            jsonObject.putOpt("startTime", processInstance.getStartTime());

            final List<IdentityLink> identityLinksForTask = taskService.getIdentityLinksForTask(task.getId());
            final Set<String> candidateSet = identityLinksForTask.stream().map(IdentityLink::getUserId).collect(Collectors.toSet());
            if (StringUtils.isEmpty(task.getAssignee())) {
                jsonObject.putOpt("candidate", StringUtils.join(candidateSet, ","));
            }
        });
        page.setResults(array);
        return page;
    }

    @Override
    public void withdraw(String processInstanceId, String currentUserId) throws Exception {
        // 校验流程是否结束
        ProcessInstance processInstance = runtimeService.createProcessInstanceQuery()
                .processInstanceId(processInstanceId).active().singleResult();
        if (processInstance == null) {
            throw new ActivitiObjectNotFoundException("流程已结束或已挂起，无法执行撤回操作");
        }

        HistoricTaskInstance myTask = getMyTask(processInstanceId, currentUserId);
        if (Objects.isNull(myTask)) {
            throw new ActivitiException("该任务非当前用户提交，无法撤回");
        }
        final String myActivityId = myTask.getTaskDefinitionKey();

        BpmnModel bpmnModel = repositoryService.getBpmnModel(myTask.getProcessDefinitionId());
        // 获取目标节点定义
        FlowNode myFlowNode = (FlowNode) bpmnModel.getMainProcess().getFlowElement(myActivityId);
        // 获取所有下一任务节点的标识ID
        Map<String, String> taskKeyMap = Maps.newHashMap();
        // 获取所有下一任务节点对应的FlowElement
//        List<FlowElement> flowElementList = getOutgoingTask(bpmnModel, myActivityId);
        List<FlowElement> flowElementList = new ArrayList<>();
        for (FlowElement flowElement : flowElementList) {
            String eleId = flowElement.getId();
            taskKeyMap.put(eleId, eleId);
        }

        // 获取当前流程待办事项，没有代办事项表明流程结束或已挂起
        List<Task> alltaskList = taskService.createTaskQuery().processInstanceId(processInstanceId).list();
        if (alltaskList.size() <= 0) {
            throw new ActivitiException("流程已结束或已挂起，无法执行撤回操作");
        }

        // 判断所有下一任务节点中是否有代办任务，没有则表示任务已办理或已撤回，此时无法再执行撤回操作
        List<Task> nextTaskList = Lists.newArrayList();
        for (Task task : alltaskList) {
            if (taskKeyMap.containsKey(task.getTaskDefinitionKey())) {
                nextTaskList.add(task);
            }
        }
        if (nextTaskList.size() <= 0) {
            throw new ActivitiException("任务已办理或已撤回，无法执行撤回操作");
        }

        // 执行撤回操作
        for (Task task : nextTaskList) {
            callBackTask(currentUserId, bpmnModel, myFlowNode, task);
        }

    }

    /**
     * 获取我要撤回的任务
     *
     * @param processInstanceId
     * @param currentUserId     必须是我处理的任务（暂不考虑我发起的任务）
     * @return
     * @see com.ppfly.common.controller.CommonController#delete(java.lang.String) 撤回发起的任务
     */
    private HistoricTaskInstance getMyTask(String processInstanceId, String currentUserId) {
        HistoricTaskInstance myTask = null;
        List<HistoricTaskInstance> htiList = historyService.createHistoricTaskInstanceQuery()
                .processInstanceId(processInstanceId)
                .orderByTaskCreateTime()
                .desc()
                .finished()
                .list();

        for (HistoricTaskInstance historicTaskInstance : htiList) {
            if (currentUserId.equals(historicTaskInstance.getAssignee())) {
                myTask = historicTaskInstance;
                break;
            }
        }
        return myTask;
    }

    /**
     * 撤回任务具体实现
     *
     * @param currentUserId
     * @param bpmnModel
     * @param myFlowNode
     * @param task
     */
    @Deprecated
    private void callBackTask(String currentUserId, BpmnModel bpmnModel, FlowNode myFlowNode, Task task) {
        Execution execution = runtimeService.createExecutionQuery()
                .executionId(task.getExecutionId()).singleResult();
        String activityId = execution.getActivityId();
        FlowNode flowNode = (FlowNode) bpmnModel.getMainProcess()
                .getFlowElement(activityId);

        // 记录原活动方向
        List<SequenceFlow> oriSequenceFlows = new ArrayList<SequenceFlow>();
        oriSequenceFlows.addAll(flowNode.getOutgoingFlows());
        flowNode.getOutgoingFlows().clear();
        // 建立新方向
        List<SequenceFlow> newSequenceFlowList = new ArrayList<SequenceFlow>();
        SequenceFlow newSequenceFlow = new SequenceFlow();
        newSequenceFlow.setId("sid-" + UUID.randomUUID().toString());
        newSequenceFlow.setSourceFlowElement(flowNode);
        newSequenceFlow.setTargetFlowElement(myFlowNode);
        newSequenceFlowList.add(newSequenceFlow);
        flowNode.setOutgoingFlows(newSequenceFlowList);

        taskService.addComment(task.getId(), task.getProcessInstanceId(), "主动撤回");
        taskService.resolveTask(task.getId());
        taskService.claim(task.getId(), currentUserId);
        taskService.complete(task.getId());
        flowNode.setOutgoingFlows(oriSequenceFlows);
    }

}
