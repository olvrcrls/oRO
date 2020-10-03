-- This will make Dragon Tail Missile Unequipabble.
-- Original values are equip_upper = 63 and equip_locations = 32768
UPDATE `item_db_re` SET equip_upper = null, equip_locations = null WHERE name_english = 'Dragon_Tail_Missile';