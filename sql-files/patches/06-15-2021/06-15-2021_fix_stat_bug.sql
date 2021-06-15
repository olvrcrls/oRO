-- Deletes all the saved builds from Build Manager.
DELETE FROM `char_reg_num` WHERE `key` LIKE 'STATS_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'STR_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'AGI_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'VIT_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'INT_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'DEX_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'LUK_%';
DELETE FROM `char_reg_str` WHERE `key` LIKE 'Slot_%';

-- Default Class update excluding doram
UPDATE `char` SET `str` = 1, `agi` = 1, `vit` = 1, `int` = 1, `dex` = 1, `luk` = 1, `status_point` = 3330
WHERE `base_level` = 175 AND class NOT IN (4239, 4240, 4218);


-- SE/SR/Rebel update excluding doram
UPDATE `char` SET `str` = 1, `agi` = 1, `vit` = 1, `int` = 1, `dex` = 1, `luk` = 1, `status_point` = 3278
WHERE `base_level` = 175 AND class IN (4239, 4240, 4215, 4211, 4212) AND class != 4218;