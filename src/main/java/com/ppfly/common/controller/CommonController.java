package com.ppfly.common.controller;

import cn.hutool.core.util.ObjectUtil;
import com.ppfly.common.service.BaseWorkflowService;
import com.ppfly.common.utils.BootStrapTablePage;
import com.ppfly.common.utils.BootstrapTableDTO;
import com.ppfly.common.utils.Page;
import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.FormService;
import org.activiti.engine.IdentityService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.form.FormProperty;
import org.activiti.engine.form.StartFormData;
import org.activiti.engine.form.TaskFormData;
import org.activiti.engine.impl.form.FormPropertyImpl;
import org.activiti.engine.impl.persistence.entity.VariableInstance;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/common")
@Slf4j
public class CommonController {

    @Autowired
    private FormService formService;

    @Autowired
    private RuntimeService runtimeService;

    @Autowired
    private TaskService taskService;

    @Autowired
    private IdentityService identityService;

    @Autowired
    private BaseWorkflowService baseWorkflowService;


    /**
     * 跳转到动态表单申请界面
     *
     * @param processDefinitionId
     * @param model
     * @return
     */
    @GetMapping(value = "/start/{processDefinitionId}")
    public String gotoStartpage(@PathVariable("processDefinitionId") String processDefinitionId, Model model) {
        StartFormData startFormData = formService.getStartFormData(processDefinitionId);
        List<FormProperty> formProperties = startFormData.getFormProperties();
        ProcessDefinition processDefinition = startFormData.getProcessDefinition();
        model.addAttribute("list", formProperties);
        model.addAttribute("proc", processDefinition);
        return "process/start_page";
    }

    /**
     * 动态表单申请提交
     *
     * @param request
     * @param processDefinitionId
     * @param procName
     * @param param
     * @return
     */
    @PostMapping(value = "/start")
    @ResponseBody
    public ResponseEntity start(HttpServletRequest request, String processDefinitionId, String procName, @RequestParam Map param) {
        log.debug("动态表单参数：{}", param);
        //用来设置启动流程的人员ID，引擎会自动把用户Id保存到activiti:initiator中
        identityService.setAuthenticatedUserId(String.valueOf(param.get("username")));
        final ProcessInstance processInstance = runtimeService.startProcessInstanceById(processDefinitionId, param);
        runtimeService.setProcessInstanceName(processInstance.getId(), procName);
        return new ResponseEntity<>("", HttpStatus.OK);
    }


    /**
     * 跳转到我的待办任务页面
     *
     * @param userName todo 修改为后台通过安全框架获取登录人员Id
     * @return
     */
    @GetMapping(value = "/todo/{userName}")
    public String getToDoTaskList(Model model, @PathVariable("userName") String userName) {
        model.addAttribute("userName", userName);
        return "process/todo_list";
    }

    /**
     * ajax获取待办列表
     *
     * @param tableDTO
     * @return
     */
    @PostMapping(value = "/todo")
    @ResponseBody
    public BootStrapTablePage todo(BootstrapTableDTO tableDTO) {
        int curPage = tableDTO.getPageNumber();
        int pageSize = tableDTO.getPageSize();
        Map params = tableDTO.getSearchParam();

        final Page<Task> page = baseWorkflowService.getTodoPage(params, curPage, pageSize);
        final BootStrapTablePage bootStrapTablePage = new BootStrapTablePage(page);
        return bootStrapTablePage;
    }

    /**
     * 将组任务指定个人任务(签出任务/拾取任务)
     */
    @PostMapping("/claim/{taskId}")
    @ResponseBody
    public void claim(@PathVariable("taskId") String taskId, String userId) throws Exception {
        taskService.claim(taskId, userId);
    }

    /**
     * 退回任务
     */
    @PostMapping("/unclaim/{taskId}")
    @ResponseBody
    public void unclaim(@PathVariable("taskId") String taskId) throws Exception {
        taskService.unclaim(taskId);
        //方式二：
//        taskService.setAssignee(taskId, null);
    }

    /**
     * 跳转到审核页面
     *
     * @param taskId
     * @return
     */
    @GetMapping("/deal/{processDefinitionId}/{taskId}")
    public String gotoDealPage(Model model, @PathVariable("processDefinitionId") String processDefinitionId, @PathVariable("taskId") String taskId) {
        final Map<String, VariableInstance> variableInstances = taskService.getVariableInstances(taskId);

        StartFormData startFormData = formService.getStartFormData(processDefinitionId);
        List<FormProperty> startFormDataFormProperties = startFormData.getFormProperties();
        for (FormProperty formProperty : startFormDataFormProperties) {
            final VariableInstance variableInstance = variableInstances.get(formProperty.getId());
            if (ObjectUtil.isNotNull(variableInstance)) {
                ((FormPropertyImpl) formProperty).setValue(String.valueOf(variableInstance.getValue()));
            }
        }
        model.addAttribute("startFormList", startFormDataFormProperties);

        TaskFormData taskFormData = formService.getTaskFormData(taskId);
        List<FormProperty> taskFormDataFormProperties = taskFormData.getFormProperties();
        model.addAttribute("taskFormList", taskFormDataFormProperties);

        return "process/deal_page";
    }

    /**
     * 动态表单审核提交
     *
     * @param taskId
     * @param param
     * @return
     */
    @PostMapping("/deal")
    @ResponseBody
    public ResponseEntity deal(String taskId, @RequestParam Map param) {
        log.debug("动态表单参数：{}", param);
        taskService.complete(taskId, param);
        return new ResponseEntity<>("", HttpStatus.OK);
    }


}
