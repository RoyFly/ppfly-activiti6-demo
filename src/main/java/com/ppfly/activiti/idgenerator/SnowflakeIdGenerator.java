package com.ppfly.activiti.idgenerator;

import cn.hutool.core.lang.Snowflake;
import cn.hutool.core.util.IdUtil;
import org.activiti.engine.impl.cfg.IdGenerator;

public class SnowflakeIdGenerator implements IdGenerator {
    @Override
    public String getNextId() {
        //参数1为终端ID
        //参数2为数据中心ID
        //@link https://www.bookstack.cn/read/hutool/bfd2d43bcada297e.md
        Snowflake snowflake = IdUtil.getSnowflake(1, 1);
        long id = snowflake.nextId();
        return String.valueOf(id);
    }
}
