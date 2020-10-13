// Copyright (c) rAthena Dev Teams - Licensed under GNU GPL
// For more information, see LICENCE in the main folder

/**
 * Custom Script Commands
 * Place the body of custom script commands in this file.
 * Format:
 *	BUILDIN_FUNC(command_name)
 *	{
 *		<code>;
 *	}
 **/

//BUILDIN_FUNC(example)
//{
//	ShowInfo("buildin_example: It works!\n");
//	script_pushint(st,1);
//	return 0;
//}

BUILDIN_FUNC(countstorageitem) {
	TBL_PC* sd = NULL;
	int i, type, count = 0;
	struct item_data* item_data;
	struct s_storage* gstor;
	struct s_storage* stor;
	struct item tmp_it;
	type = script_getnum(st, 2);
	if (script_hasdata(st, 11))
		map_id2sd(script_getnum(st, 11));
	else
		script_rid2sd(sd);
	if (!sd) return SCRIPT_CMD_SUCCESS;
	if (sd != NULL && (item_data = itemdb_exists(script_getnum(st, 3))) != NULL) {
		tmp_it.nameid = item_data->nameid;
		tmp_it.identify = script_getnum(st, 4);
		tmp_it.refine = script_getnum(st, 5);
		tmp_it.attribute = script_getnum(st, 6);
		tmp_it.card[0] = script_getnum(st, 7);
		tmp_it.card[1] = script_getnum(st, 8);
		tmp_it.card[2] = script_getnum(st, 9);
		tmp_it.card[3] = script_getnum(st, 10);

		switch (type) {
		case 0:
			stor = &sd->storage;
			if (stor == NULL) {
				return SCRIPT_CMD_SUCCESS;
			}
			if (sd->state.storage_flag) {
				if (sd->state.storage_flag == 1) {
					sd->state.storage_flag = 0;
					storage_storageclose(sd);
				}
				else {
					sd->state.storage_flag = 0;
					storage_guild_storageclose(sd);
				}
			}
			sd->state.storage_flag = 1;
			for (i = 0; i < MAX_STORAGE; i++) {
				if ((&stor->u.items_storage[i] != NULL)
					&& stor->u.items_storage[i].amount > 0
					&& compare_item(&stor->u.items_storage[i], &tmp_it, 1))
					count += stor->u.items_storage[i].amount;
			}
			sd->state.storage_flag = 0;
			storage_storageclose(sd);
			script_pushint(st, count);
			break;
		case 1:
			if (sd->status.guild_id && (gstor = guild2storage2(sd->status.guild_id))) {
				for (i = 0; i < MAX_GUILD_STORAGE; i++) {
					if ((&gstor->u.items_storage[i] != NULL)
						&& gstor->u.items_storage[i].amount > 0
						&& compare_item(&gstor->u.items_storage[i], &tmp_it, 1)
						)
						count += gstor->u.items_storage[i].amount;
				}
				script_pushint(st, count);
			}
			break;
		default:
			ShowError("Invalid type specified in countstorageitem");
			script_pushint(st, -1);
			return SCRIPT_CMD_FAILURE;
		}
	}
	return SCRIPT_CMD_SUCCESS;
}
