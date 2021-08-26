package com.ppfly.activiti.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import lombok.extern.slf4j.Slf4j;
import org.activiti.app.domain.editor.AbstractModel;
import org.activiti.app.model.common.ResultListDataRepresentation;
import org.activiti.app.model.editor.form.FormRepresentation;
import org.activiti.app.repository.editor.ModelRepository;
import org.activiti.editor.constants.ModelDataJsonConstants;
import org.activiti.engine.ActivitiException;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.Model;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * @author luobaimang
 * @date 2019/11/28
 */
@RestController
@RequestMapping("service")
@Slf4j
public class ModelRestController implements ModelDataJsonConstants {

    private static final int MIN_FILTER_LENGTH = 2;

    @Autowired
    private RepositoryService repositoryService;

    @Autowired
    protected ModelRepository modelRepository;

    @Autowired
    private ObjectMapper objectMapper;


    /**
     * 更新流程
     *
     * @param modelId     模型ID
     * @param name        流程模型名称
     * @param key         流程模型key
     * @param description
     * @param json_xml    流程文件
     */
    @RequestMapping(value = "/model/{modelId}/save")
    @ResponseStatus(value = HttpStatus.OK)
    public void saveModel(@PathVariable String modelId
            , String name, String key, String description
            , String json_xml) {
        try {

            Model model = repositoryService.getModel(modelId);

            ObjectNode modelJson = (ObjectNode) objectMapper.readTree(model.getMetaInfo());

            modelJson.put(MODEL_NAME, name);
            modelJson.put(MODEL_DESCRIPTION, description);
            model.setMetaInfo(modelJson.toString());
            model.setName(name);
            model.setKey(key);
            repositoryService.saveModel(model);

            repositoryService.addModelEditorSource(model.getId(), json_xml.getBytes("utf-8"));
//
//                InputStream svgStream = new ByteArrayInputStream(svg_xml.getBytes("utf-8"));
//                TranscoderInput input = new TranscoderInput(svgStream);
//
//                PNGTranscoder transcoder = new PNGTranscoder();
//                // Setup output
//                ByteArrayOutputStream outStream = new ByteArrayOutputStream();
//                TranscoderOutput output = new TranscoderOutput(outStream);
//
//                // Do the transformation
//                transcoder.transcode(input, output);
//                final byte[] result = outStream.toByteArray();
//                repositoryService.addModelEditorSourceExtra(model.getId(), result);
//                outStream.close();
        } catch (Exception e) {
            log.error("Error saving model", e);
            throw new ActivitiException("Error saving model", e);
        }
    }


    /**
     * 获取model的节点信息，编辑器根据返回的json进行绘图
     *
     * @param modelId
     * @return
     * @SuppressWarnings("deprecation") 表示不检测过期的方法, 不显示使用了不赞成使用的类或方法时的警告
     */
    @SuppressWarnings("deprecation")
    @RequestMapping(value = "/model/{modelId}/json", method = RequestMethod.GET, produces = "application/json")
    public ObjectNode getEditorJson(@PathVariable String modelId) {
        ObjectNode modelNode = null;
        Model model = repositoryService.getModel(modelId);
        if (model != null) {
            try {
                if (StringUtils.isNotEmpty(model.getMetaInfo())) {
                    modelNode = (ObjectNode) objectMapper.readTree(model.getMetaInfo());
                } else {
                    modelNode = objectMapper.createObjectNode();
                    modelNode.put(MODEL_NAME, model.getName());
                }
                modelNode.put(MODEL_ID, model.getId());
                modelNode.put("key", model.getKey());
                ObjectNode editorJsonNode = (ObjectNode) objectMapper.readTree(
                        new String(repositoryService.getModelEditorSource(model.getId()), "utf-8"));
                modelNode.put("model", editorJsonNode);
            } catch (Exception e) {
                log.error("Error creating model JSON", e);
                throw new ActivitiException("Error creating model JSON", e);
            }
        }
        return modelNode;
    }

    /**
     * 获取编辑器组件及配置项信息
     * 获取流程json文件
     *
     * @return
     */
    @RequestMapping(value = "/editor/stencilset", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
    @ResponseBody
    public String getStencilset() {
        InputStream stencilsetStream = this.getClass().getClassLoader().getResourceAsStream("stencilset_en_US.json");
        try {
            return IOUtils.toString(stencilsetStream, "utf-8");
        } catch (Exception e) {
            throw new ActivitiException("Error while loading stencil set", e);
        }
    }

    @RequestMapping(value = "/form-models", method = RequestMethod.GET, produces = "application/json")
    public ResultListDataRepresentation getForms(HttpServletRequest request) {

        // need to parse the filterText parameter ourselves, due to encoding issues with the default parsing.
        String filter = null;
        final String queryString = request.getQueryString();
        if(StringUtils.isNotEmpty(queryString)){
            List<NameValuePair> params = URLEncodedUtils.parse(queryString, Charset.forName("UTF-8"));
            if (params != null) {
                for (NameValuePair nameValuePair : params) {
                    if ("filter".equalsIgnoreCase(nameValuePair.getName())) {
                        filter = nameValuePair.getValue();
                    }
                }
            }
        }

        String validFilter = makeValidFilterText(filter);

        List<org.activiti.app.domain.editor.Model> models = null;
        if (validFilter != null) {
//            models = modelRepository.findModelsByModelType(AbstractModel.MODEL_TYPE_FORM, validFilter);
            models = modelRepository.findModelsByModelType(AbstractModel.MODEL_TYPE_FORM, validFilter);

        } else {
            models = modelRepository.findModelsByModelType(AbstractModel.MODEL_TYPE_FORM);
        }

        List<FormRepresentation> reps = new ArrayList<FormRepresentation>();

        for (org.activiti.app.domain.editor.Model model : models) {
            reps.add(new FormRepresentation(model));
        }

        Collections.sort(reps, new NameComparator());

        ResultListDataRepresentation result = new ResultListDataRepresentation(reps);
        result.setTotal(Long.valueOf(models.size()));
        return result;
    }

    protected String makeValidFilterText(String filterText) {
        String validFilter = null;

        if (filterText != null) {
            String trimmed = StringUtils.trim(filterText);
            if (trimmed.length() >= MIN_FILTER_LENGTH) {
                validFilter = "%" + trimmed.toLowerCase() + "%";
            }
        }
        return validFilter;
    }

    class NameComparator implements Comparator<FormRepresentation> {
        @Override
        public int compare(FormRepresentation o1, FormRepresentation o2) {
            return o1.getName().toLowerCase().compareTo(o2.getName().toLowerCase());
        }
    }
}
