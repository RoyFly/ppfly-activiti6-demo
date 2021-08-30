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

insert  into `act_de_model`(`id`,`name`,`model_key`,`description`,`model_comment`,`created`,`created_by`,`last_updated`,`last_updated_by`,`version`,`model_editor_json`,`thumbnail`,`model_type`) values ('571d0ca5-f04a-45c9-8e42-e9ed616b9dd5','å®¡æ‰¹å•','checkout','å®¡æ‰¹å•',NULL,'2021-07-30 16:39:02','admin','2021-07-30 16:40:18','admin',1,'{\"name\":\"å®¡æ‰¹å•\",\"key\":\"checkout\",\"version\":0,\"fields\":[{\"fieldType\":\"OptionFormField\",\"id\":\"å®¡æ‰¹æ„è§\",\"name\":\"å®¡æ‰¹æ„è§\",\"type\":\"radio-buttons\",\"value\":\"åŒæ„\",\"required\":false,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"sizeX\":0,\"sizeY\":2,\"optionType\":null,\"hasEmptyValue\":null,\"options\":[{\"id\":null,\"name\":\"åŒæ„\"},{\"id\":null,\"name\":\"ä¸åŒæ„\"}]},{\"fieldType\":\"FormField\",\"id\":\"å®¡æ‰¹æ„è§\",\"name\":\"å®¡æ‰¹æ„è§\",\"type\":\"multi-line-text\",\"value\":null,\"required\":false,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"å®¡æ‰¹æ„è§\",\"layout\":null,\"sizeX\":0,\"sizeY\":0}],\"outcomes\":[]}','Â‰PNG\r\n\Z\n',2),('5ad5d75c-36c1-412f-ae8c-7e58e5f60051','è¯·å‡æµç¨‹','leaveprocess','è¯·å‡æµç¨‹',NULL,'2021-07-30 16:41:05','admin','2021-07-30 16:47:08','admin',1,'{\"resourceId\":\"5ad5d75c-36c1-412f-ae8c-7e58e5f60051\",\"properties\":{\"process_id\":\"leaveprocess\",\"name\":\"è¯·å‡æµç¨‹\",\"documentation\":\"è¯·å‡æµç¨‹\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"startEvent1\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-322E01E0-8CA1-4D24-92DC-82C00E9C2A5A\"}],\"bounds\":{\"lowerRight\":{\"x\":105,\"y\":197},\"upperLeft\":{\"x\":75,\"y\":167}},\"dockers\":[]},{\"resourceId\":\"sid-91281998-95EF-4EC1-8441-01B76B06F6FB\",\"properties\":{\"overrideid\":\"\",\"name\":\"è¯·å‡ç”³è¯·\\n\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"user\",\"assignee\":{\"id\":\"guanyu\",\"firstName\":\"å…³\",\"lastName\":\"ç¾½\",\"email\":\"guanyu@iufc.cn\",\"fullName\":\"å…³ ç¾½\",\"groups\":[],\"$$hashKey\":\"object:2745\"}}}},\"formkeydefinition\":\"\",\"formreference\":{\"id\":\"f92c4172-33d2-4171-81fb-f7c50a27c93d\",\"name\":\"è¯·å‡å•\",\"key\":\"leavebill\"},\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-89766A2A-DAB4-4F99-8CAF-D5C11EF58FAE\"}],\"bounds\":{\"lowerRight\":{\"x\":358,\"y\":222},\"upperLeft\":{\"x\":258,\"y\":142}},\"dockers\":[]},{\"resourceId\":\"sid-2B6B9A52-D22E-46FA-AD17-733FC190607A\",\"properties\":{\"overrideid\":\"\",\"name\":\"å®¡æ‰¹\\n\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"idm\",\"idm\":{\"type\":\"user\",\"assignee\":{\"id\":\"liubei\",\"firstName\":\"åˆ˜\",\"lastName\":\"å¤‡\",\"email\":\"liubei@iufc.cn\",\"fullName\":\"åˆ˜ å¤‡\",\"groups\":[],\"$$hashKey\":\"object:2951\"}}}},\"formkeydefinition\":\"\",\"formreference\":{\"id\":\"571d0ca5-f04a-45c9-8e42-e9ed616b9dd5\",\"name\":\"å®¡æ‰¹å•\",\"key\":\"checkout\"},\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9C683956-FF88-470B-8B36-4322FB7A1DAD\"}],\"bounds\":{\"lowerRight\":{\"x\":595,\"y\":222},\"upperLeft\":{\"x\":495,\"y\":142}},\"dockers\":[]},{\"resourceId\":\"sid-40904778-7335-4BE6-8B15-9B00B0EB5E12\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":793,\"y\":196},\"upperLeft\":{\"x\":765,\"y\":168}},\"dockers\":[]},{\"resourceId\":\"sid-322E01E0-8CA1-4D24-92DC-82C00E9C2A5A\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-91281998-95EF-4EC1-8441-01B76B06F6FB\"}],\"bounds\":{\"lowerRight\":{\"x\":257.609375,\"y\":182},\"upperLeft\":{\"x\":105.4765625,\"y\":182}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-91281998-95EF-4EC1-8441-01B76B06F6FB\"}},{\"resourceId\":\"sid-89766A2A-DAB4-4F99-8CAF-D5C11EF58FAE\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2B6B9A52-D22E-46FA-AD17-733FC190607A\"}],\"bounds\":{\"lowerRight\":{\"x\":494.0078125,\"y\":182},\"upperLeft\":{\"x\":358.9921875,\"y\":182}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-2B6B9A52-D22E-46FA-AD17-733FC190607A\"}},{\"resourceId\":\"sid-9C683956-FF88-470B-8B36-4322FB7A1DAD\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-40904778-7335-4BE6-8B15-9B00B0EB5E12\"}],\"bounds\":{\"lowerRight\":{\"x\":764.2890625,\"y\":182},\"upperLeft\":{\"x\":595.359375,\"y\":182}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-40904778-7335-4BE6-8B15-9B00B0EB5E12\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}','Â‰PNG\r\n\Z\n',0),('f92c4172-33d2-4171-81fb-f7c50a27c93d','è¯·å‡å•','leavebill','è¯·å‡å•',NULL,'2021-07-30 16:33:43','admin','2021-07-30 16:37:31','admin',1,'{\"name\":\"è¯·å‡å•\",\"key\":\"leavebill\",\"version\":0,\"fields\":[{\"fieldType\":\"FormField\",\"id\":\"å¼€å§‹æ—¥æœŸ\",\"name\":\"å¼€å§‹æ—¥æœŸ\",\"type\":\"date\",\"value\":null,\"required\":false,\"readOnly\":false,\"overrideId\":false,\"placeholder\":\"å¼€å§‹æ—¥æœŸ\",\"layout\":null,\"sizeX\":0,\"sizeY\":0},{\"fieldType\":\"FormField\",\"id\":\"days\",\"name\":\"è¯·å‡å¤©æ•°\",\"type\":\"text\",\"value\":null,\"required\":false,\"readOnly\":false,\"overrideId\":true,\"placeholder\":\"è¯·å‡å¤©æ•°\",\"layout\":null,\"sizeX\":0,\"sizeY\":0},{\"fieldType\":\"FormField\",\"id\":\"è¯·å‡åŸå› \",\"name\":\"è¯·å‡åŸå› \",\"type\":\"multi-line-text\",\"value\":null,\"required\":false,\"readOnly\":false,\"overrideId\":false,\"placeholder\":null,\"layout\":null,\"sizeX\":0,\"sizeY\":0}],\"outcomes\":[]}','Â‰PNG\r\n\Z\n',2);

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

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('1430414061882970112',1,'source',NULL,'{\"resourceId\":\"1430414061857804288\",\"properties\":{\"process_id\":\"ACT_PRC_EVENT\",\"name\":\"\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-DA23765E-BCDE-465F-94A7-7D67F229E9C8\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"formproperties\":\"\"},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FE0163DD-8AD4-4810-85B6-F128B70B1186\"}],\"bounds\":{\"lowerRight\":{\"x\":288.2,\"y\":155},\"upperLeft\":{\"x\":258.2,\"y\":125}},\"dockers\":[]},{\"resourceId\":\"sid-38BE80A2-FEDF-48F8-9CE2-62D0B2566560\",\"properties\":{\"overrideid\":\"\",\"name\":\"ä¸€çº§å®¡æ ¸äºº\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-55F0B6A8-B573-4771-A05D-514EBB93E813\"}],\"bounds\":{\"lowerRight\":{\"x\":433.2,\"y\":180},\"upperLeft\":{\"x\":333.2,\"y\":100}},\"dockers\":[]},{\"resourceId\":\"sid-FE0163DD-8AD4-4810-85B6-F128B70B1186\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-38BE80A2-FEDF-48F8-9CE2-62D0B2566560\"}],\"bounds\":{\"lowerRight\":{\"x\":332.35625,\"y\":140},\"upperLeft\":{\"x\":288.809375,\"y\":140}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-38BE80A2-FEDF-48F8-9CE2-62D0B2566560\"}},{\"resourceId\":\"sid-9CAED3E2-F699-43DC-931A-AA9B4AA7B9B5\",\"properties\":{\"overrideid\":\"\",\"name\":\"äºŒçº§å®¡æ ¸äºº\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-63944EDC-9101-4A99-A862-730394DA6788\"}],\"bounds\":{\"lowerRight\":{\"x\":578.2,\"y\":180},\"upperLeft\":{\"x\":478.20000000000005,\"y\":100}},\"dockers\":[]},{\"resourceId\":\"sid-55F0B6A8-B573-4771-A05D-514EBB93E813\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9CAED3E2-F699-43DC-931A-AA9B4AA7B9B5\"}],\"bounds\":{\"lowerRight\":{\"x\":477.35625000000005,\"y\":140},\"upperLeft\":{\"x\":434.04375000000005,\"y\":140}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-9CAED3E2-F699-43DC-931A-AA9B4AA7B9B5\"}},{\"resourceId\":\"sid-4823A827-E682-425B-9D45-F1C9B0628217\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":651.2,\"y\":154},\"upperLeft\":{\"x\":623.2,\"y\":126}},\"dockers\":[]},{\"resourceId\":\"sid-63944EDC-9101-4A99-A862-730394DA6788\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4823A827-E682-425B-9D45-F1C9B0628217\"}],\"bounds\":{\"lowerRight\":{\"x\":622.575,\"y\":140},\"upperLeft\":{\"x\":578.590625,\"y\":140}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-4823A827-E682-425B-9D45-F1C9B0628217\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('1432190354278453249',1,'è¯·å‡æµç¨‹.bpmn20.xml','1432190354278453248','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/processdef\">\n  <process id=\"ACT_PRC_LEAVE\" isExecutable=\"true\">\n    <startEvent id=\"ACT_PRC_LEAVE_START\">\n      <extensionElements>\n        <activiti:formProperty id=\"username\" name=\"è¯·å‡äºº\" type=\"string\" variable=\"username\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"leave_date_start\" name=\"è¯·å‡å¼€å§‹æ—¥æœŸ\" type=\"date\" variable=\"leave_date_start\" datePattern=\"MM-dd-yyyy hh:mm:ss\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"leave_date_end-\" name=\"è¯·å‡ç»“æŸæ—¥æœŸ\" type=\"date\" variable=\"leave_date_end-\" datePattern=\"MM-dd-yyyy hh:mm:ss\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"days\" name=\"è¯·å‡å¤©æ•°\" type=\"long\" variable=\"days\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"traffic\" name=\"å‡ºè¡Œæ–¹å¼\" type=\"enum\">\n          <activiti:value id=\"1\" name=\"ç«è½¦\"></activiti:value>\n          <activiti:value id=\"2\" name=\"é£æœº\"></activiti:value>\n        </activiti:formProperty>\n        <activiti:formProperty id=\"dept\" name=\"æ‰€å±éƒ¨é—¨\" type=\"tree\"></activiti:formProperty>\n        <activiti:formProperty id=\"reimburse\" name=\"æ˜¯å¦æŠ¥é”€\" type=\"boolean\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"ACT_PRC_LEAVE_BZRSH\" name=\"ç­ä¸»ä»»å®¡æ ¸\">\n      <extensionElements>\n        <activiti:formProperty id=\"audit_result\" name=\"æ˜¯å¦åŒæ„\" type=\"boolean\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"audit_reason\" name=\"ï¼ˆä¸ï¼‰é€šè¿‡åŸå› \" type=\"string\"></activiti:formProperty>\n        <activiti:executionListener event=\"start\" delegateExpression=\"${executionListener}\"></activiti:executionListener>\n        <activiti:executionListener event=\"end\" delegateExpression=\"${executionListener}\"></activiti:executionListener>\n        <activiti:taskListener event=\"create\" class=\"com.ppfly.activiti.listener.tasklistener.AssigneeListener\"></activiti:taskListener>\n        <activiti:taskListener event=\"assignment\" delegateExpression=\"${assigneeListener}\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <endEvent id=\"ACT_PRC_LEAVE_CLOSE\"></endEvent>\n    <userTask id=\"ACT_PRC_LEAVE_XLDSH\" name=\"æ ¡é¢†å¯¼å®¡æ ¸\" activiti:assignee=\"${usersForTask}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n      <multiInstanceLoopCharacteristics isSequential=\"false\" activiti:collection=\"${minObeysMajStrategy.resolveUsersForTask(execution)}\" activiti:elementVariable=\"usersForTask\">\n        <completionCondition>${minObeysMajStrategy.isComplete(execution)}</completionCondition>\n      </multiInstanceLoopCharacteristics>\n    </userTask>\n    <exclusiveGateway id=\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-91C21C34-3F96-4666-8592-20133D425292\" sourceRef=\"ACT_PRC_LEAVE_START\" targetRef=\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\"></sequenceFlow>\n    <userTask id=\"ACT_PRC_LEAVE_SKLSSH\" name=\"æˆè¯¾è€å¸ˆå®¡æ ¸\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" delegateExpression=\"${candidateUsersListener}\"></activiti:taskListener>\n        <activiti:taskListener event=\"assignment\" delegateExpression=\"${candidateUsersListener}\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"ACT_PRC_LEAVE_XCNS\" name=\"å†™æ‰¿è¯ºä¹¦\n\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" delegateExpression=\"${assigneeListener}\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-43AD0C87-8CC5-42EE-99D0-4036F933E553\" sourceRef=\"ACT_PRC_LEAVE_XCNS\" targetRef=\"ACT_PRC_LEAVE_CLOSE\"></sequenceFlow>\n    <sequenceFlow id=\"sid-F3777638-168C-42B0-8FB4-09135A9F2B32\" sourceRef=\"ACT_PRC_LEAVE_XLDSH\" targetRef=\"ACT_PRC_LEAVE_XCNS\"></sequenceFlow>\n    <sequenceFlow id=\"sid-93EC1550-2C33-490B-AA3E-B28E45674826\" sourceRef=\"ACT_PRC_LEAVE_BZRSH\" targetRef=\"ACT_PRC_LEAVE_SKLSSH\"></sequenceFlow>\n    <sequenceFlow id=\"sid-8F57FB8F-1592-47D0-9D0F-F8D13B4FC815\" sourceRef=\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\" targetRef=\"ACT_PRC_LEAVE_XLDSH\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${days>=3}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-13690E35-7ED4-4FB6-BA62-F1A4FC63CB21\" sourceRef=\"ACT_PRC_LEAVE_SKLSSH\" targetRef=\"ACT_PRC_LEAVE_CLOSE\"></sequenceFlow>\n    <sequenceFlow id=\"sid-BD07764D-F327-4567-BCAD-4550478BA0D5\" sourceRef=\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\" targetRef=\"ACT_PRC_LEAVE_BZRSH\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${days<3}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_ACT_PRC_LEAVE\">\n    <bpmndi:BPMNPlane bpmnElement=\"ACT_PRC_LEAVE\" id=\"BPMNPlane_ACT_PRC_LEAVE\">\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_START\" id=\"BPMNShape_ACT_PRC_LEAVE_START\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"75.0\" y=\"155.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_BZRSH\" id=\"BPMNShape_ACT_PRC_LEAVE_BZRSH\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"330.0\" y=\"225.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_CLOSE\" id=\"BPMNShape_ACT_PRC_LEAVE_CLOSE\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"741.0\" y=\"251.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_XLDSH\" id=\"BPMNShape_ACT_PRC_LEAVE_XLDSH\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"330.0\" y=\"45.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\" id=\"BPMNShape_sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"180.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_SKLSSH\" id=\"BPMNShape_ACT_PRC_LEAVE_SKLSSH\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"510.0\" y=\"225.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"ACT_PRC_LEAVE_XCNS\" id=\"BPMNShape_ACT_PRC_LEAVE_XCNS\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"705.0\" y=\"45.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-93EC1550-2C33-490B-AA3E-B28E45674826\" id=\"BPMNEdge_sid-93EC1550-2C33-490B-AA3E-B28E45674826\">\n        <omgdi:waypoint x=\"430.0\" y=\"265.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"510.0\" y=\"265.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-91C21C34-3F96-4666-8592-20133D425292\" id=\"BPMNEdge_sid-91C21C34-3F96-4666-8592-20133D425292\">\n        <omgdi:waypoint x=\"104.99984644284858\" y=\"170.0678726083387\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"180.4090909090909\" y=\"170.4090909090909\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-F3777638-168C-42B0-8FB4-09135A9F2B32\" id=\"BPMNEdge_sid-F3777638-168C-42B0-8FB4-09135A9F2B32\">\n        <omgdi:waypoint x=\"430.0\" y=\"85.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"705.0\" y=\"85.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-13690E35-7ED4-4FB6-BA62-F1A4FC63CB21\" id=\"BPMNEdge_sid-13690E35-7ED4-4FB6-BA62-F1A4FC63CB21\">\n        <omgdi:waypoint x=\"610.0\" y=\"265.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"741.0\" y=\"265.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-43AD0C87-8CC5-42EE-99D0-4036F933E553\" id=\"BPMNEdge_sid-43AD0C87-8CC5-42EE-99D0-4036F933E553\">\n        <omgdi:waypoint x=\"755.0\" y=\"125.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"755.0\" y=\"251.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8F57FB8F-1592-47D0-9D0F-F8D13B4FC815\" id=\"BPMNEdge_sid-8F57FB8F-1592-47D0-9D0F-F8D13B4FC815\">\n        <omgdi:waypoint x=\"200.5\" y=\"150.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"200.5\" y=\"85.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"330.0\" y=\"85.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BD07764D-F327-4567-BCAD-4550478BA0D5\" id=\"BPMNEdge_sid-BD07764D-F327-4567-BCAD-4550478BA0D5\">\n        <omgdi:waypoint x=\"200.5\" y=\"189.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"200.5\" y=\"265.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"330.0\" y=\"265.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('1432190354815324160',1,'è¯·å‡æµç¨‹.ACT_PRC_LEAVE.png','1432190354278453248','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0/\0\0;\0\0\0Ôõ¾”\0\0\"9IDATxÚíİ}ˆÜå½(ğáz¥Š¯Pÿ¤H)R\nAD-9ÄÛJ[qÜİDCŒMmêK=Ô£iŒ/ÇhSmõx­6XDñˆµÅú²yÓ4F<šjNôxšÚ¼7ìMÓDcL²¿;ßûÌıíìÌ¾dwvg“ÏvvŞv3yöûò{ßL©\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À‘!Ë²c>üğÃÍk×®Í–/_uuuã<–-[–½òÊ+½•ñ 	ˆíb;\0\rDr[½zuÖİİíÛ·Ï˜ ±cÇlÕªU½•d·Ø¬Äv±€:â¨œäÖ:I®««kŸY	ˆíb;\0uÄvÉ¥uFl50+±]l ¨‹ˆí†ØpØ$¸=û8ûğ?~›½³ìÖ|Äå¸NR’à\0±İÛZ&ÁíŞ¹5Ûğâüìíçnè7âº¸Mb’à\0±İÛZ\"Ám~çß$·4¶¼Ó)1Ip€Ønˆí\0­‘àşkå]\r\\Ü&1Ip€Ønˆí\0-‘à6tİÒ0ÁÅm“ˆí†Ø ÁIp\0b»ØÀp\\¼M£·IL ¶b;@K$¸kşµa‚‹Û$&	Û\r± %\\ÏÖõÙ†—ÜVP¹.n“˜$8@l7Äv€–Hp16½±t@‚‹ë$%	Û\r± uÜçŸg_}pà¶‚Êuq›Ä$Áb»!¶Lx‚‹OY~Íı\r÷EÇm>‰Y‚ÄvCl˜¸÷ùçÙÇWdÿùÂ?7LniÄ}â¾ÔIp€Ønˆí\0ãšà†:\"çHˆí†ØĞ	n8Gä;R\'QIp€Ønˆí\0ã’à5¹¥!QIp€Ønˆí\0ã’à	Û\r±@‚3$8@lÛà$8\0±]là	Û\r±@‚3$8@lÛà$8@l7Äv\0	Îà\0±İÛ$8	@lÛà$8@l7Äv\0	Îà\0±İÛ$8	@lÛ$8C‚ÄvClà	ÛÅv\0$8	@lÛ&¯Ë/¿¼§­­m®\'Áb»!¶´z‚ËúFO¹\\%ÁIp€Ønˆí\0­àÒØQïh\'Áb»!¶´Z‚«­+&:	N‚ÄvClhÕW=Z[$8	Û\r±‡\0h!Cbia>\Z†1Có¢yÃ²yñ*‘Íér¹¼pêÔ©ÇÄıš™à*OŸ-X° úı†\ròëŞ{ï½º÷ëãömÛ¶ek×®Í.»ì²|\\qÅÙ³Ï>›ßöğÃWïÿúë¯g—\\rIõ>î×èw[¼xñ÷™9sfõû]»vå×5ó5“à€VíõÆŞ½{óøxá…Vãq1./]º4¿½ø˜>ú(¿ñ1)†?ÿüóıîùcÇÕïŸ{î¹ìÔSOÍ/?ıôÓÙ™gÙğw‹ç:î¸ãªßG~ìşb;h^h×/±%Ín^Ö­[—7#çŸ~5)sÎ9ÕËÑ€¤û}ôÑÙñÇŸmß¾=O„)AÅı>ıôÓÏâ‰\'æÏ[ïç>öØcı®{ùå—óŸ™’ãÉ\'ŸœwŞyùå‘üN;í´Ï3cÆŒ¼iI÷ëæÌ™S½Ü¨“à€Ã5¶×§œrJCŸyæ™ì7Ş¨—¯»îº×§ØqvË–-y£9£ö~»wïÎŸcõêÕyü?~vÂ	\'ä—O:é¤üû¸}ıúõÕç=ûì³óÛ.\\˜7/7İtSş}¸ºã;òû§\\£yÍ­“àv·µµİY›Øš™à6mÚT-îıë_gGuT âÈ[OOOöÖ[o\rH)1½ûî»ù×h&–,Y’73sçÎ­>_±‰‰ç‹ä	±ö¨]<O$Âbâ|òÉ\'û}Ûm·õkœn¼ñÆürİ‹ç‰ß;Î-Z´(ÿ}£K\r™i±}¨ƒUßãë7¾ñ~‹zê©üúÈ\r©Q)ŠïO?ıôlÊ”)ÕUœ´\Z_ü7n¬6&ñØ8H÷çïë5<iå%rIñwju^lÍãÿÿ[÷hÜx&¸H³gÏÎ/ÇÑ°”¼Òö«H^ÅûÎ›7/ON±• —’ZJJñ}ÕK‰-ßúÖ·üÜ5kÖd;wîÌïŸ\Z˜HbË—/¯®´”ú¶„ÅåØzI¶Şˆ‹/¾¸ßïWZ\rÚ¼y³q±}¨¸_»òİh›YŠ³q *š‹XMË—¿úÕ¯VsDñ€XŠé‘\'âr©o{rÄüÁ¶Õ6/ÅƒYšĞ¼0‰4+Á¥¤ã—¿üe¿½Î±-,O\\	)®¥ícqİ#<R½œšh\Zj›—hFâºØ\ZpÁä«<ßüæ7ó¯Ç{l~¹6©Æºt95Eµ‰­ö÷ïììÌ¿ÆV³Ç¼ºuA‚´Ø>ØˆUëRßÖàÚs^â`Ó<0 ŞqÆy\\Uô¸Ï=÷Ü“?GqëY¬´¤˜+ßiÕ&å–8ğU<W&V€âÀVŒzÛÆR)6CšĞ¼p„\'¸G}4Oq’åÊ•+ó£bÑ€Äm¿úÕ¯ª«*Åí\0‘Tb»A4\"©YIMNjb\"É¥½Ìi?sq{BÜ\'ÿşûï°:Rª9ß&­¼DSR\\a‰GåR\"Œ„\Z¿OüÜ”<K}ç¾Hp€æåÿ>ø`Øo’’bl4&q¾ÌÔ©S«×GŞ¨÷‘Òv°bLÿò—¿Üï1é>P¥ÇÇeÍh^8Â\\$¢Xı(õ­˜¤ëÓV‚¸>Îg©=i3ísNGİRóSª9¦x’g©°š’¾æ¥Qònó×Å	¨±ºS<¢‰ù¥—^ªşnp¤7/»Ï:ë¬|Ô®¸ø›‹ˆ¥ÑP¤ğÓÊK48ñ<ßşö·ëÆğÈ\r±,½{Yà\Zª¬y)æÍh^8B\\K«±SLVqİ´iÓên7ˆíY‘dÒIÑ<Ä	ó)¹DÓPû¸´Bç¹Õ¼ßz³TØ6ÛÖ¢9*¾á@üşqÂ~48ñïIoÉ™¶5ë¤}	˜lÍKñ€ÒpÏ…IG:hU{cÜ^û9dq]lÿŠ†\' KÛ¾J5ÛŠ5/ñó\"§Çv®ŒØš°W*¬°Ä±h*Òåx›ÊÚûÇy/q[œWß§Õ–Øú•MjlŠ#Îo‰÷íO+\"ÃÙPl^»O{{{~9½‹NzG²¸|ÑEIp€æ¥Áˆæ$\Z‡´í7­¼Dl˜š¶wEŒ\\QŒÉiËpñ]!S«2é*‹«éÎE¬·òR\Zæˆí yák^bÛU|ÆJœ”™ÌÅ*Kzıtr~ñ-‹ãËâ1iËV\Zq´,½•f½mñÖ—¥a®Š·y‰×\'~—8¿¦Şíc}â¾.ÍKñ T½÷š¸—Ü\Zîó¦æ%\\ãu£æ¥QîĞ¼€æ	Îà\0±İÛAó‚\'Áˆíb;h^à	Û\r±4/Hp†ˆíb; yA‚“à\0Äv±4/Hp†ˆí†Øš$8C‚Äv±Ğ¼ ÁIp€Ønˆí yA‚3$8@l7ÄvĞ¼ ÁIpf% ¶‹í€æ	N‚ÄvClÍœ!Áb»!¶ƒæ	N‚ÛÅvĞ¼ ÁM·gÏlÃ†\rù×Ñ\\/Áb»!¶ƒæ	®©#\Z‘Ê¯œÍõ ¶b;h^à4/ ¶b;h^à4/\0šÍh^à4/ ¶b;h^à4/ ¶k^\0ÍšÍ€æElÍœæE‚ÄvClÍœæE‚ÄvÍ yAó¢yÄvMƒØš$8Í‹ˆí†Øš$8Í‹h^4/€æÍ‹ˆí†Øš&³åË—k^$8@l7ÄvĞ¼ĞúV¯^}°»»{Rÿ={öäH|Íõ­:¶lÙòQ%Áí3+#)¶îClÍchÅŠÿ²jÕªŞO>ùD’™àä¶lÙ²ı•±Ø¬Äv±Ğ¼Ğ@%¨.ìêêÚËÚÆ„}’ ¶÷Q«ˆí€æ\0P«\0\0€Z\0\0µ\n  \0\0¨U\0\0@­\0€Z\0\0Ô*€€\0\0 V\0@­\0\0j@@\0\0P«\0\0 V\0\0µ\n  \0\0j@@\0\0P«\0\0€Z\0\0µ\n  \0\0¨U\0\0@­\0€Z\0\0Ô*€€\0\0 V\0@­\0\0j ¹nî7{)\0\0ÍĞªş©2z+c]ß×…^\0@ó´jã’\Z–Xy9¨\04/@+7.C]\0 yÆİÍC4(évçÀ\0\0š&¿,Ëş×úõë[ºtéß-ZÔ;oŞ¼lÆŒYL¬iÓ¦esçÎÍnºé¦ıwİu×‡wß}÷ÿöŠµ\\ã2Tcb\0Ğ¼0ù›–§Ÿ~úƒÛn»-»æšk²‡z({íµ×²­[·f{÷îÍB|íîîÎŞ|óÍìw¿û]öãÿ8»öÚk÷ÿà?xÔ+8¡ş©4²•‘Ş\0@óBk¨4)¿½ıöÛ³n¸!oL8\r×[o½•ıô§?ÍfÏ½ïÒK/ıG¯æ„5.ñq\Z\0@óBë«ôÇ<ûì³;çÌ™“uvv¨i©õÂ/dW]uUffR4.cõx\0\0ÍãÓ¸¬\\¹rÏ~ô£ìı÷ßÏÆÂ_şò—,\Z¡Y³f=énº¡NÎïç\0Ğ¼Ğ±âKœÃ2–âù®¾úêŞööö½ÊMo\\ÆjË—\0@óBkŠs\\b…d¬V\\ê­ÀLŸ>=\Z˜ïxµÇ\\í¹*ÿ£2~Ó÷u$jç\0@óBk‰w»õÖ[ós\\šéücoGGÇn¯xS\Z—……ä¿ã¿µïëp˜FÓÀ\0\0šZÇïÿûMñ®b_|ñEÖlsçÎ=hûXÓ\Z—ğ›¾$ASl\\Òx¨p»s`\0\0Í/V]âs\\âíÇÃÛo¿Y}\ZŠzÈ`\rÌpïï\0@óÂÄZ¿~ıcq’şhŞy¤fÎœy°­­í\\˜—÷T^‡¹£h\\neC2ÒFÇ2\0@óÂÄYºtéß–,Y’§{ï½÷³Ê¤ìô‡yyÖ7zÊåò¬a>l¸\rÄPÉH—âÏ?X²\0h^o‹-ê}íµ×ÆµyyõÕW÷W&åv˜Õæ%C¬ÄŒtëV£åbã’8\0Ğ¼0şæÍ›—}üñÇãÚ¼lß¾ı`eRğ‡9 y©®ÄÔibõœ“z\rÌ¾Q4.£ı}\0\04/š3fd{÷î×æ%~I9hóR]‰éÛN6Ú•z\rÌh\Z—ÚÆ90\0€æ…ñ™a…»QßûŞ÷R“±n”ÿÕ±U¬vÅe_ßõ£±®ï¹Nõ×\0h^hª+¯¼rÜW^>ûì³ƒ&å +/{ÊåòÂ©S§Ów×¡Ş]l(V^\0\0Í“ßøÃq?çeÛ¶mûœóR·y©mZê5\nÎy\04/™æÏŸÿÅx¿ÛØ‹/¾ØíİÆú5/»ÛÚÚîlĞ´Ôk†»ÒáİÆ\0\0Í‡Ÿÿüçÿ=ŞŸórË-·tûœ—üs°•–¡\Z˜¡\Z‡f}ÎËô’Ïy\04/L„Ÿıìgÿ[Ç80nÍK{{ûmmmçzõÙP+ÃmLFÚÀ¤ÆéNÿ\0€æ…	qíµ×~ñæ›o×–±M•	¹Ë«>jV`FÚ÷ş\Z\0@óÂÄ»êª«î¹şúëÇcõ¥·½½ı³ÊxĞ«>&b¦v×oJ#ß\nV¯y¨æç8Ç\0Ğ¼Ğ\ZfÏ½·³³³©Kœ_«.#<Çƒ¡˜âIüÅFd$\'á7zœ·C\04/´–8eæÌ™Ùûï¿ß”ÆeıúõW~ÆÁöööïxµÇ\\í²h<*üík7ÚÏ—\0Ğ¼ĞÓ¦Mû?³gÏÎº»»Ç´qÙ¼yó®Jã²ßv±qm`F«Ş–4\0\0Í-ÕÀ<rõÕW÷Õ\nLßŠËşr¹ü‚WwÒ40>€\0Ğ¼09T\Zû*MLïşğ‡ŞQœÄßû‹_übcl«LÀ%^Õq3Ú­^¶Š\0š&—8¦½½ıÿÎ™3çàŸÿüçu-]]]UšŸ=qr¾s\\&´éÊ‰“ó\0Í“W¹\\^MÌŒ3.Z´èó?ıéO¶lÙr`ïŞ½y£òÙgŸÜ¶mÛ¾eË–}rË-·ì¨Üw4-±Úâ]Å&ÔH·~Ù*\0h^8<tttLikk{¦2™6WF4(Ya¨Œí•Ñ+6^­I×ÀL/ù\0J\0@óL°¡ÎaIï*¦q\04/À„k´c«\0 yZ¾Ñ¸\0\0š å˜u\Z\0@ó´º›û‚·C\04/€€\0\0 V\0@­\0\0j@@\0\0P«\0\0 V\0\0µ\n  \0\0¨U\0\0P«\0\0€Z\0\0µ\n€€\0\0¨U\0\0@­\0€Z\0\0Ô*€€\0\0 V\0@­\0\0j@@\0\0P«\0\0 V\0\0µ\n  \0\0¨U\0\0P«\0\0€Z\0\0µ\n  \0\0¨U\0\0@­\0€Z\0\0Ô*€€\0\0 V\0@­\0\0j@@\0\0P«\0\0 V\0\0µ\n  ĞlY–óá‡n^»vm¶|ùò¬««Ëç±lÙ²ì•W^é­ŒÍHóÙ|µ\n  Ğ@z«W¯Îº»»³}ûö4vìØ‘­Zµª·Rø-6+ÍgóÔ*€€@q„Z¡×:_WW×>³Ò|6ŸA­Ô[kZ­3bÛYi>›Ï VêˆâB‘¥Ø3Ÿ\róµ\n  pØ{{şöqöáü6{gÙ­ùˆËqM±g>æ3j@@ eŠ½İ;·f^œŸ½ıÜ\rıF\\·)Ò{æ³a>£VZ¢ØÛüÎ¿(ôÒØòN§\"M±g>æ3j@@ 5Š½ÿZyWÃb/nS¤)öÌgÃ|F­´D±·¡ë–†Å^Ü¦HSì™Ï†ùŒZPì)ö0ŸÍgÔ*\0Ã-öâİ˜\Z{q›\"M±g>æ3j@@ %Š½kşµa±·)Ò{æ³a>£VZ¢ØëÙº>ÛğÒ‚[l*×ÅmŠ4Åùl˜Ï¨U\0–(öblzcé€b/®S )öÌgÃ|F­´N±÷ùçÙÆW¸Å¦r]Ü¦HSì™Ï†ùŒZ˜ğb/>qüı5÷7<G nó©äŠ=óÙ0Ÿƒºd{Ô&CŒ=^)Ğ¼ Ø«{túã+²ÿ|áŸziÄ}â¾Z+öÌgÃ|fuÉô¡š—r¹¼Ğ+š{#::í¨µbÏ|6ÌgšT›ì¤yÙ=uêÔc¼J yA±×oçèô`G­mŠ=óÙ0Ÿ9ÄÚ¤áêK[[Û^!Ğ¼ ØPpj¡—†¢M±g>æ3£¨Oêû²Çª’\nÃ~kYC±g>æ3ãTŸLw® yA±§Ø3Ÿ\ró™ÉR£l³êh^Pì)öÌgÃ|¦å•ËåY…æåf¯ yA±§Ø3Ÿ\ró™V®Sòs_¬º\0š{Š=óÙ0Ÿi)SÊåò¿Uê“Ímmm_Ôœ÷²¿o+YgÜÏ«š{†bÏ|6ÌgÆ]¼r¥&é©|Í†úÊÂÛ&ïlooĞ«š{†bÏ|6ÌgÆ£i9·2v·ai0v]zé¥ÿèÕÍŠ=C±g>æ3MQ.—ïkooï-6\"ÙwŞ™­X±\"ûë_ÿšııïÏÂ§Ÿ~šmİº5[³fMvï½÷fÓ§O¯m`z­Â€æÅ¡Ø3Ÿ\ró™f4.‹[Ä¢iyì±Ç²îîîl8vîÜ™ß?W³•ìw^]Ğ¼ Ø3{æ³a>3VË}ÅÆåºë®ËWYE<î†nè×ÀXÍŠ=C±g>æ3£ç¸·Š-X° º5ìPÅ–²;î¸£vÙw¼Ú yA±g(öÌgÃ|f4ÍKOqÅe´K±©YÙåÕÍŠ=C±g>æ3‡Ú¸ÜY<ÇåP·Š\r¶…¬xŒíc yA±g(öÌgÃ|æPkêªKœlßO<ñ„ÕĞ¼0™E[[Û\\ÅbÏ|6Ìg&òo³££cJ:I?VGzzzšÒ¼Ä»ßF9Î±ñ?š&Ñÿoßè)—Ë³{Š=óÙ0Ÿ™ˆ¿ÍÊõÿ–îw÷İwgÍŸSø:ıæ…É—PÒØQïè˜bO±g>æ3ÍüÛ¬\\·9İ¾jÕª¦6/ñA–…ße»ÿ!Ğ¼0yJõèX1±(ö{æ³a>ÓÌ¿ÍÊ×/Òõc}¢~­­[·‡ş‡@óÂäO(Õ£c±Ä¯ØSì™Ï†ùL3ÿ6‹ßÕÛ#ö¶ÉÅŸç¬€c!C‘Õ:Ã|İĞ¼˜ÏFkñ y8¼šÓ=åryáÔ©S‰û5£ØÛ¶m[öì³ÏæãœsÎ©6H•—=ùä“C>~Ã†\rù}cïòP÷ûÍš5«ßu;vìògÅí‹/ò¹gÎœYı~×®]ùuÍ,©øùÿÇ×\\sÍ€ë×¯_?à¶uëÖå×Å»Åí\\pAöıï¿:ÿã¶8Ay°ŸõğÃW¿üñÇŞ/şmßıîwó‘?ıŒÕ«W·ä<7ŸımÆßf|ê½•\0FšPúyI³\nñH Q\0uvvö+’¢™¹âŠ+ªE×G}T÷ñK–,Éoß²eË?#\n·ht~úéüûóÏ??{ê©§òÂ2İ÷å—_ÎfúÙ\'Ÿ|rvŞyçUÀxìi§6 ¨›1cF^Ì¥ûÆusæÌ©^~ï½÷4/‡Ù|ÿ×hD¶oß}öÙÙsÏ=—qÆıæWíıc>ÿüóùågy&ÿ\Zs0¾.X° ßı—/_7éş1×£Á‰ûÕ6í1Ïâ`@\\—÷îİ[ı™ñsj÷V›çæ³¿Íàœ\0F’PvÇ\'×yÍn^êX©(<î¸ã²iÓ¦õ»ïo¼‘±NG­ãqQ8¨¸\\|Ìı÷ß?àèp*\Zëı.Å•˜øş¶Ûn«~ôÑGg7Şxcuå&~æQG•yæ™Ù¢E‹ò¢1e/6EV^Ÿù¼iÓ¦ê\\‹”hZ=öØì­·ŞÊ¯Û¸qã +Ñ”ÄıÓüúàƒªAñ~±Jwº_<4?qù‘G©ÛH¥y÷µ¯}­ú;¶··Wçi«ÎsóÙßfß}¼Û\0C&”ºG¦Ç£y‰#¸©Àúú×¿_»wïÎ¿÷İwó¯¶yIG”Ó8ıôÓ³)S¦4üéù*ÿ¾a5/qÿ(.‹[mâèw\\¾ä’Kò#Õµ¿OÜçâ‹/î÷ÜQhFQ—7oŞ¬y9çsj¢¡ù+#÷ÜsO~9><5ÑÌ¤¹ß7Zy¹é¦›ªÍBÌ×ÅÕÇ´Êó=]ÏU¯y)6QéÀ@qÎ·Ú<7ŸımŸóÀ˜iÖÊK±Y‰â\'RQp}éK_Êî¸ãük£ÇÕ¼<ğÀùö—øıãt:\n?ã²Ë.«^~ıõ×ë66¥¾m8©è<şøãëu¥¾­oñ5¶àÄ9	¥AÎ1Ğ¼Lşù\\ê[)ÕYe‰ó±bõ\"æw¬¤y×GÁŸV+J}+/ÑhÄö³âVÇzçgıä\'?´‘J\rE©oW£æ¥Õæ¹ùLèèè˜’\ZŠÊå¬§§§)K¬jÆ±ô³ÚÚÚÎõê(öFT¦“ïSû÷ëmK…Nœ|EÖI\'”(¼â„æxl*ü¢ˆ‹Â0nŸ7o^¿‚°Ô`å¥xÎMíé(ÖŠGcÄÖ›RßğSO=5ÿ™é›t¼v›æerÏçØ6[¬Òÿ{ü¯\\¹²Ú×[¹Hó*V;.ºè¢|¤ù5{öìêå—^ziÀãâDúôØô<µoRQüÛI_‡Ó¼´Ê<7ŸIâs_RS+˜ÍğÄOW]vyÕ{#n^.¼ğÂ¼ ‹sÒ»4ÕÛ6V{.ÀP+/Å‡³ml¤E]\\wÊ)§TËt„<š¦(DSc¦y9|æs¬¦f;N|/¾)Dúÿ†¤Ş¼Š¢?Ô\ru\\7wîÜº?\'kşüùÕıÓŠJ¬$Ö¾AEjnb•2­feóÒìyn>“Äù0ÅÕ—±>q?/7ıŒööö½ê\0Š½‘,ÙYg•\\© Jï<Ö¨yÉ¶±Ci^ÒyµÛi¢ŒÂµx>ŠÖ8·!\n¿8âG¥ã¶´µ¦Y\'í+ö&~>—jNzF¦4ÄÖ®¯|å+yÁâ‰\'æó*\Z‘xç®âŠK4&qIÜ7\ZõRß9aq]ñ­—ë=lãJoaœ\ZŒØ_c²Uç¹ùLM³35×]wİ˜½mrÌãë¯¿¾ßªËPçÇ yéw¾KgÅ*Š µk×æ…T4/éœ—(˜âœ˜X¡‰‘Nd/\n§Ó9éˆxñ³/;ç¥Ñ¿¯XÔ\rVÄÆóÆåØ£ß§wjŠË±EHórøÌçâÛ§æ%¶9ÆÊDšÅÏd)Î“¥K—æM@º½Ô·b\rO\\m2õW{}<Oñûø»‰¿…¡ŞÉo°9<‘óÜ|¦¦y9·ÒXLMF¼=øh˜h\\n¿ıöbãÒ[™Ïßñj(öF<âHt4(Q\0Ö{G±ÁŞml¸GÈcûMíIĞÃ}ìpŠºx}¢aŠ·m®wûXŸ¸¯Ø›¸ùóèÑGÍÿ_£ÑÕÁâùQØGÓ]ÛDÇŠJí<(V\Z}–Q©ïDùø±b_K…ŒŒıO8á„C¿­0ÏÍgj•ËåûŠŸ+0‡º…,W³âb»€bÏÏ¡Ø3ŸÍgw•&cI±áˆsUb2Vì‡û®bqr~ñ—•Æè¯.€bÏPì™Ï†ùÌ˜Š˜Êè­mbâs`âƒ,cU%m)‹UÑ­[·æoşrß}÷eW^ye¿¦%¶ŠECäUPìŠ=óÙ0ŸiŠ¾s`zj\Z‘‘]ÎqPìŠ=óÙ0Ÿåryñ!41»bµÅ»Š(öÅùl˜ÏŒ»)mmmÏTš’Í•±¿¦Y9PÛ+£3Vl¼Z\0Š=C±g>æ3\0 Ø3{æ³ù\0 ØSìa>›Ï\0€bÏPì™Ï†ù\0(öÅùl>\0(ö{æ³a>\0Š=C±g>æ3\0 ØSì™•æ³ù\0 ØSì™Ï†ù\0(öÅùl˜Ï\0€bO±‡ùl>\0Š=ÅbÏ|6Ìg\0@±g(öÌgó\0@±§ØÃ|6Ÿ\0Å¡Ø3Ÿ\ró\0PìŠ=óÙ|\0Pì)öÌgóÈ|\0{†bÏ|6Ìg\0@±g(öÌgó\0@±§Ø3Ÿ\ró\0PìŠ=óÙ0Ÿ€ñ°|ùrE–bÏ|6Ìg\0 õ­^½ú`ww·B«Æ–-[>ª{ûÌJóÙ|\0¨cÅŠÿ²jÕªŞO>ùDÁ5Á…Ş²eËöWÆb³Ò|6Ÿ\0\Z¨»ººöÄcÂÆ>…ùl>\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Lrÿñ^bQ¼¥là\0\0\0\0IEND®B`‚',1),('2',1,'source',NULL,'{\"resourceId\":\"1\",\"properties\":{\"process_id\":\"ACT_PRC_LEAVE\",\"name\":\"\",\"documentation\":\"\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"http://www.activiti.org/processdef\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-ECA35D8C-E1F4-482D-A971-48C3FD9C0D39\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_START\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formreference\":{\"id\":\"571d0ca5-f04a-45c9-8e42-e9ed616b9dd5\",\"name\":\"å®¡æ‰¹å•\",\"key\":\"checkout\"},\"formproperties\":{\"formProperties\":[{\"id\":\"username\",\"name\":\"è¯·å‡äºº\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true,\"variable\":\"username\",\"$$hashKey\":\"uiGrid-03B\"},{\"id\":\"leave_date_start\",\"name\":\"è¯·å‡å¼€å§‹æ—¥æœŸ\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"variable\":\"leave_date_start\",\"datePattern\":\"MM-dd-yyyy hh:mm:ss\",\"required\":true,\"$$hashKey\":\"uiGrid-03D\"},{\"id\":\"leave_date_end-\",\"name\":\"è¯·å‡ç»“æŸæ—¥æœŸ\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"variable\":\"leave_date_end-\",\"datePattern\":\"MM-dd-yyyy hh:mm:ss\",\"required\":true,\"$$hashKey\":\"uiGrid-03F\"},{\"id\":\"days\",\"name\":\"è¯·å‡å¤©æ•°\",\"type\":\"long\",\"readable\":true,\"writable\":true,\"required\":true,\"variable\":\"days\",\"$$hashKey\":\"uiGrid-03H\"},{\"id\":\"traffic\",\"name\":\"å‡ºè¡Œæ–¹å¼\",\"type\":\"enum\",\"readable\":true,\"writable\":true,\"enumValues\":[{\"id\":\"1\",\"name\":\"ç«è½¦\"},{\"id\":\"2\",\"name\":\"é£æœº\"}],\"$$hashKey\":\"uiGrid-03J\"},{\"id\":\"dept\",\"name\":\"æ‰€å±éƒ¨é—¨\",\"type\":\"tree\",\"readable\":true,\"writable\":true,\"$$hashKey\":\"uiGrid-03L\"},{\"id\":\"reimburse\",\"name\":\"æ˜¯å¦æŠ¥é”€\",\"type\":\"boolean\",\"readable\":true,\"writable\":true,\"$$hashKey\":\"uiGrid-04P\"}]}},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-91C21C34-3F96-4666-8592-20133D425292\"}],\"bounds\":{\"lowerRight\":{\"x\":105,\"y\":185},\"upperLeft\":{\"x\":75,\"y\":155}},\"dockers\":[]},{\"resourceId\":\"sid-4546BE1A-9E9A-49FA-A0FB-E4AF7D77FB69\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_BZRSH\",\"name\":\"ç­ä¸»ä»»å®¡æ ¸\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":{\"executionListeners\":[{\"event\":\"start\",\"implementation\":\"${executionListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${executionListener}\",\"fields\":[],\"$$hashKey\":\"uiGrid-0BF\"},{\"event\":\"end\",\"implementation\":\"${executionListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${executionListener}\",\"fields\":[],\"$$hashKey\":\"uiGrid-0BH\"}]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\"}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"audit_result\",\"name\":\"æ˜¯å¦åŒæ„\",\"type\":\"boolean\",\"readable\":true,\"writable\":true,\"required\":true,\"$$hashKey\":\"uiGrid-02F\"},{\"id\":\"audit_reason\",\"name\":\"ï¼ˆä¸ï¼‰é€šè¿‡åŸå› \",\"type\":\"string\",\"readable\":true,\"writable\":true,\"$$hashKey\":\"uiGrid-02P\"}]},\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"implementation\":\"com.ppfly.activiti.listener.tasklistener.AssigneeListener\",\"className\":\"com.ppfly.activiti.listener.tasklistener.AssigneeListener\",\"expression\":\"è¿™æ˜¯Expression\",\"delegateExpression\":\"${assigneeListener}\",\"fields\":[],\"$$hashKey\":\"uiGrid-03Y\"},{\"event\":\"assignment\",\"implementation\":\"${assigneeListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${assigneeListener}\",\"fields\":[],\"$$hashKey\":\"uiGrid-040\"}]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-93EC1550-2C33-490B-AA3E-B28E45674826\"}],\"bounds\":{\"lowerRight\":{\"x\":430,\"y\":305},\"upperLeft\":{\"x\":330,\"y\":225}},\"dockers\":[]},{\"resourceId\":\"sid-B9ED82AE-7C6D-4698-A383-BB9CC6E4608B\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_CLOSE\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":769,\"y\":279},\"upperLeft\":{\"x\":741,\"y\":251}},\"dockers\":[]},{\"resourceId\":\"sid-C1FAD8CC-C3E3-4507-8F13-C82DE7C4A16C\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_XLDSH\",\"name\":\"æ ¡é¢†å¯¼å®¡æ ¸\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":false,\"executionlisteners\":\"\",\"multiinstance_type\":\"Parallel\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"${minObeysMajStrategy.resolveUsersForTask(execution)}\",\"multiinstance_variable\":\"usersForTask\",\"multiinstance_condition\":\"${minObeysMajStrategy.isComplete(execution)}\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"${usersForTask}\"}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-F3777638-168C-42B0-8FB4-09135A9F2B32\"}],\"bounds\":{\"lowerRight\":{\"x\":430,\"y\":125},\"upperLeft\":{\"x\":330,\"y\":45}},\"dockers\":[]},{\"resourceId\":\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-BD07764D-F327-4567-BCAD-4550478BA0D5\"},{\"resourceId\":\"sid-8F57FB8F-1592-47D0-9D0F-F8D13B4FC815\"}],\"bounds\":{\"lowerRight\":{\"x\":220,\"y\":190},\"upperLeft\":{\"x\":180,\"y\":150}},\"dockers\":[]},{\"resourceId\":\"sid-91C21C34-3F96-4666-8592-20133D425292\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\"}],\"bounds\":{\"lowerRight\":{\"x\":179.6445414871434,\"y\":170.40563140944408},\"upperLeft\":{\"x\":105.67577101285657,\"y\":170.07093109055592}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38\"}},{\"resourceId\":\"sid-64553196-FB4F-4E24-AE8F-A3C19251115C\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_SKLSSH\",\"name\":\"æˆè¯¾è€å¸ˆå®¡æ ¸\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"implementation\":\"${candidateUsersListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${candidateUsersListener}\",\"$$hashKey\":\"uiGrid-04P\",\"fields\":[]},{\"event\":\"assignment\",\"implementation\":\"${candidateUsersListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${candidateUsersListener}\",\"$$hashKey\":\"uiGrid-04V\",\"fields\":[]}]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-13690E35-7ED4-4FB6-BA62-F1A4FC63CB21\"}],\"bounds\":{\"lowerRight\":{\"x\":610,\"y\":305},\"upperLeft\":{\"x\":510,\"y\":225}},\"dockers\":[]},{\"resourceId\":\"sid-2FEA8408-C023-42AD-B197-AF22C2C0A89C\",\"properties\":{\"overrideid\":\"ACT_PRC_LEAVE_XCNS\",\"name\":\"å†™æ‰¿è¯ºä¹¦\\n\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":\"\",\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[{\"event\":\"create\",\"implementation\":\"${assigneeListener}\",\"className\":\"\",\"expression\":\"\",\"delegateExpression\":\"${assigneeListener}\",\"$$hashKey\":\"uiGrid-05D\",\"fields\":[]}]}},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-43AD0C87-8CC5-42EE-99D0-4036F933E553\"}],\"bounds\":{\"lowerRight\":{\"x\":805,\"y\":125},\"upperLeft\":{\"x\":705,\"y\":45}},\"dockers\":[]},{\"resourceId\":\"sid-43AD0C87-8CC5-42EE-99D0-4036F933E553\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B9ED82AE-7C6D-4698-A383-BB9CC6E4608B\"}],\"bounds\":{\"lowerRight\":{\"x\":755,\"y\":250.640625},\"upperLeft\":{\"x\":755,\"y\":125.375}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-B9ED82AE-7C6D-4698-A383-BB9CC6E4608B\"}},{\"resourceId\":\"sid-F3777638-168C-42B0-8FB4-09135A9F2B32\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"showdiamondmarker\":false},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2FEA8408-C023-42AD-B197-AF22C2C0A89C\"}],\"bounds\":{\"lowerRight\":{\"x\":704.3799285888672,\"y\":85},\"upperLeft\":{\"x\":430.95257568359375,\"y\":85}},\"dockers\":[{\"x\":56.8046875,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-2FEA8408-C023-42AD-B197-AF22C2C0A89C\"}},{\"resourceId\":\"sid-93EC1550-2C33-490B-AA3E-B28E45674826\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-64553196-FB4F-4E24-AE8F-A3C19251115C\"}],\"bounds\":{\"lowerRight\":{\"x\":509.78125,\"y\":265},\"upperLeft\":{\"x\":430.21875,\"y\":265}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-64553196-FB4F-4E24-AE8F-A3C19251115C\"}},{\"resourceId\":\"sid-8F57FB8F-1592-47D0-9D0F-F8D13B4FC815\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":{\"expression\":{\"type\":\"static\",\"staticValue\":\"${days>=3}\"}},\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"showdiamondmarker\":false},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C1FAD8CC-C3E3-4507-8F13-C82DE7C4A16C\"}],\"bounds\":{\"lowerRight\":{\"x\":329.91796875,\"y\":149.4609375},\"upperLeft\":{\"x\":200.5,\"y\":85}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":200.5,\"y\":85},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-C1FAD8CC-C3E3-4507-8F13-C82DE7C4A16C\"}},{\"resourceId\":\"sid-13690E35-7ED4-4FB6-BA62-F1A4FC63CB21\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-B9ED82AE-7C6D-4698-A383-BB9CC6E4608B\"}],\"bounds\":{\"lowerRight\":{\"x\":740.2890625,\"y\":265},\"upperLeft\":{\"x\":610.51171875,\"y\":265}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-B9ED82AE-7C6D-4698-A383-BB9CC6E4608B\"}},{\"resourceId\":\"sid-BD07764D-F327-4567-BCAD-4550478BA0D5\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":{\"expression\":{\"type\":\"static\",\"staticValue\":\"${days<3}\"}},\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4546BE1A-9E9A-49FA-A0FB-E4AF7D77FB69\"}],\"bounds\":{\"lowerRight\":{\"x\":329.91796875,\"y\":265},\"upperLeft\":{\"x\":200.5,\"y\":190.6953125}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":200.5,\"y\":265},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-4546BE1A-9E9A-49FA-A0FB-E4AF7D77FB69\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL);

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

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`TENANT_ID_`) values ('1432191776151703552','ACT_PRC_LEAVE:1:1432190354823712768','1432191776130732032','1432191776147509248','ACT_PRC_LEAVE_START',NULL,NULL,NULL,'startEvent',NULL,'2021-08-30 12:01:42.928','2021-08-30 12:01:42.930',2,NULL,''),('1432191776168480768','ACT_PRC_LEAVE:1:1432190354823712768','1432191776130732032','1432191776147509248','sid-DDCC1D73-C16E-42B0-870D-67D05DE0AE38',NULL,NULL,NULL,'exclusiveGateway',NULL,'2021-08-30 12:01:42.932','2021-08-30 12:01:42.946',14,NULL,''),('1432191776281726981','ACT_PRC_LEAVE:1:1432190354823712768','1432191776130732032','1432191776273338371','ACT_PRC_LEAVE_XLDSH','1432191776285921280',NULL,'æ ¡é¢†å¯¼å®¡æ ¸','userTask','zhangsan','2021-08-30 12:01:42.959',NULL,NULL,NULL,''),('1432191776285921282','ACT_PRC_LEAVE:1:1432190354823712768','1432191776130732032','1432191776273338372','ACT_PRC_LEAVE_XLDSH','1432191776285921283',NULL,'æ ¡é¢†å¯¼å®¡æ ¸','userTask','lisi','2021-08-30 12:01:42.960',NULL,NULL,NULL,''),('1432191776290115585','ACT_PRC_LEAVE:1:1432190354823712768','1432191776130732032','1432191776273338373','ACT_PRC_LEAVE_XLDSH','1432191776290115586',NULL,'æ ¡é¢†å¯¼å®¡æ ¸','userTask','wangwu','2021-08-30 12:01:42.961',NULL,NULL,NULL,'');

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

