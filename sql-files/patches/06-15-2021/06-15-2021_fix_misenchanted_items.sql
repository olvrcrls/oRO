SELECT * FROM `inventory` WHERE nameid IN (1546,1577,1640,1281,1826,1187,1310,1641,2002,1827,13416,13177,13042,13179,1927,13418,1743,1282,1486,1981,13417,13176,13178,13307,1426,1382,1576,13037,1738,1923);

-- Clears the enchantments of Glorious weapons that are stored in the inventory.
UPDATE `inventory` SET `option_id0` = 0, `option_val0` = 0, `option_id1` = 0, `option_val1` = 0, `option_id2` = 0, `option_val2` = 0, `option_val3` = 0, `option_id3` = 0, `option_val4` = 0, `option_id4` = 0
WHERE nameid IN (1546,1577,1640,1281,1826,1187,1310,1641,2002,1827,13416,13177,13042,13179,1927,13418,1743,1282,1486,1981,13417,13176,13178,13307,1426,1382,1576,13037,1738,1923);

-- Clears the enchantments of Glorious weapons that are stored in the cart.
UPDATE `cart_inventory` SET `option_id0` = 0, `option_val0` = 0, `option_id1` = 0, `option_val1` = 0, `option_id2` = 0, `option_val2` = 0, `option_val3` = 0, `option_id3` = 0, `option_val4` = 0, `option_id4` = 0
WHERE nameid IN (1546,1577,1640,1281,1826,1187,1310,1641,2002,1827,13416,13177,13042,13179,1927,13418,1743,1282,1486,1981,13417,13176,13178,13307,1426,1382,1576,13037,1738,1923);

-- Clears the enchantments of Glorious weapons that are stored in the storage.
UPDATE `storage` SET `option_id0` = 0, `option_val0` = 0, `option_id1` = 0, `option_val1` = 0, `option_id2` = 0, `option_val2` = 0, `option_val3` = 0, `option_id3` = 0, `option_val4` = 0, `option_id4` = 0
WHERE nameid IN (1546,1577,1640,1281,1826,1187,1310,1641,2002,1827,13416,13177,13042,13179,1927,13418,1743,1282,1486,1981,13417,13176,13178,13307,1426,1382,1576,13037,1738,1923);

-- Clears the enchantments of Glorious weapons that are stored in the guild storage.
UPDATE `guild_storage` SET `option_id0` = 0, `option_val0` = 0, `option_id1` = 0, `option_val1` = 0, `option_id2` = 0, `option_val2` = 0, `option_val3` = 0, `option_id3` = 0, `option_val4` = 0, `option_id4` = 0
WHERE nameid IN (1546,1577,1640,1281,1826,1187,1310,1641,2002,1827,13416,13177,13042,13179,1927,13418,1743,1282,1486,1981,13417,13176,13178,13307,1426,1382,1576,13037,1738,1923);
