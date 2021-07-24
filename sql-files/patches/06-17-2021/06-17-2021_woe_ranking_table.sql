-- These tables are used at kd_stat_points.txt/ranking.txt/agit_main.txt scripts

DROP TABLE IF EXISTS `woe_ranking`;

CREATE TABLE IF NOT EXISTS `woe_ranking`(
	`char_id` INT(10) UNSIGNED NOT NULL,
	`name` VARCHAR(150) NOT NULL,
	`kill` INT(10) UNSIGNED NOT NULL,
	`death` INT(10) UNSIGNED NOT NULL,
	`emperium_break` INT(10) UNSIGNED NOT NULL,
	`created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` DATETIME NULL on update CURRENT_TIMESTAMP,
	PRIMARY KEY(`char_id`)
);

DROP TABLE IF EXISTS `guild_ranking`;
CREATE TABLE IF NOT EXISTS `guild_ranking`(
	`guild_id` INT(10) UNSIGNED NOT NULL,
	`name`	VARCHAR(150) NOT NULL,
	`guild_leader_id` INT(10) UNSIGNED NULL,
	`castles_owned` INT(10) UNSIGNED DEFAULT 0 COMMENT 'This will increment every time the guild wins a castle every woe.',
	`created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` DATETIME NULL on update CURRENT_TIMESTAMP,
	PRIMARY KEY(`guild_id`)
);

DROP TABLE IF EXISTS `guild_castle_histories`;
CREATE TABLE IF NOT EXISTS `guild_castle_histories`(
	`guild_castle_history_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`guild_id` INT(10) UNSIGNED NOT NULL,
	`name` VARCHAR(150) NOT NULL,
	`guild_leader_id` INT(10) UNSIGNED NULL,
	`castle` VARCHAR(150) NOT NULL,
	`created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` DATETIME NULL on update CURRENT_TIMESTAMP,
	PRIMARY KEY(`guild_castle_history_id`)
);
