package com.ppfly.activiti;

import org.activiti.engine.HistoryService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricVariableInstance;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class)
@SpringBootTest
public class VariableTests {


    @Autowired
    private RuntimeService runtimeService;

    @Autowired
    private RepositoryService repositoryService;


    /**
     * 启动流程实例并设置流程变量
     */
    @Test
    public void startProcessAndSetVariable() {
        Map<String, Object> map = new HashMap<>(10);
        map.put("请假天数", 5);
        // 通过流程定义id启动流程并设置流程变量
        // runtimeService.startProcessInstanceById("helloWorld:1:4",map);
        // 通过流程定义key启动流程并设置流程变量
        runtimeService.startProcessInstanceByKey("helloWorld", map);

    }

    /**
     * 通过执行实例id设置流程变量
     */
    @Test
    public void runSetVariableByExecutionId(){
        Map<String, Object> map = new HashMap<>(10);
        map.put("请假天数", 10);
        runtimeService.setVariables("17503",map);

    }

    @Autowired
    private TaskService taskService;

    /**
     * 通过任务id设置变量
     */
    @Test
    public void setVariableByTaskId(){
        Map<String, Object> map = new HashMap<>(10);
        map.put("请假原因", "病假");
        taskService.setVariables("17506",map);
    }


    /**
     * 通过执行实例id获取变量
     */
    @Test
    public void getVariable(){
        //获取流程变量请假原因的值
        String reason = (String)runtimeService.getVariable("17501","请假原因");
        System.out.println(reason);
    }

    @Autowired
    private HistoryService historyService;

    /**
     * 查询历史流程变量
     */
    @Test
    public void getVariableByHistory(){
        List<HistoricVariableInstance> list = historyService.createHistoricVariableInstanceQuery().executionId("17501").list();
        for (HistoricVariableInstance historicVariableInstance : list) {
            System.out.println("变量名称:"+historicVariableInstance.getVariableName());
            System.out.println("变量值:"+historicVariableInstance.getValue());
        }
    }


}
