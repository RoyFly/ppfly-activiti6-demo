package com.ppfly.activiti;

import org.activiti.engine.HistoryService;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.history.HistoricTaskInstance;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class HistoryServiceTests {


    @Autowired
    private HistoryService historyService;


    /**
     * 分页查询历史流程实例
     */
    @Test
    public void queryHistoryProcess() {
        List<HistoricProcessInstance> list = historyService.createHistoricProcessInstanceQuery()
                //查询已完成的
                .finished()
                .processDefinitionId("helloWorld:1:4")
                .orderByProcessInstanceDuration().desc()
                .listPage(0, 10);

        for (HistoricProcessInstance historicProcessInstance : list) {
            System.out.println("历史流程实例id:" + historicProcessInstance.getId());
            System.out.println("流程定义id:" + historicProcessInstance.getProcessDefinitionId());
            System.out.println("部署id:" + historicProcessInstance.getDeploymentId());
            System.out.println("开始节点id:" + historicProcessInstance.getStartActivityId());
            System.out.println("结束节点id:" + historicProcessInstance.getEndActivityId());
            System.out.println("结束时间:" + historicProcessInstance.getEndTime());
            System.out.println("耗费时间:" + historicProcessInstance.getDurationInMillis());
            System.out.println("====================");
        }
    }


    /**
     * 查询历史活动
     */

    @Test
    public void queryHistoryActiviti() {
        List<HistoricActivityInstance> list = historyService.createHistoricActivityInstanceQuery()
                .processDefinitionId("helloWorld:1:4")
                .finished()
                .orderByHistoricActivityInstanceEndTime()
                .desc()
                .listPage(0, 10);


        for (HistoricActivityInstance historicActivityInstance : list) {
            System.out.println("id:" + historicActivityInstance.getId());
            System.out.println("流程执行:" + historicActivityInstance.getExecutionId());
            System.out.println("流程定义id:" + historicActivityInstance.getProcessDefinitionId());
            System.out.println("流程实例id:" + historicActivityInstance.getProcessInstanceId());
            System.out.println("活动id:" + historicActivityInstance.getActivityId());
            System.out.println("活动类型:" + historicActivityInstance.getActivityType());
            System.out.println("活动名称:" + historicActivityInstance.getActivityName());
            System.out.println("办理人:" + historicActivityInstance.getAssignee());
            System.out.println("开始时间:" + historicActivityInstance.getStartTime());
            System.out.println("结束时间:" + historicActivityInstance.getEndTime());
            System.out.println("持续时间:" + historicActivityInstance.getDurationInMillis());
            System.out.println("==========================");
        }
    }

    /**
     * 查询历史任务
     */
    @Test
    public void queryHistoryTask(){
        List<HistoricTaskInstance> list = historyService.createHistoricTaskInstanceQuery()
                .finished()
                .taskAssignee("张三")
                .listPage(0, 10);
        for (HistoricTaskInstance historicTaskInstance : list) {
            System.out.println("任务id:"+historicTaskInstance.getId());
            System.out.println("任务名称:"+historicTaskInstance.getName());
            System.out.println("办理人:"+historicTaskInstance.getAssignee());
            System.out.println("创建时间:"+historicTaskInstance.getCreateTime());
            System.out.println("结束时间:"+historicTaskInstance.getEndTime());
            System.out.println("流程实例id:"+historicTaskInstance.getProcessInstanceId());
            System.out.println("流程定义id:"+historicTaskInstance.getProcessDefinitionId());
            System.out.println("执行实例id:"+historicTaskInstance.getExecutionId());
            System.out.println("持续时间:"+historicTaskInstance.getDurationInMillis());
            System.out.println("=======================");
        }
    }


}
