package com.ppfly.common.service;

import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.ppfly.common.utils.Page;
import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.IdentityLink;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Set;
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

}
