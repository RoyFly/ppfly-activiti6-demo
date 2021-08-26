package com.ppfly.activiti.listener.executionlistener;

import lombok.extern.slf4j.Slf4j;
import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.ExecutionListener;
import org.springframework.stereotype.Component;

/**
 * 执行监听器
 */
@Slf4j
@Component("executionListener")
public class ExecutionListenerImpl implements ExecutionListener {

    @Override
    public void notify(DelegateExecution delegateExecution) {
        String event = delegateExecution.getEventName();
        switch (event) {
            case "start":
                log.info("执行监听器...start event");
                break;
            case "end":
                log.info("执行监听器...end event");
                break;
            case "take":
                log.info("执行监听器...take event");
                break;
        }
    }
}