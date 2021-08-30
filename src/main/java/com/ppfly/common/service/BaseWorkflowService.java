package com.ppfly.common.service;

import com.ppfly.common.utils.Page;
import org.activiti.engine.task.Task;

import java.util.Map;

/**
 * 工作流基础Service
 */
public interface BaseWorkflowService {

    /**
     * 待办列表分页
     *
     * @param searchParam
     * @param curPage
     * @param pageSize
     * @return
     */
    Page<Task> getTodoPage(Map<String, String> searchParam, int curPage, int pageSize);

    /**
     * 任务撤销
     *
     * @param processInstanceId
     * @param currentUserId
     * @throws Exception
     */
    void withdraw(String processInstanceId, String currentUserId) throws Exception;
}
