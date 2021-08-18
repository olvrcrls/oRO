ALTER TABLE `rank_woe` ADD `date` DATE DEFAULT (DATE_FORMAT(NOW(), '%Y-%m-%d'));
ALTER TABLE `rank_bg` ADD `date` DATE DEFAULT (DATE_FORMAT(NOW(), '%Y-%m-%d'))

