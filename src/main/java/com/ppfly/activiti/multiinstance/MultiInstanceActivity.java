package com.ppfly.activiti.multiinstance;

import org.activiti.engine.delegate.DelegateExecution;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

/**
 * 多实例节点是在业务流程中定义重复环节的一个方法。 从开发角度讲，多实例和循环是一样的：
 * 它可以根据给定的集合，为每个元素执行一个环节甚至一个完整的子流程， 既可以顺序依次执行也可以并发同步执行。
 */
@Service
@Transactional
public interface MultiInstanceActivity extends Serializable {


    /**
     * 设置会签环节审核人员
     *
     * @param execution
     * @return Collection
     */
    List<String> resolveUsersForTask(DelegateExecution execution);


    /**
     * 每次实例结束时计算的表达式
     *
     * @param execution
     * @return
     */
    boolean isComplete(DelegateExecution execution);

}
