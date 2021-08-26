package com.ppfly.activiti.multiinstance;


import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.impl.persistence.entity.ExecutionEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;

/**
 * 会签少数服从多数策略
 */
@Service
@Transactional
@Slf4j
public class MinObeysMajStrategy implements MultiInstanceActivity {

    @Override
    public final String getStrategyName() {
        return "会签少数服从多数策略";
    }

    @Override
    public List<String> getUserNames(DelegateExecution execution) {
        log.info("设置会签环节的人员");

        //流程定义Key
        String processDefinitionKey = ((ExecutionEntity) execution).getProcessDefinitionKey();
        //环节Id
        String activityId = execution.getCurrentActivityId();
        //todo 查库
        log.info("流程:" + processDefinitionKey + " 环节：" + activityId + " 策略：" + getStrategyName());
        List<String> assigneeList = Arrays.asList("zhangsan", "lisi", "wangwu");
        return assigneeList;
    }

    @Override
    public boolean isComplete(DelegateExecution execution) {
        //实例总数
        int nrOfInstances = (int) execution.getVariable("nrOfInstances");
        //当前活动的数量，即尚未完成的实例。对于串审，这将始终为1
        int nrOfActiveInstances = (int) execution.getVariable("nrOfActiveInstances");
        //已完成的实例的数量。
        int nrOfCompletedInstances = (int) execution.getVariable("nrOfCompletedInstances");

        log.info("总的会签任务数量：" + nrOfInstances
                + "---当前活动的会签任务数量：" + nrOfActiveInstances
                + "---已经完成的会签任务数量：" + nrOfCompletedInstances);

        String variableFlagName = (String) execution.getVariable("flag");
        log.info("当前审核人" + "审核" + ("0".equals(variableFlagName) ? "通过" : "否决"));

        if (nrOfInstances - nrOfCompletedInstances <= 0) {//全部审核完成
            if (true) {//通过人票数居多（或人数相当）
                execution.setVariable("flag", 0);
            } else {//否定人票数居多
                execution.setVariable("flag", 0);
            }
            return true;
        }
        return false;
    }
}
