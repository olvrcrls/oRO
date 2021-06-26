-- This creates a table for storing daily wins on BG to track for dailies.
CREATE TABLE IF NOT EXISTS `bg_daily_wins`(
	`bg_daily_win_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`account_id` INT(10) UNSIGNED NOT NULL,
	`win` INT(5) UNSIGNED NOT NULL DEFAULT 0,
	`last_ip` varchar(25) NULL,
	`claimed` TINYINT(1) DEFAULT 0,
	`created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`updated_at` DATETIME NULL on update CURRENT_TIMESTAMP,
	PRIMARY KEY(`bg_daily_wind_id`)
);