package com.ppfly.activiti.listener.tasklistener;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;
import org.activiti.engine.impl.persistence.entity.ExecutionEntity;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * 添加候选人任务监听器
 */
@Component("candidateUsersListener")
@Slf4j
@Data
public class CandidateUsersListener implements TaskListener {

    @Override
    public void notify(DelegateTask delegateTask) {
        //申请人
        String userName = (String) delegateTask.getVariable("username");
        //（页面指定的）下一步审核人
        String nominator = (String) delegateTask.getVariable("nominator");
        //执行对象
        DelegateExecution delegateExecution = delegateTask.getExecution();
        //流程定义Key
        String processDefinitionKey = ((ExecutionEntity) delegateExecution).getProcessDefinitionKey();
        //流程实例Id
        String processInstId = delegateTask.getProcessInstanceId();
        //业务Id
        String businessKey = delegateExecution.getProcessInstanceBusinessKey();
        //任务Id
        String taskInstId = delegateTask.getId();
        //环节Id
        String taskDefId = delegateTask.getTaskDefinitionKey();


        String event = delegateTask.getEventName();
        switch (event) {
            case "create": {
                log.info("任务监听器TaskListener...create event");
                List<String> candidateUsers = new ArrayList<>();
                if (StringUtils.isNotEmpty(nominator)) {
                    log.debug("抢单模式页面指定了单一下一步受让人");
                    String[] nextStaffIdArr = nominator.split(",");
                    for (String nextStaffId : nextStaffIdArr) {
                        candidateUsers.add(nextStaffId);
                        break;
                    }
                } else {
                    log.debug("抢单模式页面未指定单一下一步受让人");
                    //todo 组合其他业务bean，比如查库
                    candidateUsers.add("wangwu");
                    candidateUsers.add("zhaoliu");
                    candidateUsers.add("tianqi");
                }
                delegateTask.addCandidateUsers(candidateUsers);
                break;
            }
            case "assignment":
                log.info("任务监听器TaskListener...assignment event");
                break;
            case "complete":
                log.info("任务监听器TaskListener...complete event");
                break;
            case "delete":
                log.info("任务监听器TaskListener...delete event");
                break;
        }
    }
}