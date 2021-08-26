package com.ppfly.activiti;

import org.activiti.engine.HistoryService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.history.HistoricTaskInstance;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.runtime.ProcessInstanceQuery;
import org.activiti.engine.task.Task;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.ZipInputStream;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ProcInstanceTests {

    @Autowired
    private RuntimeService runtimeService;

    @Autowired
    private RepositoryService repositoryService;

    /**
     * 通过zip部署
     *
     * @throws FileNotFoundException
     */
    @Test
    public void deployProcessByZip() throws FileNotFoundException {
        // 流程部署 参与的表 act_re_procdef  act_ge_bytearry act_re_deployment
        // 加斜杠代表从classpah的根目录里面找文件
        InputStream inputStream = this.getClass().getResourceAsStream("/processes/processes.zip");
        // 部署流程
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        // 保存act_re_deployment
        Deployment deployment = repositoryService.createDeployment()
                .name("请假流程009")
                .addZipInputStream(zipInputStream)
                .deploy();

        System.out.println("部署成功，流程部署id:" + deployment.getId());//57501
    }

    /**
     *  启动流程实例
     */
    @Test
    public void startProcessDef() {
        // (1)通过processInstanceId启动
        //ProcessInstance processInstance = runtimeService.startProcessInstanceById();
        // (2) 通过processInstanceKey启动
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("helloWorld");
        // **（3)设置业务主键并通过processInstanceId启动流程
        // ProcessInstance startProcessInstanceById(String processDefinitionId, String businessKey);
        // 获取流程实例id
        System.out.println("流程实例id:" + processInstance.getId());

    }


    @Autowired
    private TaskService taskService;

    /**
     * 查询个人任务
     */
    @Test
    public void queryTask() {
        // 分页查询张三需要办理的业务
        List<Task> tasks = taskService.createTaskQuery().taskCandidateOrAssigned("张三").listPage(0, 4);
        for (Task task : tasks) {
            System.out.println("任务id：" + task.getId());
            System.out.println("任务名称：" + task.getName());
            System.out.println("任务办理人：" + task.getAssignee());
            System.out.println("流程定义id：" + task.getProcessDefinitionId());
            System.out.println("流程实例id：" + task.getProcessInstanceId());
            System.out.println("执行实例id：" + task.getExecutionId());
        }
    }

    @Test
    public void completeTask() {
        // 完成任务id为12505的任务
        taskService.complete("12505");
    }


    /**
     * 判断流程是否结束
     */
    @Test
    public void isComplete() {
        //判断流程实例对象是否还存在，不存在则已经结束
        //备注：流程中所有任务完成后，流程实例表中的该流程数据全部会删除，则查询该流程实例返回的应该是空对象。
        ProcessInstanceQuery processInstanceQuery = runtimeService.createProcessInstanceQuery().processInstanceId("12501");
        if (processInstanceQuery != null) {
            System.out.println("流程未结束");
        } else {
            System.out.println("流程已结束");
        }
    }

    /**
     * 查询正在运行的流程实例
     */
    @Test
    public void queryRunningProcessInstance() {
        // 分页查询流程实例
        List<ProcessInstance> processInstances = runtimeService.createProcessInstanceQuery().listPage(0, 4);
        for (ProcessInstance processInstance : processInstances) {
            System.out.println("执行实例id：" + processInstance.getId());
            System.out.println("流程定义id：" + processInstance.getProcessDefinitionId());
            System.out.println("流程部署id：" + processInstance.getDeploymentId());
        }
    }


    @Autowired
    private HistoryService historyService;

    @Test
    public void queryHisotyProcess() {
        List<HistoricProcessInstance> historicProcessInstances = historyService.createHistoricProcessInstanceQuery().listPage(0, 4);
        for (HistoricProcessInstance historicProcessInstance : historicProcessInstances) {
            System.out.println("执行实例id:" + historicProcessInstance.getId());
            System.out.println("流程定义id:" + historicProcessInstance.getProcessDefinitionId());
            System.out.println("部署id:" + historicProcessInstance.getDeploymentId());
            System.out.println("流程定义名称:" + historicProcessInstance.getProcessDefinitionName());
            System.out.println("流程定义版本:" + historicProcessInstance.getProcessDefinitionVersion());
        }
    }


    /**
     * 查询历史流程任务
     */
    @Test
    public void queryHistoryTask() {
        List<HistoricTaskInstance> list = historyService.createHistoricTaskInstanceQuery().list();
        for (HistoricTaskInstance historicTaskInstance : list) {
            System.out.println("任务id:" + historicTaskInstance.getId());
            System.out.println("任务名称:" + historicTaskInstance.getName());
            System.out.println("办理人:" + historicTaskInstance.getAssignee());
            System.out.println("执行实例id:" + historicTaskInstance.getExecutionId());
            System.out.println("流程定义id:" + historicTaskInstance.getProcessDefinitionId());
            System.out.println("流程实例id:" + historicTaskInstance.getProcessInstanceId());
            System.out.println("任务创建时间:" + historicTaskInstance.getCreateTime());
            System.out.println("任务持续:" + historicTaskInstance.getDurationInMillis());
            System.out.println(">>>>>>>>>>");
        }
    }
}
