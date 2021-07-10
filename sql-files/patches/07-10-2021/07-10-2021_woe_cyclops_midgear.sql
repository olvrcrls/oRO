-- Creates a new item named as Battle Visor

-- Battleworn Cyclops Eye
-- non-slotted and slotted one that provides 5% demi-human resistance.

INSERT INTO`item_db_re` (`id`, `name_english`, `name_japanese`, `type`, `price_buy`, `weight`, `slots`, `equip_jobs`, `equip_upper`, `equip_genders`, `equip_locations`, `equip_level`, `refineable`, `script`) VALUES ('14658', 'Battleworn_Cyclops_Eye', 'Battleworn Cyclop\'s Eye', '4', '20', '100', '0', '4294967294', '63', '2', '512', '0', '0', 'bonus2 bSubRace,RC_DemiHuman,5; bonus2 bSubRace,RC_Player,5;');


INSERT INTO`item_db_re` (`id`, `name_english`, `name_japanese`, `type`, `price_buy`, `weight`, `slots`, `equip_jobs`, `equip_upper`, `equip_genders`, `equip_locations`, `equip_level`, `refineable`, `script`) VALUES ('14659', 'Battleworn_Cyclops_Eye_Refined', 'Battleworn Cyclops Eye [Refined]', '4', '20', '100', '1', '4294967294', '63', '2', '512', '0', '0', 'bonus2 bSubRace,RC_DemiHuman,5; bonus2 bSubRace,RC_Player,5;');

-- Add Defense on the Refined Battleworn Cyclop's Eye
UPDATE `item_db_re` SET `defence` = '20' WHERE (`id` = '14659');