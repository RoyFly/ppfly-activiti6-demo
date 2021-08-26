package com.ppfly.activiti;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ActivitiApplicationTests {

    @Autowired
    private RepositoryService repositoryService;

    @Autowired
    private RuntimeService runtimeService;

    @Autowired
    private TaskService taskService;

    /**
     *  部署流程
     */
    @Test
    public void deployProcess() {
        Deployment deploy = repositoryService.createDeployment()
                .name("公司请假单") //部署后的名称
                .addClasspathResource("processes/helloWorld.bpmn")
                .addClasspathResource("processes/helloWorld.png")
                .deploy();
        System.out.println("部署成功，流程部署id为：" + deploy.getId());
    }


    /**
     * 启动流程
     */
    @Test
    public void startProcess() {
        // 通过流程定义id启动流程
//        String processDefinitionId = "helloWorld:1:4";
//       runtimeService.startProcessInstanceById(processDefinitionId);
        // 通过key启动流程
        String processDefinitionKey = "helloWorld";
        ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(processDefinitionKey);
        System.out.println("启动成功，流程运行id为：" + processInstance.getId());
    }

    /**
     * 查询任务
     */
    @Test
    public void findfTask(){
        // 查询当前执行人为张三的所有任务
        List<Task> tasks = taskService.createTaskQuery().taskCandidateOrAssigned("张三").list();
        if(tasks==null || tasks.size()<0){
            return ;
        }
        for (Task task : tasks) {
            System.out.println("任务id："+task.getId());
            System.out.println("运行实例id：："+task.getProcessInstanceId());
            System.out.println("执行实例id：："+task.getExecutionId());
            System.out.println("流程定义id："+task.getProcessDefinitionId());
            System.out.println("任务名称："+task.getName());
            System.out.println("任务办理人："+task.getAssignee());
        }
    }

    /**
     * 办理任务
     */
    @Test
    public void  completeTask(){
        // 完成张三任务id为2505的任务
          taskService.complete("7502");
    }

}
