This is where we store up the SQL related patch for changing the following:
- Item description / price / name / script
- Skill Scripts


Format for saving a patch SQL script:
`{date_created}_{patch_name}.sql`


`20200920_update_itemid_4605'

UPDATE `jr_ragnarok`.`item_db_re` SET `unequip_script`='heal 0,-4444' WHERE  `id`=4605;

`20200924_update_itemid_4605_12279`

UPDATE `jr_ragnarok`.`item_db_re` SET `script`='specialeffect2 EF_UNDEADBODY; sc_start4 SC_ARMOR_RESIST,300000,20,20,20,20;' WHERE  `id`=12279;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0.000 sec. */
UPDATE `jr_ragnarok`.`item_db_re` SET `unequip_script`='heal -4444,0;' WHERE  `id`=4605;