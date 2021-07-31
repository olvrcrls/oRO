UPDATE `item_db_re` SET `weight` = '10' WHERE `item_db_re`.`id` = 13282;
UPDATE `item_db_re` SET `weight` = '50' WHERE `item_db_re`.`id` = 12436;

UPDATE `item_db_re` SET `script` = '.@r = getrefine();\r\nbonus bBaseAtk,15*(.@r/2);\r\n if(.@r >= 7) bonus bLongAtkRate,7;\r\n if(.@r >= 9) { bonus bAtkRate,5;bonus bAspd,1; }\r\n if(.@r >= 11) { bonus bLongAtkRate,7; bonus bFixedCast,-(min(500,100*(.@r-10)));}\r\n.@r = getrefine()-10; if(.@r >= 0) bonus bFixedCast,-(min(.@r * 100, 500));' WHERE `item_db_re`.`id` = 19296;