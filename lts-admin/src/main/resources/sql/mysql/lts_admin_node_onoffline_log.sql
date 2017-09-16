CREATE TABLE
IF NOT EXISTS `lts_admin_node_onoffline_log` (
	`id` INT (11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`log_time` TIMESTAMP NULL DEFAULT NULL,
	`event` VARCHAR (32) DEFAULT NULL,
	`node_type` VARCHAR (16) DEFAULT NULL,
	`cluster_name` VARCHAR (64) DEFAULT NULL,
	`ip` VARCHAR (16) DEFAULT NULL,
	`port` INT (11) DEFAULT NULL,
	`host_name` VARCHAR (64) DEFAULT NULL,
	`group` VARCHAR (64) DEFAULT NULL,
	`create_time` BIGINT (20) DEFAULT NULL,
	`threads` INT (11) DEFAULT NULL,
	`identity` VARCHAR (64) DEFAULT NULL,
	`http_cmd_port` INT (11) DEFAULT NULL,
	PRIMARY KEY (`id`),
	KEY `idx_log_time` (`log_time`),
	KEY `idx_event` (`event`),
	KEY `idx_identity` (`identity`),
	KEY `idx_group` (`group`)
)