-- Disables the drop of GTB card
-- UPDATE `oro`.`mob_db_re` SET `DropCardid` = '4128', `DropCardper` = '1' WHERE (`ID` = '1086'); -- Uncomment to make it droppable again.
UPDATE `mob_db_re` SET `DropCardid` = '0', `DropCardper` = '0' WHERE (`ID` = '1086');