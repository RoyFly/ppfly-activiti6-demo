package com.ppfly.activiti.config;

import com.ppfly.customform.formtype.TreeFormType;
import org.activiti.engine.form.AbstractFormType;
import org.activiti.spring.SpringProcessEngineConfiguration;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Arrays;
import java.util.List;

@Configuration
public class ApplicationConfig {

    /**
     * How to declare an Activiti custom FormType in a Spring Boot application
     * https://stackoverflow.com/questions/28022772/how-to-declare-an-activiti-custom-formtype-in-a-spring-boot-application
     *
     * @return
     */
    @Bean
    public BeanPostProcessor activitiConfigurer() {
        return new BeanPostProcessor() {
            @Override
            public Object postProcessBeforeInitialization(Object bean, String beanName) throws BeansException {
                if (bean instanceof SpringProcessEngineConfiguration) {
                    List<AbstractFormType> customFormTypes = Arrays.<AbstractFormType>asList(new TreeFormType());
                    ((SpringProcessEngineConfiguration) bean).setCustomFormTypes(customFormTypes);
                }
                return bean;
            }

            @Override
            public Object postProcessAfterInitialization(Object bean, String beanName) throws BeansException {
                return bean;
            }
        };
    }

}
