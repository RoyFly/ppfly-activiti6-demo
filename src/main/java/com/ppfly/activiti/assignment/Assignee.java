package com.ppfly.activiti.assignment;

import org.activiti.engine.delegate.DelegateExecution;

import java.util.List;

public interface Assignee {
    /**
     * 获取受让人
     *
     * @param execution
     * @return
     */
    String getAssignee(DelegateExecution execution);

    /**
     * 获取候选人
     *
     * @param execution
     * @return
     */
    List<String> getCandidateUsers(DelegateExecution execution);
}
