package com.ppfly.activiti.command;

import org.activiti.engine.impl.cmd.NeedsActiveTaskCmd;
import org.activiti.engine.impl.interceptor.CommandContext;
import org.activiti.engine.impl.persistence.entity.ExecutionEntity;
import org.activiti.engine.impl.persistence.entity.TaskEntity;
import org.activiti.engine.impl.persistence.entity.TaskEntityManagerImpl;

/**
 * 继承NeedsActiveTaskCmd主要是为了在跳转时要求当前任务不能是挂起状态，也可以直接实现Command接口
 */
public class DeleteTaskCmd extends NeedsActiveTaskCmd<String> {

    public DeleteTaskCmd(String taskId) {
        super(taskId);
    }

    @Override
    public String execute(CommandContext commandContext, TaskEntity currentTask) {
        TaskEntityManagerImpl taskEntityManager = (TaskEntityManagerImpl) commandContext.getTaskEntityManager();
        // 获取当前任务的执行对象实例
        ExecutionEntity executionEntity = currentTask.getExecution();
        // 删除当前任务,来源任务
        taskEntityManager.deleteTask(currentTask, "删除原因", false, false);
        // 返回当前任务的执行对象id
        return executionEntity.getId();
    }

    @Override
    public String getSuspendedTaskException() {
        return "挂起的任务不能跳转";
    }
}
 
