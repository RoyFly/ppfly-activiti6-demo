package com.ppfly.common.utils;

import lombok.Data;
import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.util.StringUtils;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

@Data
public class BootstrapTableDTO implements Serializable {
    /**
     * list的JSON键
     */
    private static final String JSONLIST = "data";

    /**
     * 排序字段
     */
    private String sortName;
    /**
     * 排序规则
     */
    private String sortOrder;
    /**
     * 每页显示条目数
     */
    private Integer pageSize;
    /**
     * 当前页数（当前第几页）
     */
    private Integer pageNumber;
    /**
     * 序列化的查询参数
     */
    private String extra_search;

    /**
     * 获取查询条件封装成Map
     *
     * @return
     */
    public Map<String, String> getSearchParam() {
        Map<String, String> returnMap = new HashMap<String, String>();
        //springMvc获取到的参数附带特殊符号，接收后被转义
        extra_search = StringEscapeUtils.unescapeHtml4(extra_search);
        if (!StringUtils.isEmpty(extra_search)) {
            String params[] = extra_search.split("&");
            for (String p : params) {
                String s[] = p.split("=");
                String key = s[0];
                String value = s.length > 1 ? s[1] : null;
                if (value != null) {
                    try {
                        returnMap.put(key, URLDecoder.decode(value, "utf-8").trim());
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return returnMap;
    }
}
