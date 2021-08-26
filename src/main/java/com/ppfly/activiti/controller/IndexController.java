package com.ppfly.activiti.controller;

import com.ppfly.activiti.service.ActivitiModelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @Autowired
    private ActivitiModelService activitiModelService;

    /**
     * 跳转到在线流程设计器页面
     *
     * @return
     */
    @GetMapping("/goToDiagramPage")
    public String modelList(String modelId) {
        return "redirect:/modeler.html#/editor/" + modelId;
    }

}
