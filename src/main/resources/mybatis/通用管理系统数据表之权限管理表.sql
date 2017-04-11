/*Navicat MySQL Data TransferSource Server         : 本地Source Server Version : 50624Source Host           : localhost:3306Source Database       : management_systemTarget Server Type    : MYSQLTarget Server Version : 50624File Encoding         : 65001Date: 2017-04-11 09:14:42*/SET FOREIGN_KEY_CHECKS=0;-- ------------------------------ Table structure for sys_group-- ----------------------------DROP TABLE IF EXISTS `sys_group`;CREATE TABLE `sys_group` (  `GROUP_ID` bigint(20) unsigned NOT NULL COMMENT '组ID',  `GROUP_NAME` varchar(32) NOT NULL COMMENT '组名',  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '组描述',  `PARENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT '父组ID',  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',  `CREATOR` varchar(32) DEFAULT NULL COMMENT '创建人',  `MODIFY_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',  `MODIFIER` varchar(32) DEFAULT NULL COMMENT '修改人',  PRIMARY KEY (`GROUP_ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组表';-- ------------------------------ Table structure for sys_group_menu-- ----------------------------DROP TABLE IF EXISTS `sys_group_menu`;CREATE TABLE `sys_group_menu` (  `GROUP_MENU_ID` bigint(20) unsigned NOT NULL COMMENT '菜单组关系ID',  `GROUP_ID` bigint(20) unsigned NOT NULL COMMENT '组ID',  `MENU_ID` bigint(20) unsigned NOT NULL COMMENT '菜单ID',  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',  `CREATOR` varchar(32) DEFAULT NULL COMMENT '创建人',  `MODIFY_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',  `MODIFIER` varchar(32) DEFAULT NULL COMMENT '修改人',  PRIMARY KEY (`GROUP_MENU_ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单与组的关联表';-- ------------------------------ Table structure for sys_menu-- ----------------------------DROP TABLE IF EXISTS `sys_menu`;CREATE TABLE `sys_menu` (  `MENU_ID` bigint(20) unsigned NOT NULL COMMENT '菜单ID',  `MENU_NAME` varchar(32) NOT NULL COMMENT '菜单名称',  `MENU_URL` varchar(255) DEFAULT NULL COMMENT '菜单URL',  `PARENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT '父菜单ID',  `MENU_ICON` varchar(32) DEFAULT NULL COMMENT '菜单图标名',  `MENU_TYPE` varchar(16) DEFAULT NULL COMMENT '菜单类型{1系统、2业务}',  `MENU_ORDER` int(10) unsigned DEFAULT '0' COMMENT '排序',  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',  `CREATOR` varchar(32) DEFAULT NULL COMMENT '创建人',  `MODIFY_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',  `MODIFIER` varchar(32) DEFAULT NULL COMMENT '修改人',  PRIMARY KEY (`MENU_ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';-- ------------------------------ Table structure for sys_permission-- ----------------------------DROP TABLE IF EXISTS `sys_permission`;CREATE TABLE `sys_permission` (  `PERMISSION_ID` bigint(20) unsigned NOT NULL COMMENT '权限ID',  `PERMISSION_NAME` varchar(32) NOT NULL COMMENT '权限名',  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '权限描述',  `ADD_RIGHTS` tinyint(1) DEFAULT '1' COMMENT '添加权限:1表示能，0表示不能',  `ADD_TITLE` varchar(32) DEFAULT NULL COMMENT 'ADD标题',  `DELETE_RIGHTS` tinyint(1) DEFAULT '1' COMMENT '删除权限:1表示能，0表示不能',  `DELETE_TITLE` varchar(32) DEFAULT NULL COMMENT 'DELETE标题',  `EDIT_RIGHTS` tinyint(1) DEFAULT '1' COMMENT '编辑权限:1表示能，0表示不能',  `EDIT_TITLE` varchar(32) DEFAULT NULL COMMENT 'EDIT标题',  `VIEW_RIGHTS` tinyint(1) DEFAULT '1' COMMENT '查看详细权限:1表示能，0表示不能',  `VIEW_TITLE` varchar(32) DEFAULT NULL COMMENT 'VIEW标题',  `IMPORT_RIGHTS` tinyint(1) DEFAULT '1' COMMENT '导入权限:1表示能，0表示不能',  `IMPORT_TITLE` varchar(32) DEFAULT NULL COMMENT 'IMPORT标题',  `EXPORT_RIGHTS` tinyint(1) DEFAULT '1' COMMENT '导出权限:1表示能，0表示不能',  `EXPORT_TITLE` varchar(32) DEFAULT NULL COMMENT 'EXPORT标题',  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',  `CREATOR` varchar(32) DEFAULT NULL COMMENT '创建人',  `MODIFY_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',  `MODIFIER` varchar(32) DEFAULT NULL COMMENT '修改人',  PRIMARY KEY (`PERMISSION_ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限点许可表';-- ------------------------------ Table structure for sys_permission_menu-- ----------------------------DROP TABLE IF EXISTS `sys_permission_menu`;CREATE TABLE `sys_permission_menu` (  `PERMISSION_MENU_ID` bigint(20) unsigned NOT NULL COMMENT '权限菜单关系ID',  `PERMISSION_ID` bigint(20) unsigned NOT NULL COMMENT '权限ID',  `MENU_ID` bigint(20) unsigned NOT NULL COMMENT '菜单ID',  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',  `CREATOR` varchar(32) DEFAULT NULL COMMENT '创建人',  `MODIFY_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',  `MODIFIER` varchar(32) DEFAULT NULL COMMENT '修改人',  PRIMARY KEY (`PERMISSION_MENU_ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限菜单关联表';-- ------------------------------ Table structure for sys_role-- ----------------------------DROP TABLE IF EXISTS `sys_role`;CREATE TABLE `sys_role` (  `ROLE_ID` bigint(20) unsigned NOT NULL COMMENT '角色ID',  `ROLE_NAME` varchar(32) NOT NULL COMMENT '角色名',  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '角色描述',  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',  `CREATOR` varchar(32) DEFAULT NULL COMMENT '创建人',  `MODIFY_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',  `MODIFIER` varchar(32) DEFAULT NULL COMMENT '修改人',  PRIMARY KEY (`ROLE_ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';-- ------------------------------ Table structure for sys_role_group-- ----------------------------DROP TABLE IF EXISTS `sys_role_group`;CREATE TABLE `sys_role_group` (  `ROLE_GROUP_ID` bigint(20) unsigned NOT NULL COMMENT '角色组关系ID',  `ROLE_ID` bigint(20) unsigned NOT NULL COMMENT '角色ID',  `GROUP_ID` bigint(20) unsigned NOT NULL COMMENT '组ID',  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',  `CREATOR` varchar(32) DEFAULT NULL COMMENT '创建人',  `MODIFY_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',  `MODIFIER` varchar(32) DEFAULT NULL COMMENT '修改人',  PRIMARY KEY (`ROLE_GROUP_ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与组的关联表';-- ------------------------------ Table structure for sys_role_permission-- ----------------------------DROP TABLE IF EXISTS `sys_role_permission`;CREATE TABLE `sys_role_permission` (  `ROLE_PERMISSION_ID` bigint(20) unsigned NOT NULL COMMENT '权限ID',  `ROLE_ID` bigint(20) unsigned NOT NULL COMMENT '角色ID',  `PERMISSION_ID` bigint(20) unsigned NOT NULL COMMENT '权限ID',  `ADD_RIGHTS` tinyint(1) DEFAULT '0' COMMENT '添加权限:1表示能，0表示不能',  `DELETE_RIGHTS` tinyint(1) DEFAULT '0' COMMENT '删除权限:1表示能，0表示不能',  `EDIT_RIGHTS` tinyint(1) DEFAULT '0' COMMENT '编辑权限:1表示能，0表示不能',  `VIEW_RIGHTS` tinyint(1) DEFAULT '0' COMMENT '查看详细权限:1表示能，0表示不能',  `IMPORT_RIGHTS` tinyint(1) DEFAULT '0' COMMENT '导入权限:1表示能，0表示不能',  `EXPORT_RIGHTS` tinyint(1) DEFAULT '0' COMMENT '导出权限:1表示能，0表示不能',  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',  `CREATOR` varchar(32) DEFAULT NULL COMMENT '创建人',  `MODIFY_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',  `MODIFIER` varchar(32) DEFAULT NULL COMMENT '修改人',  PRIMARY KEY (`ROLE_PERMISSION_ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表';-- ------------------------------ Table structure for sys_user-- ----------------------------DROP TABLE IF EXISTS `sys_user`;CREATE TABLE `sys_user` (  `USER_ID` bigint(20) unsigned NOT NULL COMMENT '用户ID',  `USER_NAME` varchar(16) NOT NULL COMMENT '账户名',  `PASSWORD` varchar(32) NOT NULL COMMENT '账户密码',  `IS_DISABLED` tinyint(1) DEFAULT '0' COMMENT '是否禁用',  `PARENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT '父级账号ID',  `TRUE_NAME` varchar(20) NOT NULL COMMENT '真实姓名',  `MOBILE` varchar(16) DEFAULT NULL COMMENT '手机号',  `EMAIL` varchar(64) DEFAULT NULL COMMENT '电子邮箱',  `SKIN` varchar(20) DEFAULT 'DEFAULT' COMMENT '皮肤',  `LAST_LOGIN_TIME` timestamp NULL DEFAULT NULL COMMENT '上次登录时间',  `LOGIN_IP` varchar(40) DEFAULT NULL COMMENT '登录IP（支持IPV4、IPV6）',  `LOGIN_COUNT` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',  `CREATOR` varchar(32) DEFAULT NULL COMMENT '创建人',  `MODIFY_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',  `MODIFIER` varchar(32) DEFAULT NULL COMMENT '修改人',  PRIMARY KEY (`USER_ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户表';-- ------------------------------ Table structure for sys_user_role-- ----------------------------DROP TABLE IF EXISTS `sys_user_role`;CREATE TABLE `sys_user_role` (  `USER_ROLE_ID` bigint(20) unsigned NOT NULL COMMENT '用户角色关系ID',  `ROLE_ID` bigint(20) unsigned NOT NULL COMMENT '角色ID',  `USER_ID` bigint(20) unsigned NOT NULL COMMENT '权限ID',  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',  `CREATOR` varchar(32) DEFAULT NULL COMMENT '创建人',  `MODIFY_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',  `MODIFIER` varchar(32) DEFAULT NULL COMMENT '修改人',  PRIMARY KEY (`USER_ROLE_ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关联表';