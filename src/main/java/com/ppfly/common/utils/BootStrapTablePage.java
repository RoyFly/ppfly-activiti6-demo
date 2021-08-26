package com.ppfly.common.utils;


import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * BootStrapTable返回的包装行数和数据的对象
 */
@Data
public class BootStrapTablePage implements Serializable {
    private Integer total;
    private List rows;

    public BootStrapTablePage(Page page) {
        this.setRows(page.getResults());
        this.setTotal(page.getTotalSize());
    }
}
