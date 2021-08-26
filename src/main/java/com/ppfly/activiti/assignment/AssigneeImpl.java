package com.ppfly.activiti.assignment;

import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.delegate.DelegateExecution;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;


/**
 * 分配环节处理人的三种方式：
 * 1、流程图指定（在xml中写死处理人）
 * 2、JUEL表达式（(Java Unified Expression Language) 是 JSP 2.1 规范中的统一表达式语言(UEL) 的 Java 实现）
 * 　　　UEL表达式补充：
 * 　　　　　　①、UEL表达式 是 java EE6 规范的一部分， UEL（Unified Expression Language）即统一表达式语言。Activiti 支持两种 UEL 表达式：UEL-value 和 UEL-method。
 * 　　　　　　②、就是EL表达式呀!（@link https://docs.oracle.com/javaee/6/tutorial/doc/bnahu.html）
 * 　　　2.1、UEL-value：resolves to a value. By default, all process variables are available to use
 * 　　　　　　eg：①、${myVar}：String类型，myVar 是一个流程变量
 * 　　　　　　　　②、${user.name}：user 是一个序列化的流程变量对象，user.name 表示通过调用 user 的 getter 方法获取值
 * 　　　　　　　　③、${myBean.myProperty}：Also all spring-beans (if using Spring) are available to use in expressions
 * 　　　　　　补充：these expressions support resolving primitives (incl. comparing them), beans, lists, arrays and maps
 * 　　　2.2、UEL-method： invokes a method, with or without parameters.
 * 　　　　　　　　　　　　When invoking a method without parameters, be sure to add empty parentheses after the method-name (as this distinguishes the expression from a value expression).
 * 　　　　　　　　　　　　The passed parameters can be literal values or expressions that are resolved themselves.
 * 　　　　　　eg：①、${printer.print()}
 * 　　　　　　　　②、${myBean.addNewOrder('orderName')}
 * 　　　　　　　　③、${myBean.doSomething(myVar, execution)}
 * 　　　　　　　　④、${assignee.getAssignee(execution)}：assignee是 spring 容器的一个 bean， getAssignee 是该 bean 的一个方法， execution 是代理执行对象。
 * 　　　　　　　　⑤、${userService.findUserById(userId)}：userService 是 spring 容器的一个 bean， findUserById 是该 bean 的一个方法， userId 是流程变量。
 * 　　　　　  补充：On top of all process variables, there are a few default objects available to be used in expressions:
 * 　　　　　　　  （@link https://www.activiti.org/userguide/#Expressions）
 * 　　　　　　　  （@link https://www.activiti.org/userguide/#springExpressions）
 * 　　　　　　　　①、execution: The DelegateExecution that holds additional information about the ongoing execution.
 * 　　　　　　　　②、task: The DelegateTask that holds additional information about the current Task. Note: Only works in expressions evaluated from task listeners.
 * 　　　　　　　　③、authenticatedUserId: The id of the user that is currently authenticated. If no user is authenticated, the variable is not available.
 * 4、使用节点任务监听器
 */
@Service("assignee")
@Transactional
@Slf4j
public class AssigneeImpl implements Assignee {

    /**
     * 获取受让人
     *
     * @param execution
     * @return String
     */
    @Override
    public String getAssignee(DelegateExecution execution) {
        String assignee = "wangwu";
        log.info("在AssigneeImpl#getAssignee指定受让人：" + assignee);
        return assignee;
    }


    /**
     * 获取候选人
     *
     * @param execution
     * @return Collection
     */
    @Override
    public List<String> getCandidateUsers(DelegateExecution execution) {
        List<String> candidateUsers = Arrays.asList("wangwu", "zhaoliu", "tianqi");
        log.info("在AssigneeImpl#getCandidateUsers指定候选人：" + candidateUsers);
        return candidateUsers;
    }
}
