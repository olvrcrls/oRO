-- Updates the happy balloon drop rate where it should be 10%
UPDATE `item_db_re` SET `script` = 'bonus2 bDropAddRace,RC_All,10; bonus2 bExpAddRace,RC_All,5;' WHERE (`id` = '19095');