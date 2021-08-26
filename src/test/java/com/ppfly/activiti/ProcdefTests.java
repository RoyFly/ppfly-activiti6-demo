package com.ppfly.activiti;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.*;
import java.util.List;
import java.util.zip.ZipInputStream;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ProcdefTests {


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
     * 查询部署信息
     */
    @Test
    public void queryDeployment() {
        List<Deployment> deployments = repositoryService.createDeploymentQuery().listPage(0, 4);
        for (Deployment deployment : deployments) {
            System.out.println("部署id:" + deployment.getId());
            System.out.println("部署名称:" + deployment.getName());
            System.out.println("部署时间:" + deployment.getDeploymentTime());
        }
    }

    /**
     * 查询流程定义信息
     */
    @Test
    public void queryProcessDef() {
        List<ProcessDefinition> processDefinitions = repositoryService.createProcessDefinitionQuery().listPage(0, 4);
        for (ProcessDefinition processDefinition : processDefinitions) {
            System.out.println("流程定义id:" + processDefinition.getId());
            System.out.println("流程定义名称:" + processDefinition.getName());
            System.out.println("流程定义bmp:" + processDefinition.getResourceName());
            System.out.println("流程定义png:" + processDefinition.getDiagramResourceName());
            System.out.println("部署id:" + processDefinition.getDeploymentId());
            System.out.println("流程定义版本:" + processDefinition.getVersion());
        }
    }

    /**
     * 删除流程部署信息
     */
    @Test
    public void deleteDeploy() {
        // 根据部署id删除流程定义，如果当前部署id有对应的流程定义运行的流程实例运行，那么会报错
        repositoryService.deleteDeployment("1");
        // 级联删除表，会删除正在执行的流程数据以及act_ru_*和act_hi_*里面的数据
//        repositoryService.deleteDeployment("1",true);
    }


    /**
     * 查询流程图
     */
    @Test
    public void queryProcessDragram() throws Exception {
        //根据流程定义查询流程定义的图片
        InputStream processDiagram = repositoryService.getProcessDiagram("");
        File file = new File("./demo.png");

        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        int len = 0;
        byte[] bys = new byte[1024];
        while((len = processDiagram.read(bys))!=0){
            bufferedOutputStream.write(bys,0,len);
            bufferedOutputStream.flush();
        }

        bufferedOutputStream.close();
        processDiagram.close();

        System.out.println("输出预览流程定义图片");

    }


}