insert  into `act_hi_identitylink`(`ID_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`) values ('1432191776130732033',NULL,'starter','å‹‡æ•¢ç‰›ç‰›',NULL,'1432191776130732032'),('1432191776285921281',NULL,'participant','zhangsan',NULL,'1432191776130732032'),('1432191776290115584',NULL,'participant','lisi',NULL,'1432191776130732032'),('1432191776290115587',NULL,'participant','wangwu',NULL,'1432191776130732032');

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

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('1432191776130732032','1432191776130732032',NULL,'ACT_PRC_LEAVE:1:1432190354823712768','2021-08-30 12:01:42.904',NULL,NULL,'å‹‡æ•¢ç‰›ç‰›','ACT_PRC_LEAVE_START',NULL,NULL,NULL,'','è¯·å‡æµç¨‹.bpmn20.xml');

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

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('1432191776285921280','ACT_PRC_LEAVE:1:1432190354823712768','ACT_PRC_LEAVE_XLDSH','1432191776130732032','1432191776273338371','æ ¡é¢†å¯¼å®¡æ ¸',NULL,NULL,NULL,'zhangsan','2021-08-30 12:01:42.960',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('1432191776285921283','ACT_PRC_LEAVE:1:1432190354823712768','ACT_PRC_LEAVE_XLDSH','1432191776130732032','1432191776273338372','æ ¡é¢†å¯¼å®¡æ ¸',NULL,NULL,NULL,'lisi','2021-08-30 12:01:42.961',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,''),('1432191776290115586','ACT_PRC_LEAVE:1:1432190354823712768','ACT_PRC_LEAVE_XLDSH','1432191776130732032','1432191776273338373','æ ¡é¢†å¯¼å®¡æ ¸',NULL,NULL,NULL,'wangwu','2021-08-30 12:01:42.961',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');

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

insert  into `act_hi_varinst`(`ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`TASK_ID_`,`NAME_`,`VAR_TYPE_`,`REV_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`,`CREATE_TIME_`,`LAST_UPDATED_TIME_`) values ('1432191776134926336','1432191776130732032','1432191776130732032',NULL,'processDefinitionId','string',0,NULL,NULL,NULL,'ACT_PRC_LEAVE:1:1432190354823712768',NULL,'2021-08-30 12:01:42.925','2021-08-30 12:01:42.925'),('1432191776139120640','1432191776130732032','1432191776130732032',NULL,'procName','string',0,NULL,NULL,NULL,'è¯·å‡æµç¨‹.bpmn20.xml',NULL,'2021-08-30 12:01:42.925','2021-08-30 12:01:42.925'),('1432191776139120641','1432191776130732032','1432191776130732032',NULL,'username','string',0,NULL,NULL,NULL,'å‹‡æ•¢ç‰›ç‰›',NULL,'2021-08-30 12:01:42.925','2021-08-30 12:01:42.925'),('1432191776143314944','1432191776130732032','1432191776130732032',NULL,'leave_date_start','string',0,NULL,NULL,NULL,'2021-08-30',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776143314945','1432191776130732032','1432191776130732032',NULL,'leave_date_end-','string',0,NULL,NULL,NULL,'2021-09-30',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776143314946','1432191776130732032','1432191776130732032',NULL,'days','string',0,NULL,NULL,NULL,'24',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776143314947','1432191776130732032','1432191776130732032',NULL,'traffic','string',0,NULL,NULL,NULL,'1',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776143314948','1432191776130732032','1432191776130732032',NULL,'dept','string',0,NULL,NULL,NULL,'ç ”å‘éƒ¨é—¨',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776143314949','1432191776130732032','1432191776130732032',NULL,'reimburse','string',0,NULL,NULL,NULL,'0',NULL,'2021-08-30 12:01:42.926','2021-08-30 12:01:42.926'),('1432191776273338368','1432191776130732032','1432191776147509248',NULL,'nrOfInstances','integer',0,NULL,NULL,3,'3',NULL,'2021-08-30 12:01:42.957','2021-08-30 12:01:42.957'),('1432191776273338369','1432191776130732032','1432191776147509248',NULL,'nrOfCompletedInstances','integer',0,NULL,NULL,0,'0',NULL,'2021-08-30 12:01:42.957','2021-08-30 12:01:42.957'),('1432191776273338370','1432191776130732032','1432191776147509248',NULL,'nrOfActiveInstances','integer',0,NULL,NULL,3,'3',NULL,'2021-08-30 12:01:42.957','2021-08-30 12:01:42.957'),('1432191776273338374','1432191776130732032','1432191776273338371',NULL,'loopCounter','integer',0,NULL,NULL,0,'0',NULL,'2021-08-30 12:01:42.957','2021-08-30 12:01:42.957'),('1432191776281726976','1432191776130732032','1432191776273338371',NULL,'usersForTask','string',0,NULL,NULL,NULL,'zhangsan',NULL,'2021-08-30 12:01:42.959','2021-08-30 12:01:42.959'),('1432191776281726977','1432191776130732032','1432191776273338372',NULL,'loopCounter','integer',0,NULL,NULL,1,'1',NULL,'2021-08-30 12:01:42.959','2021-08-30 12:01:42.959'),('1432191776281726978','1432191776130732032','1432191776273338372',NULL,'usersForTask','string',0,NULL,NULL,NULL,'lisi',NULL,'2021-08-30 12:01:42.959','2021-08-30 12:01:42.959'),('1432191776281726979','1432191776130732032','1432191776273338373',NULL,'loopCounter','integer',0,NULL,NULL,2,'2',NULL,'2021-08-30 12:01:42.959','2021-08-30 12:01:42.959'),('1432191776281726980','1432191776130732032','1432191776273338373',NULL,'usersForTask','string',0,NULL,NULL,NULL,'wangwu',NULL,'2021-08-30 12:01:42.959','2021-08-30 12:01:42.959');

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

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`KEY_`,`TENANT_ID_`,`DEPLOY_TIME_`,`ENGINE_VERSION_`) values ('1432190354278453248','è¯·å‡æµç¨‹',NULL,NULL,'','2021-08-30 11:56:03.926',NULL);

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

insert  into `act_re_model`(`ID_`,`REV_`,`NAME_`,`KEY_`,`CATEGORY_`,`CREATE_TIME_`,`LAST_UPDATE_TIME_`,`VERSION_`,`META_INFO_`,`DEPLOYMENT_ID_`,`EDITOR_SOURCE_VALUE_ID_`,`EDITOR_SOURCE_EXTRA_VALUE_ID_`,`TENANT_ID_`) values ('1',3,'è¯·å‡æµç¨‹','leaveprocess',NULL,'2021-08-02 14:37:09.232','2021-08-30 11:56:04.086',1,'{\"name\":\"è¯·å‡æµç¨‹\",\"description\":\"è¯·å‡æµç¨‹æè¿°\",\"revision\":2}','1432190354278453248','2',NULL,''),('1430414061857804288',1,'äº‹ä»¶ç®¡ç†','event_process',NULL,'2021-08-25 14:17:42.788','2021-08-25 14:59:10.595',1,'{\"name\":\"äº‹ä»¶ç®¡ç†\",\"description\":\"äº‹ä»¶ç®¡ç†æ¨¡å‹æè¿°\",\"revision\":\"1\"}',NULL,'1430414061882970112',NULL,'');

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

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`ENGINE_VERSION_`) values ('ACT_PRC_LEAVE:1:1432190354823712768',1,'http://www.activiti.org/processdef',NULL,'ACT_PRC_LEAVE',1,'1432190354278453248','è¯·å‡æµç¨‹.bpmn20.xml','è¯·å‡æµç¨‹.ACT_PRC_LEAVE.png',NULL,0,1,1,'',NULL);

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

insert  into `act_ru_execution`(`ID_`,`REV_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PARENT_ID_`,`PROC_DEF_ID_`,`SUPER_EXEC_`,`ROOT_PROC_INST_ID_`,`ACT_ID_`,`IS_ACTIVE_`,`IS_CONCURRENT_`,`IS_SCOPE_`,`IS_EVENT_SCOPE_`,`IS_MI_ROOT_`,`SUSPENSION_STATE_`,`CACHED_ENT_STATE_`,`TENANT_ID_`,`NAME_`,`START_TIME_`,`START_USER_ID_`,`LOCK_TIME_`,`IS_COUNT_ENABLED_`,`EVT_SUBSCR_COUNT_`,`TASK_COUNT_`,`JOB_COUNT_`,`TIMER_JOB_COUNT_`,`SUSP_JOB_COUNT_`,`DEADLETTER_JOB_COUNT_`,`VAR_COUNT_`,`ID_LINK_COUNT_`) values ('1432191776130732032',2,'1432191776130732032',NULL,NULL,'ACT_PRC_LEAVE:1:1432190354823712768',NULL,'1432191776130732032',NULL,1,0,1,0,0,1,NULL,'','è¯·å‡æµç¨‹.bpmn20.xml','2021-08-30 12:01:42.904','å‹‡æ•¢ç‰›ç‰›',NULL,0,0,0,0,0,0,0,0,0),('1432191776147509248',1,'1432191776130732032',NULL,'1432191776130732032','ACT_PRC_LEAVE:1:1432190354823712768',NULL,'1432191776130732032','ACT_PRC_LEAVE_XLDSH',0,0,0,0,1,1,NULL,'',NULL,'2021-08-30 12:01:42.927',NULL,NULL,0,0,0,0,0,0,0,0,0),('1432191776273338371',1,'1432191776130732032',NULL,'1432191776147509248','ACT_PRC_LEAVE:1:1432190354823712768',NULL,'1432191776130732032','ACT_PRC_LEAVE_XLDSH',1,0,0,0,0,1,NULL,'',NULL,'2021-08-30 12:01:42.957',NULL,NULL,0,0,0,0,0,0,0,0,0),('1432191776273338372',1,'1432191776130732032',NULL,'1432191776147509248','ACT_PRC_LEAVE:1:1432190354823712768',NULL,'1432191776130732032','ACT_PRC_LEAVE_XLDSH',1,0,0,0,0,1,NULL,'',NULL,'2021-08-30 12:01:42.957',NULL,NULL,0,0,0,0,0,0,0,0,0),('1432191776273338373',1,'1432191776130732032',NULL,'1432191776147509248','ACT_PRC_LEAVE:1:1432190354823712768',NULL,'1432191776130732032','ACT_PRC_LEAVE_XLDSH',1,0,0,0,0,1,NULL,'',NULL,'2021-08-30 12:01:42.957',NULL,NULL,0,0,0,0,0,0,0,0,0);

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

insert  into `act_ru_identitylink`(`ID_`,`REV_`,`GROUP_ID_`,`TYPE_`,`USER_ID_`,`TASK_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`) values ('1432191776130732033',1,NULL,'starter','å‹‡æ•¢ç‰›ç‰›',NULL,'1432191776130732032',NULL),('1432191776285921281',1,NULL,'participant','zhangsan',NULL,'1432191776130732032',NULL),('1432191776290115584',1,NULL,'participant','lisi',NULL,'1432191776130732032',NULL),('1432191776290115587',1,NULL,'participant','wangwu',NULL,'1432191776130732032',NULL);

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

insert  into `act_ru_task`(`ID_`,`REV_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`PROC_DEF_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`TASK_DEF_KEY_`,`OWNER_`,`ASSIGNEE_`,`DELEGATION_`,`PRIORITY_`,`CREATE_TIME_`,`DUE_DATE_`,`CATEGORY_`,`SUSPENSION_STATE_`,`TENANT_ID_`,`FORM_KEY_`,`CLAIM_TIME_`) values ('1432191776285921280',1,'1432191776273338371','1432191776130732032','ACT_PRC_LEAVE:1:1432190354823712768','æ ¡é¢†å¯¼å®¡æ ¸',NULL,NULL,'ACT_PRC_LEAVE_XLDSH',NULL,'zhangsan',NULL,50,'2021-08-30 12:01:42.959',NULL,NULL,1,'',NULL,NULL),('1432191776285921283',1,'1432191776273338372','1432191776130732032','ACT_PRC_LEAVE:1:1432190354823712768','æ ¡é¢†å¯¼å®¡æ ¸',NULL,NULL,'ACT_PRC_LEAVE_XLDSH',NULL,'lisi',NULL,50,'2021-08-30 12:01:42.960',NULL,NULL,1,'',NULL,NULL),('1432191776290115586',1,'1432191776273338373','1432191776130732032','ACT_PRC_LEAVE:1:1432190354823712768','æ ¡é¢†å¯¼å®¡æ ¸',NULL,NULL,'ACT_PRC_LEAVE_XLDSH',NULL,'wangwu',NULL,50,'2021-08-30 12:01:42.961',NULL,NULL,1,'',NULL,NULL);

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

insert  into `act_ru_variable`(`ID_`,`REV_`,`TYPE_`,`NAME_`,`EXECUTION_ID_`,`PROC_INST_ID_`,`TASK_ID_`,`BYTEARRAY_ID_`,`DOUBLE_`,`LONG_`,`TEXT_`,`TEXT2_`) values ('1432191776134926336',1,'string','processDefinitionId','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'ACT_PRC_LEAVE:1:1432190354823712768',NULL),('1432191776139120640',1,'string','procName','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'è¯·å‡æµç¨‹.bpmn20.xml',NULL),('1432191776139120641',1,'string','username','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'å‹‡æ•¢ç‰›ç‰›',NULL),('1432191776143314944',1,'string','leave_date_start','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'2021-08-30',NULL),('1432191776143314945',1,'string','leave_date_end-','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'2021-09-30',NULL),('1432191776143314946',1,'string','days','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'24',NULL),('1432191776143314947',1,'string','traffic','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'1',NULL),('1432191776143314948',1,'string','dept','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'ç ”å‘éƒ¨é—¨',NULL),('1432191776143314949',1,'string','reimburse','1432191776130732032','1432191776130732032',NULL,NULL,NULL,NULL,'0',NULL),('1432191776273338368',1,'integer','nrOfInstances','1432191776147509248','1432191776130732032',NULL,NULL,NULL,3,'3',NULL),('1432191776273338369',1,'integer','nrOfCompletedInstances','1432191776147509248','1432191776130732032',NULL,NULL,NULL,0,'0',NULL),('1432191776273338370',1,'integer','nrOfActiveInstances','1432191776147509248','1432191776130732032',NULL,NULL,NULL,3,'3',NULL),('1432191776273338374',1,'integer','loopCounter','1432191776273338371','1432191776130732032',NULL,NULL,NULL,0,'0',NULL),('1432191776281726976',1,'string','usersForTask','1432191776273338371','1432191776130732032',NULL,NULL,NULL,NULL,'zhangsan',NULL),('1432191776281726977',1,'integer','loopCounter','1432191776273338372','1432191776130732032',NULL,NULL,NULL,1,'1',NULL),('1432191776281726978',1,'string','usersForTask','1432191776273338372','1432191776130732032',NULL,NULL,NULL,NULL,'lisi',NULL),('1432191776281726979',1,'integer','loopCounter','1432191776273338373','1432191776130732032',NULL,NULL,NULL,2,'2',NULL),('1432191776281726980',1,'string','usersForTask','1432191776273338373','1432191776130732032',NULL,NULL,NULL,NULL,'wangwu',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
