package com.ppfly.activiti.multiinstance;


import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.ActivitiIllegalArgumentException;
import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.impl.persistence.entity.ExecutionEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/**
 * 会签：少数服从多数策略
 */
@Service
@Transactional
@Slf4j
public class MinObeysMajStrategy implements MultiInstanceActivity {

    /**
     * 设置会签环节审核人员
     *
     * @param execution
     * @return
     */
    @Override
    public List<String> resolveUsersForTask(DelegateExecution execution) {
        //流程定义Key
        String processDefinitionKey = ((ExecutionEntity) execution).getProcessDefinitionKey();
        //环节Id
        String activityId = execution.getCurrentActivityId();
        //todo 查库
        log.info("流程：{}, 环节：{} 设置会签环节的人员...", processDefinitionKey, activityId);
        List<String> assigneeList = Arrays.asList("zhangsan", "lisi", "wangwu");
        return assigneeList;
    }

    /**
     * 当所有实例都完成时，多实例活动结束。
     * 但是，可以指定每次实例结束时计算的表达式。当这个表达式的计算结果为真时，所有剩余的实例都会被销毁，多实例活动结束，继续这个过程。
     * 这样的表达式必须在 completionCondition 子元素中定义
     *
     * @param execution
     * @return
     */
    @Override
    public boolean isComplete(DelegateExecution execution) {
        //约定优于配置
        String variableFlagName = "multInstFlag";
        //实例总数
        int nrOfInstances = (int) execution.getVariable("nrOfInstances");
        //当前活动的数量，即尚未完成的实例。对于串审，这将始终为1
        int nrOfActiveInstances = (int) execution.getVariable("nrOfActiveInstances");
        //已完成的实例的数量。
        int nrOfCompletedInstances = (int) execution.getVariable("nrOfCompletedInstances");

        log.info("总的会签任务数量：{}; 当前活动的会签任务数量:{}; 已经完成的会签任务数量:{}", nrOfInstances, nrOfActiveInstances, nrOfCompletedInstances);

        //存在execution中的变量，用以累计审核同意、拒绝的数量，进而决定最终的流程走向
        String multiInstancePassNumVar = variableFlagName + "_passNum";
        String multiInstanceRejectNumVar = variableFlagName + "_rejectNum";
        //累积的审核同意数量
        final Object passNumVar = execution.getVariable(multiInstancePassNumVar);
        Integer passNum = 0;
        if (Objects.isNull(passNumVar)) {
            execution.setVariable(multiInstancePassNumVar, 0);
        } else {
            passNum = Integer.parseInt(passNumVar.toString());
        }
        //累积的审核拒绝数量
        Integer rejectNum = 0;
        final Object rejectNumVar = execution.getVariable(multiInstanceRejectNumVar);
        if (Objects.isNull(rejectNumVar)) {
            execution.setVariable(multiInstanceRejectNumVar, 0);
        } else {
            rejectNum = Integer.parseInt(rejectNumVar.toString());
        }

        //当前审核人审核结果
        try {
            String flag = (String) execution.getVariable(variableFlagName);
            if ("0".equals(flag)) {
                log.info("当前审核人审核通过");
                execution.setVariable(multiInstancePassNumVar, ++passNum);
            } else {
                log.info("当前审核人审核否决");
                execution.setVariable(multiInstanceRejectNumVar, ++rejectNum);
            }
        } catch (Exception e) {
            throw new ActivitiIllegalArgumentException("提交流程请传参多实例流程流转变量：multInstFlag");
        }

        //设定最终的审核结果
        if (passNum >= rejectNum) {//通过人票数居多（或人数相当）
            execution.setVariable(variableFlagName, 0);
        } else {//否定人票数居多
            execution.setVariable(variableFlagName, 1);
        }
        return false;
    }
}
