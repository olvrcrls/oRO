bonus bAtkRate,3; bonus bMatkRate,3; bonus bAspdRate,10; bonus2 bSubEle,Ele_All,7; autobonus2 "{ bonus bSPGainValue,5; }",50,5000,BF_NORMAL; autobonus "{ bonus bHPGainValue,30; }",50,5000,BF_NORMAL|BF_MAGIC; .@r = getrefine(); if(.@r >= 7) { bonus bAtk2,10; bonus bMatk,10; } if(.@r >= 9) { bonus bAspd,1; } if(.@r >= 12) { bonus bDelayrate,-3; }

UPDATE `oro`.`item_db_re` SET `script` = 'bonus bAtkRate,3; bonus bMatkRate,3; bonus bAspdRate,10; bonus2 bSubEle,Ele_All,7; autobonus2 \"{ bonus bSPGainValue,5; }\",50,5000,BF_NORMAL; autobonus \"{ bonus bHPGainValue,30; }\",50,5000,BF_NORMAL|BF_MAGIC; .@r = getrefine(); if(.@r >= 7) { bonus bAtk,10; bonus bMatk,10; } if(.@r >= 9) { bonus bAspd,1; } if(.@r >= 12) { bonus bDelayrate,-3; }' WHERE (`id` = '28942');