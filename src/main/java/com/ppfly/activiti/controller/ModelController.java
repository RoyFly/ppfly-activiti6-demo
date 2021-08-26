package com.ppfly.activiti.controller;

import com.ppfly.activiti.service.ActivitiModelService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;

/**
 * 流程模型Model操作相关
 * Created by chenhai on 2017/5/23.
 */
@Api(description = "流程模型Model操作相关", tags = {"activitimodeler"})
@RestController
@RequestMapping("models")
@Slf4j
public class ModelController {

    @Autowired
    private ActivitiModelService activitiModelService;

    /**
     * 新建一个空模型
     *
     * @return
     * @throws UnsupportedEncodingException
     */
    @ApiOperation(value = "新建一个空模型")
    @PostMapping(value = "newModel")
    public ResponseEntity<?> newModel(@RequestParam(value = "modelName") @ApiParam(value = "模型名称") String modelName,
                                      @RequestParam(value = "description") @ApiParam("模型描述") String description,
                                      @RequestParam(value = "key") @ApiParam("模型键") String key) throws UnsupportedEncodingException {

        HashMap<String, Object> responseBody = activitiModelService.newModel(modelName, description, key);
        return ResponseEntity.status(HttpStatus.OK).body(responseBody);
    }

    /**
     * 获取所有模型
     *
     * @return
     */
    @ApiOperation(value = "获取所有模型")
    @GetMapping("/getAll")
    public ResponseEntity<?> modelList() {
        HashMap<String, Object> responseBody = activitiModelService.modelList();
        return ResponseEntity.status(HttpStatus.OK).body(responseBody);
    }

    /**
     * 删除模型
     *
     * @param modelId
     * @return
     */
    @ApiOperation(value = "删除模型")
    @DeleteMapping("delete/{modelId}")
    public ResponseEntity<?> deleteModel(@PathVariable("modelId") String modelId) {
        HashMap<String, Object> responseBody = activitiModelService.deleteModel(modelId);
        return ResponseEntity.status(HttpStatus.OK).body(responseBody);
    }

    /**
     * 发布模型为流程定义
     *
     * @param modelId
     * @return
     */
    @ApiOperation(value = "发布模型为流程定义")
    @PostMapping("deploy/{modelId}")
    public ResponseEntity<?> deploy(@PathVariable("modelId") String modelId) {
        HashMap<String, Object> responseBody = activitiModelService.deployModel(modelId);
        return ResponseEntity.status(HttpStatus.OK).body(responseBody);
    }

    @ApiOperation(value = "上传一个已有模型")
    @PostMapping(value = "/uploadFile")
    public ResponseEntity<?> deployUploadedFile(@RequestParam("modelFile") MultipartFile modelFile) {
        HashMap<String, Object> responseBody = activitiModelService.uploadModel(modelFile);
        return ResponseEntity.status(HttpStatus.OK).body(responseBody);
    }
}