/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.23 : Database - ppfly_activiti6_demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `act_de_model` */

CREATE TABLE `act_de_model` (
  `id` varchar(765) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `model_key` varchar(128) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `model_comment` varchar(2048) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` varchar(765) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `last_updated_by` varchar(765) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `model_editor_json` text,
  `thumbnail` text,
  `model_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `act_de_model` */

insert  into `act_de_model`(`id`,`name`,`model_key`,`description`,`model_comment`,`created`,`created_by`,`last_updated`,`last_updated_by`,`version`,`model_editor_json`,`thumbnail`,`model_type`) values ('571d0ca5-f04a-45c9-8e42-e9ed616b9dd5','审批单','checkout','审批单',NULL,'2021-07-30 16:39:02','admin','2021-07-30 16:40:18','admin',1,'{\"name\":\"审批单\",\"key\":\"checkout\",\"version\":0,\"fields\":[{\"fieldType\":\"OptionFormField\",\"id\":\"审批意见\",\"name\":\"审批意见\",\"type\":\"radio-buttons\",\"value\":\"同意\",\"required\":false,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"sizeX\":0,\"sizeY\":2,\"optionType\":null,\"hasEmptyValue\":null,\"options\":[{\"id\":null,\"name\":\"同意\"},{\"id\":null,\"name\":\"不同意\"}]},{\"fieldType\":\"FormField\",\"id\":\"审批意见\",\"name\":\"审批意见\",\"type\":\"multi-line-text\",\"value\":null,\"required\":false,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"审批意见\",\"layout\":null,\"sizeX\":0,\"sizeY\":0}],\"outcomes\":[]}','PNG\r\n\Z\n',2),('5ad5d75c-36c1-412f-ae8c-7e58e5f60051','请假流程','leaveprocess','请假流程',NULL,'2021-07-30 16:41:05','admin','2021-07-30 16:47:08','admin',1,'{\"resourceId\":\"5ad5d75c-36c1-412f-ae8c-7e58e5f60051\",\"properties\":{\"process_id\":\"leaveprocess\",\"name\":\"请假流程\",\"documentation\":\"请假流程\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"startEvent1\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-322E01E0-8CA1-4D24-92DC-82C00E9C2A5A\"}],\"bounds\":{\"lowerRight\":{\"x\":105,\"y\":197},\"upperLeft\":{\"x\":75,\"y\":167}},\"dockers\":[]},{\"resourceId\":\"sid-91281998-95EF-4EC1-8441-01B76B06F6FB\",\"properties\":{\"overrideid\":\"\",\"name\":\"请假申请\\n\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"user\",\"assignee\":{\"id\":\"guanyu\",\"firstName\":\"关\",\"lastName\":\"羽\",\"email\":\"guanyu@iufc.cn\",\"fullName\":\"关 羽\",\"groups\":[],\"$$hashKey\":\"object:2745\"}}}},\"formkeydefinition\":\"\",\"formreference\":{\"id\":\"f92c4172-33d2-4171-81fb-f7c50a27c93d\",\"name\":\"请假单\",\"key\":\"leavebill\"},\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-89766A2A-DAB4-4F99-8CAF-D5C11EF58FAE\"}],\"bounds\":{\"lowerRight\":{\"x\":358,\"y\":222},\"upperLeft\":{\"x\":258,\"y\":142}},\"dockers\":[]},{\"resourceId\":\"sid-2B6B9A52-D22E-46FA-AD17-733FC190607A\",\"properties\":{\"overrideid\":\"\",\"name\":\"审批\\n\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"user\",\"assignee\":{\"id\":\"liubei\",\"firstName\":\"刘\",\"lastName\":\"备\",\"email\":\"liubei@iufc.cn\",\"fullName\":\"刘 备\",\"groups\":[],\"$$hashKey\":\"object:2951\"}}}},\"formkeydefinition\":\"\",\"formreference\":{\"id\":\"571d0ca5-f04a-45c9-8e42-e9ed616b9dd5\",\"name\":\"审批单\",\"key\":\"checkout\"},\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9C683956-FF88-470B-8B36-4322FB7A1DAD\"}],\"bounds\":{\"lowerRight\":{\"x\":595,\"y\":222},\"upperLeft\":{\"x\":495,\"y\":142}},\"dockers\":[]},{\"resourceId\":\"sid-40904778-7335-4BE6-8B15-9B00B0EB5E12\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":793,\"y\":196},\"upperLeft\":{\"x\":765,\"y\":168}},\"dockers\":[]},{\"resourceId\":\"sid-322E01E0-8CA1-4D24-92DC-82C00E9C2A5A\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-91281998-95EF-4EC1-8441-01B76B06F6FB\"}],\"bounds\":{\"lowerRight\":{\"x\":257.609375,\"y\":182},\"upperLeft\":{\"x\":105.4765625,\"y\":182}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-91281998-95EF-4EC1-8441-01B76B06F6FB\"}},{\"resourceId\":\"sid-89766A2A-DAB4-4F99-8CAF-D5C11EF58FAE\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2B6B9A52-D22E-46FA-AD17-733FC190607A\"}],\"bounds\":{\"lowerRight\":{\"x\":494.0078125,\"y\":182},\"upperLeft\":{\"x\":358.9921875,\"y\":182}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-2B6B9A52-D22E-46FA-AD17-733FC190607A\"}},{\"resourceId\":\"sid-9C683956-FF88-470B-8B36-4322FB7A1DAD\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-40904778-7335-4BE6-8B15-9B00B0EB5E12\"}],\"bounds\":{\"lowerRight\":{\"x\":764.2890625,\"y\":182},\"upperLeft\":{\"x\":595.359375,\"y\":182}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-40904778-7335-4BE6-8B15-9B00B0EB5E12\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}','PNG\r\n\Z\n',0),('f92c4172-33d2-4171-81fb-f7c50a27c93d','请假单','leavebill','请假单',NULL,'2021-07-30 16:33:43','admin','2021-07-30 16:37:31','admin',1,'{\"name\":\"请假单\",\"key\":\"leavebill\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"开始日期\",\"name\":\"开始日期\",\"type\":\"date\",\"value\":null,\"required\":false,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"开始日期\",\"layout\":null,\"sizeX\":0,\"sizeY\":0},{\"fieldType\":\"FormField\",\"id\":\"days\",\"name\":\"请假天数\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":false,\"overrideId\":true,\"placeholder\":\"请假天数\",\"layout\":null,\"sizeX\":0,\"sizeY\":0},{\"fieldType\":\"FormField\",\"id\":\"请假原因\",\"name\":\"请假原因\",\"type\":\"multi-line-text\",\"value\":null,\"required\":false,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"sizeX\":0,\"sizeY\":0}],\"outcomes\":[]}','PNG\r\n\Z\n',2);

/*Table structure for table `act_evt_log` */

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('1430414061882970112',1,'source',NULL,'{\"resourceId\":\"1430414061857804288\",\"properties\":{\"process_id\":\"ACT_PRC_EVENT\",\"name\":\"\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-DA23765E-BCDE-465F-94A7-7D67F229E9C8\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FE0163DD-8AD4-4810-85B6-F128B70B1186\"}],\"bounds\":{\"lowerRight\":{\"x\":288.2,\"y\":155},\"upperLeft\":{\"x\":258.2,\"y\":125}},\"dockers\":[]},{\"resourceId\":\"sid-38BE80A2-FEDF-48F8-9CE2-62D0B2566560\",\"properties\":{\"overrideid\":\"\",\"name\":\"一级审核人\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-55F0B6A8-B573-4771-A05D-514EBB93E813\"}],\"bounds\":{\"lowerRight\":{\"x\":433.2,\"y\":180},\"upperLeft\":{\"x\":333.2,\"y\":100}},\"dockers\":[]},{\"resourceId\":\"sid-FE0163DD-8AD4-4810-85B6-F128B70B1186\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-38BE80A2-FEDF-48F8-9CE2-62D0B2566560\"}],\"bounds\":{\"lowerRight\":{\"x\":332.35625,\"y\":140},\"upperLeft\":{\"x\":288.809375,\"y\":140}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-38BE80A2-FEDF-48F8-9CE2-62D0B2566560\"}},{\"resourceId\":\"sid-9CAED3E2-F699-43DC-931A-AA9B4AA7B9B5\",\"properties\":{\"overrideid\":\"\",\"name\":\"二级审核人\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-63944EDC-9101-4A99-A862-730394DA6788\"}],\"bounds\":{\"lowerRight\":{\"x\":578.2,\"y\":180},\"upperLeft\":{\"x\":478.20000000000005,\"y\":100}},\"dockers\":[]},{\"resourceId\":\"sid-55F0B6A8-B573-4771-A05D-514EBB93E813\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9CAED3E2-F699-43DC-931A-AA9B4AA7B9B5\"}],\"bounds\":{\"lowerRight\":{\"x\":477.35625000000005,\"y\":140},\"upperLeft\":{\"x\":434.04375000000005,\"y\":140}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-9CAED3E2-F699-43DC-931A-AA9B4AA7B9B5\"}},{\"resourceId\":\"sid-4823A827-E682-425B-9D45-F1C9B0628217\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":651.2,\"y\":154},\"upperLeft\":{\"x\":623.2,\"y\":126}},\"dockers\":[]},{\"resourceId\":\"sid-63944EDC-9101-4A99-A862-730394DA6788\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4823A827-E682-425B-9D45-F1C9B0628217\"}],\"bounds\":{\"lowerRight\":{\"x\":622.575,\"y\":140},\"upperLeft\":{\"x\":578.590625,\"y\":140}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-4823A827-E682-425B-9D45-F1C9B0628217\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('1432190354278453249',1,'请假流程.bpmn20.xml','1432190354278453248','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"ACT_PRC_LEAVE\" isExecutable=\"true\">\n    <startEvent id=\"ACT_PRC_LEAVE_START\">\n      <extensionElements>\n        <activiti:formProperty id=\"username\" name=\"请假人\" type=\"string\" variable=\"username\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"leave_date_start\" name=\"请假开始日期\" type=\"date\" variable=\"leave_date_start\" datePattern=\"MM-dd-yyyy hh:mm:ss\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"leave_date_end-\" name=\"请假结束日期\" type=\"date\" variable=\"leave_date_end-\" datePattern=\"MM-dd-yyyy hh:mm:ss\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"days\" name=\"请假天数\" type=\"long\" variable=\"days\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"traffic\" name=\"出行方式\" type=\"enum\">\n          <activiti:value id=\"1\" name=\"火车\"></activiti:value>\n          <activiti:value id=\"2\" name=\"飞机\"></activiti:value>\n        </activiti:formProperty>\n        <activiti:formProperty id=\"dept\" name=\"所属部门\" type=\"tree\"></activiti:formProperty>\n        <activiti:formProperty id=\"reimburse\" name=\"是否报销\" type=\"boolean\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"ACT_PRC_LEAVE_BZRSH\" name=\"班主任审核\">\n      <extensionElements>\n        <activiti:formProperty id=\"audit_result\" name=\"是否同意\" type=\"boolean\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"audit_reason\" name=\"（不）通过原因\" type=\"string\"></activiti:formProperty>\n        <activiti:executionListener event=\"start\" delegateExpression=\"${executionListener}\"></activiti:executionListener>\n        <activiti:executionListener event=\"end\" delegateExpression=\"${executionListener}\"></activiti:executionListener>\n        <activiti:taskListener event=\"create\" class=\"com.ppfly.activiti.listener.tasklistener.AssigneeListener\"></activiti:taskListener>\n        <activiti:taskListener event=\"assignment\" delegateExpression=\"${assigneeListener}\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <endEvent id=\"ACT_PRC_LEAVE_CLOSE\"></endEvent>\n    <userTask id=\"ACT_PRC_LEAVE_XLDSH\" name=\"校领导审核\" activiti:assignee=\"${usersForTask}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n      <multiInstanceLoopCharacteristics isSequential=\"false\" activiti:collection=\"${minObeysMajStrategy.resolveUsersForTask(execution)}\" activiti:elementVariable=\"usersForTask\">\n        <completionCondition>${minObeysMajStrategy.isComplete(execution)}</completionCondition>\n      </multiInstanceLoopCharacteristics>\n    </userTask>\n    <exclusiveGateway id=\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-91C21C34-3F96-4666-8592-20133D425292\" sourceRef=\"ACT_PRC_LEAVE_START\" targetRef=\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\"></sequenceFlow>\n    <userTask id=\"ACT_PRC_LEAVE_SKLSSH\" name=\"授课老师审核\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" delegateExpression=\"${candidateUsersListener}\"></activiti:taskListener>\n        <activiti:taskListener event=\"assignment\" delegateExpression=\"${candidateUsersListener}\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"ACT_PRC_LEAVE_XCNS\" name=\"写承诺书\n\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" delegateExpression=\"${assigneeListener}\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-43AD0C87-8CC5-42EE-99D0-4036F933E553\" sourceRef=\"ACT_PRC_LEAVE_XCNS\" targetRef=\"ACT_PRC_LEAVE_CLOSE\"></sequenceFlow>\n    <sequenceFlow id=\"sid-F3777638-168C-42B0-8FB4-09135A9F2B32\" sourceRef=\"ACT_PRC_LEAVE_XLDSH\" targetRef=\"ACT_PRC_LEAVE_XCNS\"></sequenceFlow>\n    <sequenceFlow id=\"sid-93EC1550-2C33-490B-AA3E-B28E45674826\" sourceRef=\"ACT_PRC_LEAVE_BZRSH\" targetRef=\"ACT_PRC_LEAVE_SKLSSH\"></sequenceFlow>\n    <sequenceFlow id=\"sid-8F57FB8F-1592-47D0-9D0F-F8D13B4FC815\" sourceRef=\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\" targetRef=\"ACT_PRC_LEAVE_XLDSH\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${days>=3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-13690E35-7ED4-4FB6-BA62-F1A4FC63CB21\" sourceRef=\"ACT_PRC_LEAVE_SKLSSH\" targetRef=\"ACT_PRC_LEAVE_CLOSE\"></sequenceFlow>\n    <sequenceFlow id=\"sid-BD07764D-F327-4567-BCAD-4550478BA0D5\" sourceRef=\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\" targetRef=\"ACT_PRC_LEAVE_BZRSH\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${days<3}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_ACT_PRC_LEAVE\">\n    <bpmndi:BPMNPlane bpmnElement=\"ACT_PRC_LEAVE\" id=\"BPMNPlane_ACT_PRC_LEAVE\">\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_START\" id=\"BPMNShape_ACT_PRC_LEAVE_START\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"75.0\" y=\"155.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_BZRSH\" id=\"BPMNShape_ACT_PRC_LEAVE_BZRSH\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"330.0\" y=\"225.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_CLOSE\" id=\"BPMNShape_ACT_PRC_LEAVE_CLOSE\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"741.0\" y=\"251.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_XLDSH\" id=\"BPMNShape_ACT_PRC_LEAVE_XLDSH\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"330.0\" y=\"45.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\" id=\"BPMNShape_sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"180.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_SKLSSH\" id=\"BPMNShape_ACT_PRC_LEAVE_SKLSSH\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"510.0\" y=\"225.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_XCNS\" id=\"BPMNShape_ACT_PRC_LEAVE_XCNS\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"705.0\" y=\"45.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-93EC1550-2C33-490B-AA3E-B28E45674826\" id=\"BPMNEdge_sid-93EC1550-2C33-490B-AA3E-B28E45674826\">\n        <omgdi:waypoint x=\"430.0\" y=\"265.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"510.0\" y=\"265.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-91C21C34-3F96-4666-8592-20133D425292\" id=\"BPMNEdge_sid-91C21C34-3F96-4666-8592-20133D425292\">\n        <omgdi:waypoint x=\"104.99984644284858\" y=\"170.0678726083387\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"180.4090909090909\" y=\"170.4090909090909\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-F3777638-168C-42B0-8FB4-09135A9F2B32\" id=\"BPMNEdge_sid-F3777638-168C-42B0-8FB4-09135A9F2B32\">\n        <omgdi:waypoint x=\"430.0\" y=\"85.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"85.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-13690E35-7ED4-4FB6-BA62-F1A4FC63CB21\" id=\"BPMNEdge_sid-13690E35-7ED4-4FB6-BA62-F1A4FC63CB21\">\n        <omgdi:waypoint x=\"610.0\" y=\"265.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"741.0\" y=\"265.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-43AD0C87-8CC5-42EE-99D0-4036F933E553\" id=\"BPMNEdge_sid-43AD0C87-8CC5-42EE-99D0-4036F933E553\">\n        <omgdi:waypoint x=\"755.0\" y=\"125.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"755.0\" y=\"251.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8F57FB8F-1592-47D0-9D0F-F8D13B4FC815\" id=\"BPMNEdge_sid-8F57FB8F-1592-47D0-9D0F-F8D13B4FC815\">\n        <omgdi:waypoint x=\"200.5\" y=\"150.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"200.5\" y=\"85.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"330.0\" y=\"85.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BD07764D-F327-4567-BCAD-4550478BA0D5\" id=\"BPMNEdge_sid-BD07764D-F327-4567-BCAD-4550478BA0D5\">\n        <omgdi:waypoint x=\"200.5\" y=\"189.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"200.5\" y=\"265.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"330.0\" y=\"265.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('1432190354815324160',1,'请假流程.ACT_PRC_LEAVE.png','1432190354278453248','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0/\0\0;\0\0\0����\0\0\"9IDATx���}���(��z���P��H)R\nAD-9��J[q��DC�Mm�K=ԣi�/�hSm�x�6XD񈵞���y�4F<�jN�x�ڼ7�M�DcL��;������̾dwvg��vv�v3y���{��L�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��!˲c>����k׮͖/_�uuu�<�-[����+���	��b;\0\rDr[�zu��ݝ�۷Ϙ��cǎlժU��d�ج�v��:⨜��:I���k�Y	��b;\0u�vɥuFl50+�]l�������p�$�=�8��?~�����|��NR��\0���Z&��޹5�������n�7⺸Mb��\0���Z\"�m~��$�4���)1Ip��n��\0����k�]\r\\�&1Ip��n��\0-��6t��0��m���� �Ip\0b���p\\�M��IL �b;@K$��k��a���$&	�\r��%\\���ن��VP�.n��$8@l7�v��Hp16��t@���$%	�\r��u��g_}pං�uq��$�b�!�Lx��OY~��\r�E�m>�Y��vCl�������Wd���?7Lni�}⾎�Ip��n��\0���:\"�H�����	n8G�;R\'QIp��n��\0��5��!QIp��n��\0��	�\r�@�3$8@l���$8\0�]l��	�\r�@�3$8@l���$8@l7�v\0	ΐ�\0���$8	@l���$8@l7�v\0	ΐ�\0���$8	@l�$8C��vCl��	��v\0$8	@l�&��/�����m�\'�b�!��z���FO�\\�%�Ip��n��\0�����Q�h�\'�b�!��Z���+&:	N��vClh�W=Z[$8	�\r��\0h!Cbi�a>\Z�1C�y�òy�*���r��p�ԩ������*O�-X�����\r���{ｺ�����m۶ek׮�.��|\\q�ٳ�>�����W����g�\\rI�>����w[�x���9sf��]�v��5�5���V����޽{��x�V�q1./]�4�����>�(��1)�?������cǎ��{���SO�/?���ٙg���w��:���G~��b;h^h��/�%�n^֭[�7#�~5)�s�9��р��}������m߾=O�)A��>�����\'��[��>��c��{��󟙒��\'���w�y����N;��3cƌ�iI����̙S�ܨ����5����rJC�y��7ި����ק�qv˖-y�9��~�w�Οc���y��?~v�	\'�O:����}�����=����.\\�7/7�tS�}���;���\\�y����v����Y�ؚ��6m�T-���_gGuT� ��[OOO��[o\rH)1�����h&�,Y�73s�έ>_�����	���]<O$�b�|��\'�}�m��k�n����r݋��;��-Z�(�}�K\r�i�}��U���7��~��z����\r�Q)��O?��lʔ)�U��\Z_�7n�6&��8H�����5<i�%rI�wju^l����[�h�x&�H�g��/�Ѱ�����H^��Λ7/ON�� ��ZJJ�}�K��-��ַ��5k�d;w���\Z�Hb˗/����������zI����/�����WZ\rڼy�q�}��_���h�Y��q *��XM�����կVsD�X��\'�r�o{r������6/ŃY�м0�4+���㗿�e��α-,O\\	)����cq�#�<R����h\Zj��hF��\Zp��<���7��{l~�6���t95E��������̿�V����uA����>؈U�R����s^�`�<0 ޝq�y\\�U���=�ܓ?Gq�Y����+�i�&�8�U<W&V���V�z��R�)6C�мp�\'�G}4Oq��ʕ+�bр�m��կ��*��\0�Tb�A4\"�YIMNjb\"ɥ��i?sq{B�\'������:R�9�&��DSR\\a�G�R\"��\Z�O�ܔ<K}�Hp�����>�`�o��bl4&q��ԩS��Gި���v�bL����1�>�P���e�h^8�\\$�X�(������V��>�g�=i3�sNG�R�S�9�x�g�������Q�n���	���S<�����^��np�7/��:�|Ԯ�������P����K48�<��������\r��,�{Y�\Z��y)��h^8B\\K��SLVqݴi��n7��Y�d�I��<�	�)�D�P���B�ռ�z�T�6�֢9*��@��q�~48��Ioə��5�}	�l�K��pυI�G:hU{c�^�9dq]l���\' K۾J5ۊ5/��\"���v������W*����h*��x�����y/q[�WߧՖ���Mjl�#�o���O+\"��Pl^�O{{{~9��NzG��|�EIp�����$\Z���7��Dl����wE��\\Q��i�p�]!S�2�*����E���R\Z���y�k^b�U|�J������*Kz��tr~�-����1i�V\Zq�,��f�m�֗�a���y��\'~�8����c}�.�K�T������\Z���%\\�u��Q�м��	ΐ�\0���A�\'���b;h^��	�\r�4/Hp���b;�yA���\0�v�4/Hp�����$8C��v�м �Ip��n��yA�3$8@l7�vм �Ipf% ����	N��vCl��!�b�!���	N���vм �M��gϞlÆ\r���\\/�b�!���	��#\Z�ʯ��� �b;h^��4/ �b;h^��4/\0��h^��4/ �b;h^��4/ �k^\0�����El���E��vCl���E��v��yA�y�vM���$8͋����$8͋h^4/��͋����&��˗k^$8@l7�vм��V�^}���{R�={��H|���:�l��Q%��3+�#)��Cl�chŊ��jժ�O>�D����lٲ���ج�v�м�@%�.������Ƅ�}� ��Q����\0P�\0\0�Z\0\0�\n  \0\0�U\0\0@�\0�Z\0\0�*��\0\0�V\0@�\0\0j@@\0\0P�\0\0�V\0\0�\n  \0\0j@@\0\0P�\0\0�Z\0\0�\n  \0\0�U\0\0@�\0�Z\0\0�*��\0\0�V\0@�\0\0j��n�7{)\0\0�Ъ��2z+c]�ׅ^\0@��j�\Z�Xy9��\04/@+7.C]\0�y���C4(�v��\0\0�&�,������[�t��-Z�;o޼lƌYL�iӦes���n���w�uׇw�}�����\\�2Tcb\0м0�����~���n�-��k��z({�ײ�[�f{���B|�����|���w��]���8���k���?x�+8���4����\0@�Bk�4)����۳n�!oL8�\r�[o�����?�fϞ���K/�G��5.�q\Z\0@�B���<��;�̙�uvv��i���/dW]uUffR4.c�x\0\0��Ӹ�\\�rϏ~���������_��,\Z�Y�f=�n��N���\0м����K��2�������������Mo\\�j˗\0@�Bk�s\\b�d�V\\��L�>=\Z��x��\\�*��2~��u$j�\0@�Bk�w���[�s\\���coGG�n�xS\Z����㿵��p�F���\0\0�Z����M�b_|�E�ls��=h�X�\Z��$ASl\\�x�p�s`\0\0�/V]�s\\�����o��Y}�\Z�z��`\r�p��\0@���Z�~�cq��h�y�fΜy����\\���T^���h\\neC2�F�2\0@���Y�t�ߖ,Y���{���ʤ��yy�7z���a>l�\r�P��H���?X�\0h^o�-�}��Ƶyy��W�W&�v���%�C�Čt�V��b�8\0м0��͛�}����ڼl߾�`eR��9�y����ib���z\r̾Q4.��}\0\04/�3fd{����%~�I9h�R]���N6ڕ�z\r�h\Z���90\0���a��Q����R��n��ձU�v�e_������N��\0h^h�+��r�W^>�쳃&�+/{���©S��wס�]l(V^\0\0�����q?�e۶m���R�y�mZ�5\n�y\04/��ϟ��x��؋/������5/�����lд�k������\0\0��������=ޟ�r�-�t����s����\Z��\Z�f}�����y\04/L����g�[�80n�K{{�mmm�z��P+�mLF�����N�\0��	q��~��o�ז�M�	�˫>j�V`Fڐ��\Z\0@��Ļꪫ�����c��������xЫ>&b�v�oJ#�\nV��y���8�\0м�\ZfϞ�������K�_�.#<ǃ���I��Fd$\'�7z��C\04/��8e�̙���ߔ�e���W~������x��\\��h<*���k7�ϗ\0м�ӦM�?�g�κ��Ǵqټy�J��v�qm`F�ޖ4\0\0�-��<r��W���\nLߊ��r���Ww�40>�\0м09T\Z��*ML�����Q�����_�bcl�L�%^�q3ڭ^��\0�&�8�����Ι3������u-]]]U��=qr�s\\&���ʉ��\0��W�\\^M̌3.Z���?��O�l�r`�޽y���g�ܶm۾e˖}r�-���w4-���]�&�H�~�*\0h^8<tttLikk{�2�6WF4(Ya����+6^�I��L/�\0J\0@�L���aI�*�q\04/��k�c�\0�yZ��Ѹ\0\0����u\Z\0@�������C\04/��\0\0�V\0@�\0\0j@@\0\0P�\0\0�V\0\0�\n  \0\0�U\0\0P�\0\0�Z\0\0�\n��\0\0�U\0\0@�\0�Z\0\0�*��\0\0�V\0@�\0\0j@@\0\0P�\0\0�V\0\0�\n  \0\0�U\0\0P�\0\0�Z\0\0�\n  \0\0�U\0\0@�\0�Z\0\0�*��\0\0�V\0@�\0\0j@@\0\0P�\0\0�V\0\0�\n  �lY���n^�vm�|�򬫫��lٲ�W^魌�H��|�\n  �@z�W�κ���}��4v�ؑ�Z���R�-6+�g��*��@q�Z��:_WW�>��|6�A��[kZ�3bۍYi>�ϠV��B���3�\r��\n  p�{{��q���6{g٭���q�M�g>�3j@@�e���;�f^�����\r�F\\�)�{�a>�VZ����ο(����N�\"M�g>�3j@@�5���ZyW�b/nS�)��g�|F��D���떆�^ܦHS�φ��ZP�)�0��g�*\0�-��ݘ\Z{q�\"M�g>�3j@@�%���k��a��)�{�a>�VZ���ٺ>��҂�[l*��m�4Ş�l�ϨU\0��(�blzc�b/�S�)��g�|F��N������W�Ŧr]ܦHS�φ��Z��b/>q��5�7<G n��=��0���d{�&C�=^)м�ث{t��+��|�zi�}⾎Z+��g�|fu�����r���+�{#::�b�|6�g�T���y�=u��c�J�yA��o���`G�m�=��0�9�ڤ��K[[۝^!м��Ppj����M�g>�3��O���Ǫ�\n�~kYC�g>�3�T�Lw��yA���3�\r��R�l��h^P�)��g�|����Y���f��yA���3�\r�V�S�s_��\0�{�=��0�i)S���U��mmm_Ԝ���o+Yg�ϫ�{�b�|6�g�]�r�&�|͆�����&�looЫ�{�b�|6�gƣi9�2v�ai0v]z������=C�g>�3MQ.��koo�-6\"ٝwޙ�X�\"��_������§�~�mݺ5[�fMv��fӧO�m`z��Ş��3�\r�f4.�[Ģiy�ǲ���l8v�ܙ�?W���w^]м��3{�a>3V��}�����WYE<�n���X���=C�g>�3����-X���5�PŖ�;v�w�ڠyA�g(��g�|f4�KOq�e��K���Y������=C�g>�3�ڸ�Y<��P��\r���x��c�yA�g(��g�|�Pk��K�l�O<��м0�E[[�\\Şb�|6�g&�o���cJ:I?VGzzz�ҼĻ��F9α�?�&��o��)�˳{�=��0����������w��wg��S��:���ɗP��Q��bO�g>�3��۬\\�9ݾjժ�6/�A���e��!м0yJ��X1�(�{�a>�̿���/��c}�~��[����@���O(գc�į�S�φ�L3�6�ߏ��#���ş����c!C��:�|�м��Fk��y8���=�ry�ԩS���5��۶m[�����sΩ6H��=��C>~Æ\r�}c��P���͚5��u;v��g��/�gΜY�~׮]�u�,��������\\s̀�ׯ_?�u����Ż��\\pA����:��8Ay�����W�����/�m���w�?��իW��<7��m��f|꽕\0F�P�yI�\n�H Q\0uvv�+�����+�E�G}T��K�,�o߲eː?#\n�ht�~������??{ꩧ��2���_�f��\'�|rv�y�U�x�i��6���1cF^̥��us�̩^~��4/��|���hD�oߞ�}���s�=��q���W��c�>�����g�y&�\Zs0�.X�����/_�7��1ף����6�1��`@\\����[���sj�V��泿���\0F�Pv�\'�y�n^�X�(<��iӦ���o���NG��qQ8��\\|����?��p*\Z��.ŕ�����n�~��Gg7�xcu�&~�QG��y�٢E��1e/6EV^���iӦ�\\��hZ�=��쭷�ʯ۸q�+є���������A�~�J�w�_<4?q��G��H�y���}��;���W�i��s���f�}��\0C&��G�ǣy�#�����׿�_�w�ο��w���yIG��8��ӳ)S�4���*��a5/q�(.�[m��w\\��K�#յ�O���/���QhFQ�7oެy9�sj����+#��sO~9><5�̤��7Zy�馛��B����Ǵ��=]�U�y)6Q��@qη�<7��m����i��K�Y��\'RQp}�K_����k��ռ<��������t:\n?��.�^~����66��m8��<����u���o�5���9	�A�1мL��\\�[)�Ye��b�\"�w���y�G��V+J}+/�h����V�z�g��\'?��J\rE�oW�����L��蘒\Z��嬧��)�K�jƁ���������(�FT���S���mK�N�|E�I\'���(���xl*�����0n�7o^����`�x�M��(֊G�c�֛R��SO=5����t�v��er���6[���{��\\����[�H�*V;.��|��5{����^zi���D����<�oRQ��I_�Ӽ��<7�I�s_RS+����OW]vy�{#n^.��¼ �sһ4��6V{.�P+/����ml�E]\\w�)�T�t�<��(DSc�y9|�s��f;N|/�)D�����޼��?��\ru\\7w�ܺ?\'�k�����ӊJ�$־AEjnb�2�f�e���yn>���0�՗�>q?�/�7�������\0���,�Yg��\\��J�<֨yɶ�Ci^�y��i��µx>��8�!\n�8�G�㶴��Y\'�+�&~>�jNz�F�4�֮�|�+y��\'��*\Z�x��K4&qI�7\Z�R�9aq]��=l�Joa�\Z��_c�U��LM�35�]wݘ�mr��믿�ߪ�P���y�w�Kg�*���k��T4/霗(�✘X���Nd�/�\n���9�x�/;�ѿ�X�\rV�����أߧwj�˱EH�r�������%�9��D���d)Γ�K��M@��Էb\rO\\�m2�W{}<O����������o�9<���|��y9��XLMF�=�h�h\\n���b��[����j(�F<�Ht4(Q\0�{G���ml�G�c�M�I��}�p��x}�a��m�w�X���؛�����G��_�ю����Q�G�]�DǊJ�<(V\Z}�Q��D���b_K����O8�C���0��gj������+0���,W��b��b�ϡ�3��gw�&cI��sUb2V���bqr~������.�b�P�φ�̘����mb�s`�,cU%m)�Uѭ[��o�r�}�eW^ye��%��EC�UP��=��0�i��s`zj\Z���]�qP��=��0��ry�!41�b�Ż�(�Ş�l�ό����)mmm�T��͕���Y9P�+�3Vl�Z\0�=C�g>�3\0��3{��\0��S�a>��\0�b�P�φ�\0(�Ş�l>\0(�{�a>\0�=C�g>�3\0��S왕��\0��S�φ�\0(�Ş�l��\0�bO���l>\0�=Şb�|6�g\0@�g(��g�\0@����|6�\0Ş��3�\r�\0P��=��|\0P�)��g��|\0{�b�|6�g\0@�g(��g�\0@���3�\r�\0P��=��0���|�rE�b�|6�g\0���^��`ww�B�Ɩ-[>�{��J��|\0�cŊ��jժ�O>�D�5��޲e��W�b��|6�\0\Z������c��>���l>\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Lr��^bQ��l�\0\0\0\0IEND�B`�',1),('2',1,'source',NULL,'{\"resourceId\":\"1\",\"properties\":{\"process_id\":\"ACT_PRC_LEAVE\",\"name\":\"\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-ECA35D8C-E1F4-482D-A971-48C3FD9C0D39\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_START\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formreference\":{\"id\":\"571d0ca5-f04a-45c9-8e42-e9ed616b9dd5\",\"name\":\"审批单\",\"key\":\"checkout\"},\"formproperties\":{\"formProperties\":[{\"id\":\"username\",\"name\":\"请假人\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true,\"variable\":\"username\",\"$$hashKey\":\"uiGrid-03B\"},{\"id\":\"leave_date_start\",\"name\":\"请假开始日期\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"variable\":\"leave_date_start\",\"datePattern\":\"MM-dd-yyyy hh:mm:ss\",\"required\":true,\"$$hashKey\":\"uiGrid-03D\"},{\"id\":\"leave_date_end-\",\"name\":\"请假结束日期\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"variable\":\"leave_date_end-\",\"datePattern\":\"MM-dd-yyyy hh:mm:ss\",\"required\":true,\"$$hashKey\":\"uiGrid-03F\"},{\"id\":\"days\",\"name\":\"请假天数\",\"type\":\"long\",\"readable\":true,\"writable\":true,\"required\":true,\"variable\":\"days\",\"$$hashKey\":\"uiGrid-03H\"},{\"id\":\"traffic\",\"name\":\"出行方式\",\"type\":\"enum\",\"readable\":true,\"writable\":true,\"enumValues\":[{\"id\":\"1\",\"name\":\"火车\"},{\"id\":\"2\",\"name\":\"飞机\"}],\"$$hashKey\":\"uiGrid-03J\"},{\"id\":\"dept\",\"name\":\"所属部门\",\"type\":\"tree\",\"readable\":true,\"writable\":true,\"$$hashKey\":\"uiGrid-03L\"},{\"id\":\"reimburse\",\"name\":\"是否报销\",\"type\":\"boolean\",\"readable\":true,\"writable\":true,\"$$hashKey\":\"uiGrid-04P\"}]}},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-91C21C34-3F96-4666-8592-20133D425292\"}],\"bounds\":{\"lowerRight\":{\"x\":105,\"y\":185},\"upperLeft\":{\"x\":75,\"y\":155}},\"dockers\":[]},{\"resourceId\":\"sid-4546BE1A-9E9A-49FA-A0FB-E4AF7D77FB69\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_BZRSH\",\"name\":\"班主任审核\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":{\"executionListeners\":[{\"event\":\"start\",\"implementation\":\"${executionListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${executionListener}\",\"fields\":[],\"$$hashKey\":\"uiGrid-0BF\"},{\"event\":\"end\",\"implementation\":\"${executionListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${executionListener}\",\"fields\":[],\"$$hashKey\":\"uiGrid-0BH\"}]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\"}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"audit_result\",\"name\":\"是否同意\",\"type\":\"boolean\",\"readable\":true,\"writable\":true,\"required\":true,\"$$hashKey\":\"uiGrid-02F\"},{\"id\":\"audit_reason\",\"name\":\"（不）通过原因\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"$$hashKey\":\"uiGrid-02P\"}]},\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"implementation\":\"com.ppfly.activiti.listener.tasklistener.AssigneeListener\",\"className\":\"com.ppfly.activiti.listener.tasklistener.AssigneeListener\",\"expression\":\"这是Expression\",\"delegateExpression\":\"${assigneeListener}\",\"fields\":[],\"$$hashKey\":\"uiGrid-03Y\"},{\"event\":\"assignment\",\"implementation\":\"${assigneeListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${assigneeListener}\",\"fields\":[],\"$$hashKey\":\"uiGrid-040\"}]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-93EC1550-2C33-490B-AA3E-B28E45674826\"}],\"bounds\":{\"lowerRight\":{\"x\":430,\"y\":305},\"upperLeft\":{\"x\":330,\"y\":225}},\"dockers\":[]},{\"resourceId\":\"sid-B9ED82AE-7C6D-4698-A383-BB9CC6E4608B\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_CLOSE\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":769,\"y\":279},\"upperLeft\":{\"x\":741,\"y\":251}},\"dockers\":[]},{\"resourceId\":\"sid-C1FAD8CC-C3E3-4507-8F13-C82DE7C4A16C\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_XLDSH\",\"name\":\"校领导审核\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":false,\"executionlisteners\":\"\",\"multiinstance_type\":\"Parallel\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"${minObeysMajStrategy.resolveUsersForTask(execution)}\",\"multiinstance_variable\":\"usersForTask\",\"multiinstance_condition\":\"${minObeysMajStrategy.isComplete(execution)}\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"${usersForTask}\"}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-F3777638-168C-42B0-8FB4-09135A9F2B32\"}],\"bounds\":{\"lowerRight\":{\"x\":430,\"y\":125},\"upperLeft\":{\"x\":330,\"y\":45}},\"dockers\":[]},{\"resourceId\":\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-BD07764D-F327-4567-BCAD-4550478BA0D5\"},{\"resourceId\":\"sid-8F57FB8F-1592-47D0-9D0F-F8D13B4FC815\"}],\"bounds\":{\"lowerRight\":{\"x\":220,\"y\":190},\"upperLeft\":{\"x\":180,\"y\":150}},\"dockers\":[]},{\"resourceId\":\"sid-91C21C34-3F96-4666-8592-20133D425292\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\"}],\"bounds\":{\"lowerRight\":{\"x\":179.6445414871434,\"y\":170.40563140944408},\"upperLeft\":{\"x\":105.67577101285657,\"y\":170.07093109055592}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\"}},{\"resourceId\":\"sid-64553196-FB4F-4E24-AE8F-A3C19251115C\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_SKLSSH\",\"name\":\"授课老师审核\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"implementation\":\"${candidateUsersListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${candidateUsersListener}\",\"$$hashKey\":\"uiGrid-04P\",\"fields\":[]},{\"event\":\"assignment\",\"implementation\":\"${candidateUsersListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${candidateUsersListener}\",\"$$hashKey\":\"uiGrid-04V\",\"fields\":[]}]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-13690E35-7ED4-4FB6-BA62-F1A4FC63CB21\"}],\"bounds\":{\"lowerRight\":{\"x\":610,\"y\":305},\"upperLeft\":{\"x\":510,\"y\":225}},\"dockers\":[]},{\"resourceId\":\"sid-2FEA8408-C023-42AD-B197-AF22C2C0A89C\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_XCNS\",\"name\":\"写承诺书\\n\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"implementation\":\"${assigneeListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${assigneeListener}\",\"$$hashKey\":\"uiGrid-05D\",\"fields\":[]}]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-43AD0C87-8CC5-42EE-99D0-4036F933E553\"}],\"bounds\":{\"lowerRight\":{\"x\":805,\"y\":125},\"upperLeft\":{\"x\":705,\"y\":45}},\"dockers\":[]},{\"resourceId\":\"sid-43AD0C87-8CC5-42EE-99D0-4036F933E553\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B9ED82AE-7C6D-4698-A383-BB9CC6E4608B\"}],\"bounds\":{\"lowerRight\":{\"x\":755,\"y\":250.640625},\"upperLeft\":{\"x\":755,\"y\":125.375}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-B9ED82AE-7C6D-4698-A383-BB9CC6E4608B\"}},{\"resourceId\":\"sid-F3777638-168C-42B0-8FB4-09135A9F2B32\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"showdiamondmarker\":false},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2FEA8408-C023-42AD-B197-AF22C2C0A89C\"}],\"bounds\":{\"lowerRight\":{\"x\":704.3799285888672,\"y\":85},\"upperLeft\":{\"x\":430.95257568359375,\"y\":85}},\"dockers\":[{\"x\":56.8046875,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-2FEA8408-C023-42AD-B197-AF22C2C0A89C\"}},{\"resourceId\":\"sid-93EC1550-2C33-490B-AA3E-B28E45674826\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-64553196-FB4F-4E24-AE8F-A3C19251115C\"}],\"bounds\":{\"lowerRight\":{\"x\":509.78125,\"y\":265},\"upperLeft\":{\"x\":430.21875,\"y\":265}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-64553196-FB4F-4E24-AE8F-A3C19251115C\"}},{\"resourceId\":\"sid-8F57FB8F-1592-47D0-9D0F-F8D13B4FC815\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":{\"expression\":{\"type\":\"static\",\"staticValue\":\"${days>=3}\"}},\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"showdiamondmarker\":false},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C1FAD8CC-C3E3-4507-8F13-C82DE7C4A16C\"}],\"bounds\":{\"lowerRight\":{\"x\":329.91796875,\"y\":149.4609375},\"upperLeft\":{\"x\":200.5,\"y\":85}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":200.5,\"y\":85},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-C1FAD8CC-C3E3-4507-8F13-C82DE7C4A16C\"}},{\"resourceId\":\"sid-13690E35-7ED4-4FB6-BA62-F1A4FC63CB21\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B9ED82AE-7C6D-4698-A383-BB9CC6E4608B\"}],\"bounds\":{\"lowerRight\":{\"x\":740.2890625,\"y\":265},\"upperLeft\":{\"x\":610.51171875,\"y\":265}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-B9ED82AE-7C6D-4698-A383-BB9CC6E4608B\"}},{\"resourceId\":\"sid-BD07764D-F327-4567-BCAD-4550478BA0D5\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":{\"expression\":{\"type\":\"static\",\"staticValue\":\"${days<3}\"}},\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4546BE1A-9E9A-49FA-A0FB-E4AF7D77FB69\"}],\"bounds\":{\"lowerRight\":{\"x\":329.91796875,\"y\":265},\"upperLeft\":{\"x\":200.5,\"y\":190.6953125}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":200.5,\"y\":265},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-4546BE1A-9E9A-49FA-A0FB-E4AF7D77FB69\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL);

/*Table structure for table `act_ge_property` */

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('cfg.execution-related-entities-count','false',1),('next.dbid','64',2),('schema.history','create(6.0.0.4)',1),('schema.version','6.0.0.4',1);

/*Table structure for table `act_hi_actinst` */

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`TENANT_ID_`) values ('1432191776151703552','ACT_PRC_LEAVE:1:1432190354823712768','1432191776130732032','1432191776147509248','ACT_PRC_LEAVE_START',NULL,NULL,NULL,'startEvent',NULL,'2021-08-30 12:01:42.928','2021-08-30 12:01:42.930',2,NULL,''),('1432191776168480768','ACT_PRC_LEAVE:1:1432190354823712768','1432191776130732032','1432191776147509248','sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38',NULL,NULL,NULL,'exclusiveGateway',NULL,'2021-08-30 12:01:42.932','2021-08-30 12:01:42.946',14,NULL,''),('1432191776281726981','ACT_PRC_LEAVE:1:1432190354823712768','1432191776130732032','1432191776273338371','ACT_PRC_LEAVE_XLDSH','1432191776285921280',NULL,'校领导审核','userTask','zhangsan','2021-08-30 12:01:42.959',NULL,NULL,NULL,''),('1432191776285921282','ACT_PRC_LEAVE:1:1432190354823712768','1432191776130732032','1432191776273338372','ACT_PRC_LEAVE_XLDSH','1432191776285921283',NULL,'校领导审核','userTask','lisi','2021-08-30 12:01:42.960',NULL,NULL,NULL,''),('1432191776290115585','ACT_PRC_LEAVE:1:1432190354823712768','1432191776130732032','1432191776273338373','ACT_PRC_LEAVE_XLDSH','1432191776290115586',NULL,'校领导审核','userTask','wangwu','2021-08-30 12:01:42.961',NULL,NULL,NULL,'');

/*Table structure for table `act_hi_attachment` */

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('1432191776130732033',NULL,'starter','勇敢牛牛',NULL,'1432191776130732032'),('1432191776285921281',NULL,'participant','zhangsan',NULL,'1432191776130732032'),('1432191776290115584',NULL,'participant','lisi',NULL,'1432191776130732032'),('1432191776290115587',NULL,'participant','wangwu',NULL,'1432191776130732032');

/*Table structure for table `act_hi_procinst` */

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('1432191776130732032','1432191776130732032',NULL,'ACT_PRC_LEAVE:1:1432190354823712768','2021-08-30 12:01:42.904',NULL,NULL,'勇敢牛牛','ACT_PRC_LEAVE_START',NULL,NULL,NULL,'','请假流程.bpmn20.xml');

/*Table structure for table `act_hi_taskinst` */

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('1432191776285921280','ACT_PRC_LEAVE:1:1432190354823712768','ACT_PRC_LEAVE_XLDSH','1432191776130732032','1432191776273338371','校领导审核',NULL,NULL,NULL,'zhangsan','2021-08-30 12:01:42.960',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('1432191776285921283','ACT_PRC_LEAVE:1:1432190354823712768','ACT_PRC_LEAVE_XLDSH','1432191776130732032','1432191776273338372','校领导审核',NULL,NULL,NULL,'lisi','2021-08-30 12:01:42.961',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('1432191776290115586','ACT_PRC_LEAVE:1:1432190354823712768','ACT_PRC_LEAVE_XLDSH','1432191776130732032','1432191776273338373','校领导审核',NULL,NULL,NULL,'wangwu','2021-08-30 12:01:42.961',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('1432191776134926336','1432191776130732032','1432191776130732032',NULL,'processDefinitionId','string',0,NULL,NULL,NULL,'ACT_PRC_LEAVE:1:1432190354823712768',NULL,'2021-08-30 12:01:42.925','2021-08-30 12:01:42.925'),('1432191776139120640','1432191776130732032','1432191776130732032',NULL,'procName','string',0,NULL,NULL,NULL,'请假流程.bpmn20.xml',NULL,'2021-08-30 12:01:42.925','2021-08-30 12:01:42.925'),('1432191776139120641','1432191776130732032','1432191776130732032',NULL,'username','string',0,NULL,NULL,NULL,'勇敢牛牛',NULL,'2021-08-30 12:01:42.925','2021-08-30 12:01:42.925'),('1432191776143314944','1432191776130732032','1432191776130732032',NULL,'leave_date_start','string',0,NULL,NULL,NULL,'2021-08-30',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776143314945','1432191776130732032','1432191776130732032',NULL,'leave_date_end-','string',0,NULL,NULL,NULL,'2021-09-30',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776143314946','1432191776130732032','1432191776130732032',NULL,'days','string',0,NULL,NULL,NULL,'24',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776143314947','1432191776130732032','1432191776130732032',NULL,'traffic','string',0,NULL,NULL,NULL,'1',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776143314948','1432191776130732032','1432191776130732032',NULL,'dept','string',0,NULL,NULL,NULL,'研发部门',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776143314949','1432191776130732032','1432191776130732032',NULL,'reimburse','string',0,NULL,NULL,NULL,'0',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776273338368','1432191776130732032','1432191776147509248',NULL,'nrOfInstances','integer',0,NULL,NULL,3,'3',NULL,'2021-08-30 12:01:42.957','2021-08-30 12:01:42.957'),('1432191776273338369','1432191776130732032','1432191776147509248',NULL,'nrOfCompletedInstances','integer',0,NULL,NULL,0,'0',NULL,'2021-08-30 12:01:42.957','2021-08-30 12:01:42.957'),('1432191776273338370','1432191776130732032','1432191776147509248',NULL,'nrOfActiveInstances','integer',0,NULL,NULL,3,'3',NULL,'2021-08-30 12:01:42.957','2021-08-30 12:01:42.957'),('1432191776273338374','1432191776130732032','1432191776273338371',NULL,'loopCounter','integer',0,NULL,NULL,0,'0',NULL,'2021-08-30 12:01:42.957','2021-08-30 12:01:42.957'),('1432191776281726976','1432191776130732032','1432191776273338371',NULL,'usersForTask','string',0,NULL,NULL,NULL,'zhangsan',NULL,'2021-08-30 12:01:42.959','2021-08-30 12:01:42.959'),('1432191776281726977','1432191776130732032','1432191776273338372',NULL,'loopCounter','integer',0,NULL,NULL,1,'1',NULL,'2021-08-30 12:01:42.959','2021-08-30 12:01:42.959'),('1432191776281726978','1432191776130732032','1432191776273338372',NULL,'usersForTask','string',0,NULL,NULL,NULL,'lisi',NULL,'2021-08-30 12:01:42.959','2021-08-30 12:01:42.959'),('1432191776281726979','1432191776130732032','1432191776273338373',NULL,'loopCounter','integer',0,NULL,NULL,2,'2',NULL,'2021-08-30 12:01:42.959','2021-08-30 12:01:42.959'),('1432191776281726980','1432191776130732032','1432191776273338373',NULL,'usersForTask','string',0,NULL,NULL,NULL,'wangwu',NULL,'2021-08-30 12:01:42.959','2021-08-30 12:01:42.959');

/*Table structure for table `act_id_group` */

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_procdef_info` */

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_procdef_info` */

/*Table structure for table `act_re_deployment` */

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`KEY_`,`TENANT_ID_`,`DEPLOY_TIME_`,`ENGINE_VERSION_`) values ('1432190354278453248','请假流程',NULL,NULL,'','2021-08-30 11:56:03.926',NULL);

/*Table structure for table `act_re_model` */

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('1',3,'请假流程','leaveprocess',NULL,'2021-08-02 14:37:09.232','2021-08-30 11:56:04.086',1,'{\"name\":\"请假流程\",\"description\":\"请假流程描述\",\"revision\":2}','1432190354278453248','2',NULL,''),('1430414061857804288',1,'事件管理','event_process',NULL,'2021-08-25 14:17:42.788','2021-08-25 14:59:10.595',1,'{\"name\":\"事件管理\",\"description\":\"事件管理模型描述\",\"revision\":\"1\"}',NULL,'1430414061882970112',NULL,'');

/*Table structure for table `act_re_procdef` */

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`ENGINE_VERSION_`) values ('ACT_PRC_LEAVE:1:1432190354823712768',1,'http://www.activiti.org/processdef',NULL,'ACT_PRC_LEAVE',1,'1432190354278453248','请假流程.bpmn20.xml','请假流程.ACT_PRC_LEAVE.png',NULL,0,1,1,'',NULL);

/*Table structure for table `act_ru_deadletter_job` */

CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_deadletter_job` */

/*Table structure for table `act_ru_event_subscr` */

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) DEFAULT NULL,
  `TASK_COUNT_` int(11) DEFAULT NULL,
  `JOB_COUNT_` int(11) DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ROOT_PROC_INST_ID_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`IS_MI_ROOT_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`START_TIME_`,`START_USER_ID_`,`LOCK_TIME_`,`IS_COUNT_ENABLED_`,`EVT_SUBSCR_COUNT_`,`TASK_COUNT_`,`JOB_COUNT_`,`TIMER_JOB_COUNT_`,`SUSP_JOB_COUNT_`,`DEADLETTER_JOB_COUNT_`,`VAR_COUNT_`,`ID_LINK_COUNT_`) values ('1432191776130732032',2,'1432191776130732032',NULL,NULL,'ACT_PRC_LEAVE:1:1432190354823712768',NULL,'1432191776130732032',NULL,1,0,1,0,0,1,NULL,'','请假流程.bpmn20.xml','2021-08-30 12:01:42.904','勇敢牛牛',NULL,0,0,0,0,0,0,0,0,0),('1432191776147509248',1,'1432191776130732032',NULL,'1432191776130732032','ACT_PRC_LEAVE:1:1432190354823712768',NULL,'1432191776130732032','ACT_PRC_LEAVE_XLDSH',0,0,0,0,1,1,NULL,'',NULL,'2021-08-30 12:01:42.927',NULL,NULL,0,0,0,0,0,0,0,0,0),('1432191776273338371',1,'1432191776130732032',NULL,'1432191776147509248','ACT_PRC_LEAVE:1:1432190354823712768',NULL,'1432191776130732032','ACT_PRC_LEAVE_XLDSH',1,0,0,0,0,1,NULL,'',NULL,'2021-08-30 12:01:42.957',NULL,NULL,0,0,0,0,0,0,0,0,0),('1432191776273338372',1,'1432191776130732032',NULL,'1432191776147509248','ACT_PRC_LEAVE:1:1432190354823712768',NULL,'1432191776130732032','ACT_PRC_LEAVE_XLDSH',1,0,0,0,0,1,NULL,'',NULL,'2021-08-30 12:01:42.957',NULL,NULL,0,0,0,0,0,0,0,0,0),('1432191776273338373',1,'1432191776130732032',NULL,'1432191776147509248','ACT_PRC_LEAVE:1:1432190354823712768',NULL,'1432191776130732032','ACT_PRC_LEAVE_XLDSH',1,0,0,0,0,1,NULL,'',NULL,'2021-08-30 12:01:42.957',NULL,NULL,0,0,0,0,0,0,0,0,0);

/*Table structure for table `act_ru_identitylink` */

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('1432191776130732033',1,NULL,'starter','勇敢牛牛',NULL,'1432191776130732032',NULL),('1432191776285921281',1,NULL,'participant','zhangsan',NULL,'1432191776130732032',NULL),('1432191776290115584',1,NULL,'participant','lisi',NULL,'1432191776130732032',NULL),('1432191776290115587',1,NULL,'participant','wangwu',NULL,'1432191776130732032',NULL);

/*Table structure for table `act_ru_job` */

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_suspended_job` */

CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_suspended_job` */

/*Table structure for table `act_ru_task` */

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`,`CLAIM_TIME_`) values ('1432191776285921280',1,'1432191776273338371','1432191776130732032','ACT_PRC_LEAVE:1:1432190354823712768','校领导审核',NULL,NULL,'ACT_PRC_LEAVE_XLDSH',NULL,'zhangsan',NULL,50,'2021-08-30 12:01:42.959',NULL,NULL,1,'',NULL,NULL),('1432191776285921283',1,'1432191776273338372','1432191776130732032','ACT_PRC_LEAVE:1:1432190354823712768','校领导审核',NULL,NULL,'ACT_PRC_LEAVE_XLDSH',NULL,'lisi',NULL,50,'2021-08-30 12:01:42.960',NULL,NULL,1,'',NULL,NULL),('1432191776290115586',1,'1432191776273338373','1432191776130732032','ACT_PRC_LEAVE:1:1432190354823712768','校领导审核',NULL,NULL,'ACT_PRC_LEAVE_XLDSH',NULL,'wangwu',NULL,50,'2021-08-30 12:01:42.961',NULL,NULL,1,'',NULL,NULL);

/*Table structure for table `act_ru_timer_job` */

CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TIMER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_timer_job` */

/*Table structure for table `act_ru_variable` */

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('1432191776134926336',1,'string','processDefinitionId','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'ACT_PRC_LEAVE:1:1432190354823712768',NULL),('1432191776139120640',1,'string','procName','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'请假流程.bpmn20.xml',NULL),('1432191776139120641',1,'string','username','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'勇敢牛牛',NULL),('1432191776143314944',1,'string','leave_date_start','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'2021-08-30',NULL),('1432191776143314945',1,'string','leave_date_end-','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'2021-09-30',NULL),('1432191776143314946',1,'string','days','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'24',NULL),('1432191776143314947',1,'string','traffic','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'1',NULL),('1432191776143314948',1,'string','dept','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'研发部门',NULL),('1432191776143314949',1,'string','reimburse','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'0',NULL),('1432191776273338368',1,'integer','nrOfInstances','1432191776147509248','1432191776130732032',NULL,NULL,NULL,3,'3',NULL),('1432191776273338369',1,'integer','nrOfCompletedInstances','1432191776147509248','1432191776130732032',NULL,NULL,NULL,0,'0',NULL),('1432191776273338370',1,'integer','nrOfActiveInstances','1432191776147509248','1432191776130732032',NULL,NULL,NULL,3,'3',NULL),('1432191776273338374',1,'integer','loopCounter','1432191776273338371','1432191776130732032',NULL,NULL,NULL,0,'0',NULL),('1432191776281726976',1,'string','usersForTask','1432191776273338371','1432191776130732032',NULL,NULL,NULL,NULL,'zhangsan',NULL),('1432191776281726977',1,'integer','loopCounter','1432191776273338372','1432191776130732032',NULL,NULL,NULL,1,'1',NULL),('1432191776281726978',1,'string','usersForTask','1432191776273338372','1432191776130732032',NULL,NULL,NULL,NULL,'lisi',NULL),('1432191776281726979',1,'integer','loopCounter','1432191776273338373','1432191776130732032',NULL,NULL,NULL,2,'2',NULL),('1432191776281726980',1,'string','usersForTask','1432191776273338373','1432191776130732032',NULL,NULL,NULL,NULL,'wangwu',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
