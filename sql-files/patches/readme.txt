This is where we store up the SQL related patch for changing the following:
- Item description / price / name / script
- Skill Scripts


Format for saving a patch SQL script:
`{date_created}_{patch_name}.sql`


`20200920_update_itemid_4605'

UPDATE `jr_ragnarok`.`item_db_re` SET `unequip_script`='heal 0,-4444' WHERE  `id`=4605;