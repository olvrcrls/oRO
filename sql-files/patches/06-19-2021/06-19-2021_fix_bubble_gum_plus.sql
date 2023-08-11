-- Update bubble gum plus script where it should give 100% boost of item drop rate.
UPDATE `item_db_re` SET `script` = 'sc_start SC_ITEMBOOST,3600000,200;' WHERE (`id` = '12562');