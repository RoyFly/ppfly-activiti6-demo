package com.ppfly.common.config;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.support.http.StatViewServlet;
import com.alibaba.druid.support.http.WebStatFilter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

@Configuration
public class DbConfig {

    /**
     * 数据源
     * ConfigurationProperties注解的使用，要求每个注入的字段包含setter方法
     *
     * @return
     */
    @Bean
    @ConfigurationProperties(prefix = "spring.datasource")
    public DataSource dataSource() {
        return new DruidDataSource();
    }

    /**
     * 配置一个管理后台的Servlet
     * SpringBoot配置Servlet的方式如下：
     *
     * @return
     */
    @Bean
    public ServletRegistrationBean statViewServlet(@Value("${spring.datasource.druid.stat-view-servlet.login-username}") String loginUsername,
                                                   @Value("${spring.datasource.druid.stat-view-servlet.login-password}") String loginPassword) {
        ServletRegistrationBean bean = new ServletRegistrationBean(new StatViewServlet(), "/druid/*");
        Map<String, String> initParams = new HashMap<>();
        initParams.put("loginUsername", loginUsername);
        initParams.put("loginPassword", loginPassword);
        bean.setInitParameters(initParams);
        return bean;
    }

    /**
     * 配置一个监控Filter
     * SpringBoot配置Filter的方式如下：
     *
     * @return
     */
    @Bean
    public FilterRegistrationBean webStatFilter() {
        FilterRegistrationBean bean = new FilterRegistrationBean();
        bean.setFilter(new WebStatFilter());
        Map<String, String> initParams = new HashMap<>();
        initParams.put("exclusions", "*.js,*.css,/druid/*");
        bean.setInitParameters(initParams);
        bean.setUrlPatterns(Arrays.asList("/*"));
        return bean;
    }

}
