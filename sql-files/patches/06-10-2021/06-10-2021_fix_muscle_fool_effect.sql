UPDATE `item_db_re` SET `unequip_script` = NULL WHERE (`id` = '4878');
UPDATE `item_db_re` SET `script` = 'autobonus2 \"{ bonus bVit,200; bonus2 bAddRace,RC_All,-50; bonus bMatkRate,-50; }\",50,5000,BF_WEAPON|BF_MAGIC,\"{ specialeffect2 EF_GUARD3; }\";' WHERE (`id` = '4878');
