-- Deletes all the saved builds from Build Manager.
DELETE FROM `char_reg_num` WHERE `key` LIKE 'STATS_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'STR_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'AGI_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'VIT_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'INT_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'DEX_%';
DELETE FROM `char_reg_num` WHERE `key` LIKE 'LUK_%';