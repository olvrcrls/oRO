INSERT INTO `item_db_re` (`id`, `name_english`, `name_japanese`, `type`, `price_buy`, `price_sell`, `weight`, `defence`, `slots`, `equip_jobs`, `equip_upper`, `equip_genders`, `equip_locations`, `equip_level`, `refineable`, `script`) VALUES ('18794', 'Plain_Black_Mage_Hat', 'Ordinary Black Magician Hat', '4', '100', '0', '20', '15', '1', '4', '63', '2', '256', '100', '1', 'bonus2 bMagicAddClass,Class_All,5; bonus2 bIgnoreMdefRaceRate,RC_ALL,10; bonus2  bSkillAtk,"WL_CHAINLIGHTNING",5; bonus2  bSkillAtk,"WL_CHAINLIGHTNING",10; bonus2 bSkillAtk,"WL_CRIMSONROCK",5; bonus2 bSkillAtk,"WL_EARTHSTRAIN",5; bonus2 bSkillAtk,"WL_JACKFROST",5; .@r = getrefine(); if(.@r < 8) { bonus2 bIgnoreMdefRaceRate,RC_ALL,getrefine() * 4; } if(.@r >= 8) { bonus2 bIgnoreMdefRaceRate,RC_ALL,30; } if(.@r >= 9) { bonus2  bSkillAtk,"WL_CHAINLIGHTNING",10; bonus2 bSkillAtk,"WL_CRIMSONROCK",10; bonus2 bSkillAtk,"WL_EARTHSTRAIN",10; bonus2 bSkillAtk,"WL_JACKFROST",10; }');


-- Correct the item above
UPDATE `item_db_re` SET `price_buy` = '20', `price_sell` = NULL, `weight` = '200', `equip_jobs` = '512', `equip_upper` = '56', `view` = '911', `script` = 'bonus2 bIgnoreMdefRaceRate,RC_ALL,10; bonus2  bSkillAtk,\"WL_CHAINLIGHTNING\",5; bonus2  bSkillAtk,\"WL_CHAINLIGHTNING\",10; bonus2 bSkillAtk,\"WL_CRIMSONROCK\",5; bonus2 bSkillAtk,\"WL_EARTHSTRAIN\",5; bonus2 bSkillAtk,\"WL_JACKFROST\",5; .@r = getrefine(); if(.@r < 8) { bonus2 bIgnoreMdefRaceRate,RC_ALL,getrefine() * 4; } if(.@r >= 8) { bonus2 bIgnoreMdefRaceRate,RC_ALL,30; } if(.@r >= 7) { bonus2 bMagicAddClass,Class_All,5; } if (.@r >= 9) { bonus2  bSkillAtk,\"WL_CHAINLIGHTNING\",10; bonus2 bSkillAtk,\"WL_CRIMSONROCK\",10; bonus2 bSkillAtk,\"WL_EARTHSTRAIN\",10; bonus2 bSkillAtk,\"WL_JACKFROST\",10; } ' WHERE (`id` = '18794');



-- OBMH script
-- bonus2 bMagicAddClass,Class_All,5; bonus2 bIgnoreMdefRaceRate,RC_ALL,10; bonus2  bSkillAtk,"WL_CHAINLIGHTNING",5; bonus2  bSkillAtk,"WL_CHAINLIGHTNING",10; bonus2 bSkillAtk,"WL_CRIMSONROCK",5; bonus2 bSkillAtk,"WL_EARTHSTRAIN",5; bonus2 bSkillAtk,"WL_JACKFROST",5; .@r = getrefine(); if(.@r < 8) { bonus2 bIgnoreMdefRaceRate,RC_ALL,getrefine() * 4; } if(.@r >= 8) { bonus2 bIgnoreMdefRaceRate,RC_ALL,30; } if(.@r >= 9) { bonus2  bSkillAtk,"WL_CHAINLIGHTNING",10; bonus2 bSkillAtk,"WL_CRIMSONROCK",10; bonus2 bSkillAtk,"WL_EARTHSTRAIN",10; bonus2 bSkillAtk,"WL_JACKFROST",10; }

-- Nightmare verit's script
-- bonus2 bMagicAddClass,Class_All,5; if(getrefine()>6) { bonus2 bMagicAddClass,Class_All,3; } if(getrefine()>8) { bonus2 bMagicAddClass,Class_All,2; }

-- VAW script
-- bonus bUnbreakableWeapon; bonus2 bMagicAddRace,RC_Player,25; bonus2 bIgnoreMdefRaceRate,RC_Player,25; .@r = getrefine(); if(.@r>5) { bonus2 bMagicAddRace,RC_Player,15; } if(.@r>8) { bonus bVariableCastrate,-50; bonus bFixedCast,-200; }

-- Imp Card improving Firebolt dmg
-- bonus2 bSkillAtk,"MG_FIREBOLT",25; bonus2 bVariableCastrate,"MG_FIREBOLT",-25;