package com.ppfly.customform.formtype;

import org.activiti.engine.form.AbstractFormType;

public class TreeFormType extends AbstractFormType {

    /**
     * 定义表单类型的标识符
     *
     * @return
     */
    @Override
    public String getName() {
        return "tree";
    }

    /**
     * 把表单中的值转换为实际的对象
     *
     * @param propertyValue
     * @return
     */
    @Override
    public Object convertFormValueToModelValue(String propertyValue) {
        if (propertyValue == null || "".equals(propertyValue)) {
            return null;
        }
        return propertyValue;
    }

    /**
     * 把实际对象的值转换为表单中的值
     *
     * @param modelValue
     * @return
     */
    @Override
    public String convertModelValueToFormValue(Object modelValue) {
        return (String) modelValue;
    }
}