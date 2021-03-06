ALTER TABLE `[#DB_PREFIX#]users` DROP `user_type`;
ALTER TABLE `[#DB_PREFIX#]users` DROP `user_status`;
ALTER TABLE `[#DB_PREFIX#]topic` DROP `add_uid`;
ALTER TABLE `[#DB_PREFIX#]users` DROP `edit_count`;
ALTER TABLE `[#DB_PREFIX#]users` DROP `topic_count`;
ALTER TABLE `[#DB_PREFIX#]users` DROP `ext_group_ids`;

INSERT INTO `[#DB_PREFIX#]system_setting` (`varname`, `value`) VALUES ('username_rule', 's:1:"1";');
INSERT INTO `[#DB_PREFIX#]system_setting` (`varname`, `value`) VALUES ('username_length_min', 's:1:"2";');
INSERT INTO `[#DB_PREFIX#]system_setting` (`varname`, `value`) VALUES ('username_length_max', 's:2:"14";');
INSERT INTO `[#DB_PREFIX#]system_setting` (`varname`, `value`) VALUES ('category_enable', 's:1:"Y";');

CREATE TABLE `[#DB_PREFIX#]nav_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `type_id` int(11) DEFAULT '0',
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`link`)
) ENGINE=[#DB_ENGINE#] DEFAULT CHARSET=utf8;

ALTER TABLE  `[#DB_PREFIX#]question` CHANGE  `popular_value`  `popular_value` DOUBLE NULL DEFAULT  '0';

INSERT INTO `[#DB_PREFIX#]system_setting` (`varname`, `value`) VALUES ('welcome_recommend_users', 's:0:"";');
INSERT INTO `[#DB_PREFIX#]system_setting` (`varname`, `value`) VALUES ('integral_unit', 's:6:"金币";');
INSERT INTO `[#DB_PREFIX#]system_setting` (`varname`, `value`) VALUES ('nav_menu_show_child', 's:1:"1";');
INSERT INTO `[#DB_PREFIX#]system_setting` (`varname`, `value`) VALUES ('anonymous_enable', 's:1:"Y";');

INSERT INTO  `[#DB_PREFIX#]nav_menu` (
 `title` ,
 `description` ,
 `type`,
 `type_id`
)
SELECT  `title` ,  `description` , (SELECT 'category') AS `type`, `id` FROM `[#DB_PREFIX#]category`;
