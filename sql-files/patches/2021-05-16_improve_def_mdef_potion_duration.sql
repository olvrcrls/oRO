-- Improved the duration from 3 minutes to 60 minutes, Default: 180000

UPDATE `item_db_re` SET `script` = 'specialeffect2 EF_SPELLBREAKER; sc_start SC_MDEF_RATE,3600000,3;' WHERE (`id` = '14544');


UPDATE `item_db_re` SET `script` = 'specialeffect2 EF_GUARD; sc_start SC_DEF_RATE,3600000,3;' WHERE (`id` = '14542');
