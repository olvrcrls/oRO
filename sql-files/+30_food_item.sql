-- This will insert a  instant +30 food that lasts for an hour.
DELETE FROM `item_db_re` WHERE id = 14646 AND id = 14647;

-- Normal food +30 stats, MATK, ATK, with 100 weight, 500k zeny cost
INSERT INTO `item_db_re`(id, name_english, name_japanese, type, equip_upper, price_buy, price_sell, weight, equip_jobs, equip_genders, script)
VALUES (14646, 'Nutriboost', 'Nutriboost', 2, 63, 500000, 0, 1000, 0xFFFFFFFF, 2, 'sc_start SC_ATKPOTION, 1800000, 30; sc_start SC_MATKPOTION, 1800000, 30; sc_start SC_SIROMA_ICE_TEA, 1800000, 20; sc_start SC_PUTTI_TAILS_NOODLES, 1800000, 20; sc_start SC_COCKTAIL_WARG_BLOOD, 1800000, 20; sc_start SC_MINOR_BBQ, 1800000, 20; sc_start SC_SAVAGE_STEAK, 1800000, 20; sc_start SC_DROCERA_HERB_STEAMED, 1800000, 20; sc_start SC_FOOD_STR_CASH, 1800000, 10; sc_start SC_FOOD_AGI_CASH, 1800000, 10; sc_start SC_FOOD_INT_CASH, 1800000, 10; sc_start SC_FOOD_DEX_CASH, 1800000, 10; sc_start SC_FOOD_LUK_CASH, 1800000, 10; sc_start SC_FOOD_VIT_CASH, 1800000, 10;');


-- POD item - 1hour duration, 1 weight, + guyak pudding effect.
INSERT INTO `item_db_re`(id, name_english, name_japanese, type, equip_upper, price_buy, price_sell, weight, equip_jobs, equip_genders, script)
VALUES (14647, 'Nutriboost PLUS', 'Nutriboost PLUS', 2, 63, 10, 0, 1, 0xFFFFFFFF, 2, 'sc_start SC_ATKPOTION, 3600000, 30; sc_start SC_MATKPOTION, 3600000, 30; sc_start SC_SIROMA_ICE_TEA, 3600000, 20; sc_start SC_PUTTI_TAILS_NOODLES, 3600000, 20; sc_start SC_COCKTAIL_WARG_BLOOD, 3600000, 20; sc_start SC_MINOR_BBQ, 3600000, 20; sc_start SC_SAVAGE_STEAK, 3600000, 20; sc_start SC_DROCERA_HERB_STEAMED, 3600000, 20; sc_start SC_FOOD_STR_CASH, 3600000, 10; sc_start SC_FOOD_AGI_CASH, 3600000, 10; sc_start SC_FOOD_INT_CASH, 3600000, 10; sc_start SC_FOOD_DEX_CASH, 3600000, 10; sc_start SC_FOOD_LUK_CASH, 3600000, 10; sc_start SC_FOOD_VIT_CASH, 3600000, 10; sc_start SC_SPEEDUP1,3600000,50;');


-- Lite foods / half durations

-- Normal food +30 stats, MATK, ATK, with 100 weight, 100k zeny cost
INSERT INTO `item_db_re`(id, name_english, name_japanese, type, equip_upper, price_buy, price_sell, weight, equip_jobs, equip_genders, script)
VALUES (14650, 'Budget Nutriboost', 'Budget Nutriboost', 2, 63, 100000, 0, 1000, 0xFFFFFFFF, 2, 'sc_start SC_ATKPOTION, 900000, 30; sc_start SC_MATKPOTION, 900000, 30; sc_start SC_SIROMA_ICE_TEA, 900000, 20; sc_start SC_PUTTI_TAILS_NOODLES, 900000, 20; sc_start SC_COCKTAIL_WARG_BLOOD, 900000, 20; sc_start SC_MINOR_BBQ, 900000, 20; sc_start SC_SAVAGE_STEAK, 900000, 20; sc_start SC_DROCERA_HERB_STEAMED, 900000, 20; sc_start SC_FOOD_STR_CASH, 900000, 10; sc_start SC_FOOD_AGI_CASH, 900000, 10; sc_start SC_FOOD_INT_CASH, 900000, 10; sc_start SC_FOOD_DEX_CASH, 900000, 10; sc_start SC_FOOD_LUK_CASH, 900000, 10; sc_start SC_FOOD_VIT_CASH, 900000, 10;');


-- POD item - 30 mins duration, 1 weight, + guyak pudding effect.
INSERT INTO `item_db_re`(id, name_english, name_japanese, type, equip_upper, price_buy, price_sell, weight, equip_jobs, equip_genders, script)
VALUES (14651, 'Nutriboost LITE', 'Nutriboost LITE', 2, 63, 10, 0, 1, 0xFFFFFFFF, 2, 'sc_start SC_ATKPOTION, 1800000, 30; sc_start SC_MATKPOTION, 1800000, 30; sc_start SC_SIROMA_ICE_TEA, 1800000, 20; sc_start SC_PUTTI_TAILS_NOODLES, 1800000, 20; sc_start SC_COCKTAIL_WARG_BLOOD, 1800000, 20; sc_start SC_MINOR_BBQ, 1800000, 20; sc_start SC_SAVAGE_STEAK, 1800000, 20; sc_start SC_DROCERA_HERB_STEAMED, 1800000, 20; sc_start SC_FOOD_STR_CASH, 1800000, 10; sc_start SC_FOOD_AGI_CASH, 1800000, 10; sc_start SC_FOOD_INT_CASH, 1800000, 10; sc_start SC_FOOD_DEX_CASH, 1800000, 10; sc_start SC_FOOD_LUK_CASH, 1800000, 10; sc_start SC_FOOD_VIT_CASH, 1800000, 10; sc_start SC_SPEEDUP1,1800000,50;');