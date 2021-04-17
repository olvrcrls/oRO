INSERT INTO item_db_re VALUES(31024,"Immortal_Cursed_Knight_Card","Immortal Cursed Knight Card",6,20,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,"bonus bAtkRate,10; bonus5 bAutoSpell,2066,5,20,ATF_WEAPON,1;",NULL,NULL);

INSERT INTO item_db_re VALUES (31025,"Immortal_Wind_Ghost_Card","Immortal Wind Ghost Card",6,20,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,"bonus bMatkRate,10; bonus5 bAutoSpell,2450,5,20,ATF_MAGIC,1;",NULL,NULL);

INSERT INTO item_db_re VALUES (31026,"Immortal_Cursed_Knight_Card","Immortal Cursed Knight Card",6,20,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,"bonus5 bAutoSpellWhenHit,2443,5,35,ATF_WEAPON,0; bonus5 bAutoSpellWhenHit,2444,5,80,ATF_MAGIC,0; autobonus \"{ bonus bFlee,200; }\",30,10000,BF_WEAPON; autobonus \"{ bonus bSpeedRate,10; }\",25,10000,BF_MAGIC; }",NULL,NULL);


INSERT INTO item_db_re VALUES (28942,"Cursed_Knights_Shield","Cursed Knight's Shield",4,100,1,800,NULL,NULL,NULL,1,4294967295,63,2,32,NULL,NULL,1,NULL,"bonus bAtkRate,3; bonus bMatkRate,3; bonus bAspdRate,10; bonus2 bSubEle,Ele_All,7; autobonus2 \"{ bonus bSPGainValue,5; }\",50,5000,BF_NORMAL; autobonus \"{ bonus bHPGainValue,30; }\",50,5000,BF_NORMAL|BF_MAGIC; .@r = getrefine(); if(.@r >= 7) { bonus bAtk,10; bonus bMatk,10; } if(.@r >= 9) { bonus bAspd,1; } if(.@r >= 12) { bonus bDelayrate,-3; }",NULL,NULL);