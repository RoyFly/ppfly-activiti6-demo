package com.ppfly.activiti.config;

import com.ppfly.activiti.idgenerator.SnowflakeIdGenerator;
import com.ppfly.activiti.listener.activitieventlistener.ActivitiEventListenerImpl;
import org.activiti.engine.delegate.event.ActivitiEventListener;
import org.activiti.engine.impl.cfg.IdGenerator;
import org.activiti.spring.SpringProcessEngineConfiguration;
import org.activiti.spring.boot.ProcessEngineConfigurationConfigurer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 实现ProcessEngineConfigurationConfigurer接口的bean，做SpringProcessEngineConfiguration的一些额外配置
 * 该bean将在创建流程引擎配置时被调用
 */
@Component
@Configuration
public class ActivitiConfig implements ProcessEngineConfigurationConfigurer {

    @Autowired
    private ActivitiEventListenerImpl activitiEventListener;

    @Bean
    public IdGenerator idGenerator() {
        return new SnowflakeIdGenerator();
    }


    @Override
    public void configure(SpringProcessEngineConfiguration configuration) {
        Map<String, List<ActivitiEventListener>> activitiEventListenerMap = new HashMap<>();
        /**
         * 使用Api方式配置全局监听器
         */
//        activitiEventListenerMap.put(ActivitiEventType.ACTIVITY_STARTED.name(), Lists.newArrayList(activitiEventListener));
//        activitiEventListenerMap.put(ActivitiEventType.ACTIVITY_COMPLETED.name(), Lists.newArrayList(activitiEventListener));
//        activitiEventListenerMap.put(ActivitiEventType.TASK_CREATED.name(), Lists.newArrayList(activitiEventListener));
//        activitiEventListenerMap.put(ActivitiEventType.TASK_COMPLETED.name(), Lists.newArrayList(activitiEventListener));
        configuration.setTypedEventListeners(activitiEventListenerMap);
        //ID生成器
        configuration.setIdGenerator(idGenerator());
        //jre fonts - Supported Fonts @see https://docs.oracle.com/javase/8/docs/technotes/guides/intl/font.html
        configuration.setActivityFontName("宋体");
        configuration.setLabelFontName("宋体");
        configuration.setAnnotationFontName("宋体");
    }
}