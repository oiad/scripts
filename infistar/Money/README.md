# Install:

On line 260 or so of `AT.sqf` find this code block:
```sqf
_fnc = "-Misc";
	if(!isNil 'adminshowmiscmenu')then{_fnc = "+Misc";};
	adminadd = adminadd + [_fnc,{if(!isNil "adminshowmiscmenu")then{adminshowmiscmenu = nil;}else{adminshowmiscmenu = true;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
	if(isNil "adminshowmiscmenu")then
	{
		adminadd = adminadd + ["  Lower Terrain",admin_low_terrain,"1","0","0","0",[]];
		adminadd = adminadd + ["  VehicleBoost",admin_vehicleboost,"1","0","0","0",[]];
		adminadd = adminadd + ["  No Zed Aggro",adminAntiAggro,"1","0","0","0",[]];
		adminadd = adminadd + ["  ZedShield",adminZedshld,"1","0","0","0",[]];
		adminadd = adminadd + ["  Infinite Ammo & No Recoil",adminammo_recoil,"1","0","0","0",[]];
		adminadd = adminadd + ["  FastFire",admin_FastFire,"1","0","0","0",[]];
		adminadd = adminadd + ["  God",admingod,"1","0","0","0",[]];
		adminadd = adminadd + ["  Car God",adminCarGod,"1","0","0","0",[]];
		adminadd = adminadd + ["  Fly",fnc_admin_fly,"1","0","0","0",[]];
		adminadd = adminadd + ["  Stealth / Invisible",admininvis,"1","0","0","0",[]];
		adminadd = adminadd + ["  Admin DebugMonitor",admin_debug,"1","0","0","0",[]];
		if(MOD_EPOCH)then
		{
			adminadd = adminadd + ["  No Build Limit",adminNoBuildLimit,"1","0","0","0",[]];
			adminadd = adminadd + ["  No OverBurdened",adminob,"1","0","0","0",[]];
			adminadd = adminadd + ["  1 Step Building",admin1build,"1","0","0","0",[]];
			adminadd = adminadd + ["  No PlotPole",admin_noplot,"1","0","0","0",[]];
			adminadd = adminadd + ["  EpochDeathBoardLoad",adminPlayerDeaths,"0","0","0","0",[]];
			adminadd = adminadd + ["  Remove Plot-Poles (30m)",admin_removePlotPoles,"0","0","0","0",[]];
			adminadd = adminadd + ["  Remove Nets (30m)",admin_removeNets,"0","0","0","0",[]];
		};
		adminadd = adminadd + ["  Copy Worldspace(coords) to RPT & Chat",admincopy,"0","0","0","0",[]];
		adminadd = adminadd + ["  Admin Scroll Menu",adminlite,"1","0","0","0",[]];
		adminadd = adminadd + ["  Wardrobe",adminskin,"1","0","0","0",[]];
		adminadd = adminadd + ["  Force Disconnect (Self)",{(findDisplay 46) closeDisplay 0;},"0","0","0","0",[]];
	};
```

Add this code block after it:
```sqf
		_fnc = "-Money";
		if(isNil 'adminshowdinheiromenu')then{_fnc = "+Dinheiro";};
		adminadd = adminadd + [_fnc,{if(isNil "adminshowdinheiromenu")then{adminshowdinheiromenu = true;}else{adminshowdinheiromenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[1,0.84,0,1]];
		if(!isNil "adminshowdinheiromenu")then
		{
			if(MOD_EPOCH)then
			{
			adminadd = adminadd + ["  Give +1.000 coins",adminGiveCoins,"0","0","0","1",[0.56,0.93,0.56,1]]; // Give 1.000	
			adminadd = adminadd + ["  Give +10.000 coins",adminGiveCoins2,"0","0","0","1",[0.56,0.93,0.56,1]]; // Give 10.000
			adminadd = adminadd + ["  Give +100.000 coins",adminGiveCoins3,"0","0","0","1",[0.56,0.93,0.56,1]]; // Give 100.000	
			adminadd = adminadd + ["  Give +1.000.000 coins",adminGiveCoins4,"0","0","0","1",[0.56,0.93,0.56,1]]; // Give 1.000.000
			adminadd = adminadd + ["  Give +10.000.000 coins",adminGiveCoins5,"0","0","0","1",[0.56,0.93,0.56,1]]; // Give 10.000.000
			adminadd = adminadd + ["  Give +20.000.000 coins",adminGiveCoins6,"0","0","0","1",[0.56,0.93,0.56,1]]; // Give 20.000.00
			adminadd = adminadd + ["  Give +40.000.000 coins",adminGiveCoins7,"0","0","0","1",[0.56,0.93,0.56,1]]; // Give 40.000.000
			adminadd = adminadd + ["  Give +80.000.000 coins",adminGiveCoins8,"0","0","0","1",[0.56,0.93,0.56,1]]; // Give 80.000.000
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["  Give +1.000 coins para o Bank",adminGiveCoinsToBank,"0","0","0","1",[0.98,0.98,0.82,1]]; // Give 10.000 to Bank	
			adminadd = adminadd + ["  Give +10.000 coins para o Bank",adminGiveCoinsToBank2,"0","0","0","1",[0.98,0.98,0.82,1]]; // Give 1.000.000 to Bank	
			adminadd = adminadd + ["  Give +100.000 coins para o Bank",adminGiveCoinsToBank3,"0","0","0","1",[0.98,0.98,0.82,1]]; // Give 10.000 to Bank	
			adminadd = adminadd + ["  Give +1.000.000 coins para o Bank",adminGiveCoinsToBank4,"0","0","0","1",[0.98,0.98,0.82,1]]; // Give 1.000.000 to Bank
			adminadd = adminadd + ["  Give +10.000.000 coins para o Bank",adminGiveCoinsToBank5,"0","0","0","1",[0.98,0.98,0.82,1]]; // Give 1.000.000 to Ban
			adminadd = adminadd + ["  Give +20.000.000 coins para o Bank",adminGiveCoinsToBank6,"0","0","0","1",[0.98,0.98,0.82,1]]; // Give 1.000.000 to Bank
			adminadd = adminadd + ["  Give +40.000.000 coins para o Bank",adminGiveCoinsToBank7,"0","0","0","1",[0.98,0.98,0.82,1]]; // Give 1.000.000 to Bank
			adminadd = adminadd + ["  Give +80.000.000 coins para o Bank",adminGiveCoinsToBank8,"0","0","0","1",[0.98,0.98,0.82,1]]; // Give 1.000.000 to Bank		
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["  Remove +1.000 coins",adminTakeCoins,"0","0","0","1",[0.91,0.59,0.48,1]]; // Remove 10.000
			adminadd = adminadd + ["  Remove +10.000 coins",adminTakeCoins2,"0","0","0","1",[0.91,0.59,0.48,1]]; // Remove 1.000.000
			adminadd = adminadd + ["  Remove +100.000 coins",adminTakeCoins3,"0","0","0","1",[0.91,0.59,0.48,1]]; // Remove 10.000
			adminadd = adminadd + ["  Remove +1.000.000 coins",adminTakeCoins4,"0","0","0","1",[0.91,0.59,0.48,1]]; // Remove 1.000.000
			adminadd = adminadd + ["  Remove +10.000.000 coins",adminTakeCoins5,"0","0","0","1",[0.91,0.59,0.48,1]]; // Remove 1.000.000
			adminadd = adminadd + ["  Remove +20.000.000 coins",adminTakeCoins6,"0","0","0","1",[0.91,0.59,0.48,1]]; // Remove 1.000.000
			adminadd = adminadd + ["  Remove +40.000.000 coins",adminTakeCoins7,"0","0","0","1",[0.91,0.59,0.48,1]]; // Remove 1.000.000
			adminadd = adminadd + ["  Remove +80.000.000 coins",adminTakeCoins8,"0","0","0","1",[0.91,0.59,0.48,1]]; // Remove 1.000.000
			adminadd = adminadd + ["","","0","1","0","0",[]];
			adminadd = adminadd + ["  Remove +1.000 coins do Bank",adminTakeCoinsFromBank,"0","0","0","1",[0.8,0.36,0.36,1]]; // Remove 1.000.000 from Bank		
			adminadd = adminadd + ["  Remove +10.000 coins do Bank",adminTakeCoinsFromBank2,"0","0","0","1",[0.8,0.36,0.36,1]]; // Remove 1.000.000 from Bank
			adminadd = adminadd + ["  Remove +100.000 coins do Bank",adminTakeCoinsFromBank3,"0","0","0","1",[0.8,0.36,0.36,1]]; // Remove 1.000.000 from Bank		
			adminadd = adminadd + ["  Remove +1.000.000 coins do Bank",adminTakeCoinsFromBank4,"0","0","0","1",[0.8,0.36,0.36,1]]; // Remove 1.000.000 from Bank
			adminadd = adminadd + ["  Remove +10.000.000 coins do Bank",adminTakeCoinsFromBank5,"0","0","0","1",[0.8,0.36,0.36,1]]; // Remove 1.000.000 from Bank
			adminadd = adminadd + ["  Remove +20.000.000 coins do Bank",adminTakeCoinsFromBank6,"0","0","0","1",[0.8,0.36,0.36,1]]; // Remove 1.000.000 from Bank
			adminadd = adminadd + ["  Remove +40.000.000 coins do Bank",adminTakeCoinsFromBank7,"0","0","0","1",[0.8,0.36,0.36,1]]; // Remove 1.000.000 from Bank
			adminadd = adminadd + ["  Remove +80.000.000 coins do Bank",adminTakeCoinsFromBank8,"0","0","0","1",[0.8,0.36,0.36,1]]; // Remove 1.000.000 from Bank
			adminadd = adminadd + ["","","0","1","0","0",[]];
			};
		};	
};
```

```sqf
	adminHumanityMinus =
	{
		{
			if(name _x == _this select 0)then
			{
				_humanity = _x getVariable['humanity',0];
				_x setVariable['humanity',_humanity-2500,true];
				hint format['Gave %1 -2500 Humanity!',_this select 0];
				
				_sl = format['%1 minus 2500 Humanity to %2',name player,_this select 0];
				PVAH_WriteLogReq = [player,toArray _sl];
				publicVariableServer 'PVAH_WriteLogReq';
			};
		} forEach playableUnits;
	};
```

Add this code block after it:
```sqf
	adminGiveCoins =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney+1000,true];
                hint format ["Gave %1 +1000 Coins!",_this select 0];
                
                _sl = format["%1 plus 1.000 Coins to %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
	adminGiveCoins2 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney+10000,true];
                hint format ["Gave %1 +10000 Coins!",_this select 0];
                
                _sl = format["%1 plus 10.000 to %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
	adminGiveCoins3 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney+100000,true];
                hint format ["Gave %1 +100000 Coins!",_this select 0];
                
                _sl = format["%1 plus 100.000 Coins to %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
	adminGiveCoins4 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney+1000000,true];
                hint format ["Gave %1 +1000000 Coins!",_this select 0];
                
                _sl = format["%1 plus 1.000.000 Coins to %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
	adminGiveCoins5 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney+10000000,true];
                hint format ["Gave %1 +10000000 Coins!",_this select 0];
                
                _sl = format["%1 plus 10.000.000 Coins to %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
	adminGiveCoins6 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney+20000000,true];
                hint format ["Gave %1 +20000000 Coins!",_this select 0];
                
                _sl = format["%1 plus 20.000.000 Coins to %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
	adminGiveCoins7 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney+40000000,true];
                hint format ["Gave %1 +40000000 Coins!",_this select 0];
                
                _sl = format["%1 plus 40.000.000 Coins to %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
	adminGiveCoins8 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney+80000000,true];
                hint format ["Gave %1 +80000000 Coins!",_this select 0];
                
                _sl = format["%1 plus 80.000.000 Coins to %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
	adminGiveCoinsToBank =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney+1000,true];
                    hint format ["Gave %1 +1000 Coins!",_this select 0];
                                     
                    _sl = format["%1 plus 1.000 Coins to %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
	adminGiveCoinsToBank2 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney+10000,true];
                    hint format ["Gave %1 +10000 Coins!",_this select 0];
                                     
                    _sl = format["%1 plus 10.000 to %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
	adminGiveCoinsToBank3 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney+100000,true];
                    hint format ["Gave %1 +100000 Coins!",_this select 0];
                                     
                    _sl = format["%1 plus 100.000 Coins to %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
	adminGiveCoinsToBank4 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney+1000000,true];
                    hint format ["Gave %1 +1000000 Coins!",_this select 0];
                                     
                    _sl = format["%1 plus 1.000.000 Coins to %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
	adminGiveCoinsToBank5 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney+10000000,true];
                    hint format ["Gave %1 +10000000 Coins!",_this select 0];
                                     
                    _sl = format["%1 plus 10.000.000 Coins to %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
	adminGiveCoinsToBank6 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney+20000000,true];
                    hint format ["Gave %1 +20000000 Coins!",_this select 0];
                                     
                    _sl = format["%1 plus 20.000.000 Coins to %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
	adminGiveCoinsToBank7 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney+40000000,true];
                    hint format ["Gave %1 +40000000 Coins!",_this select 0];
                                     
                    _sl = format["%1 plus 40.000.000 Coins to %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
	adminGiveCoinsToBank8 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney+80000000,true];
                    hint format ["Gave %1 +80000000 Coins!",_this select 0];
                                     
                    _sl = format["%1 plus 80.000.000 Coins to %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
    adminTakeCoins =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney-1000,true];
                hint format ["Removed %1 +1000 Coins!",_this select 0];
                
                _sl = format["%1 minus 10.000 Coins from %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
    adminTakeCoins2 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney-10000,true];
                hint format ["Removed %1 +10000 Coins!",_this select 0];
                
                _sl = format["%1 minus 10.000 Coins from %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
    adminTakeCoins3 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney-100000,true];
                hint format ["Removed %1 +100000 Coins!",_this select 0];
                
                _sl = format["%1 minus 100.000 Coins from %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
    adminTakeCoins4 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney-1000000,true];
                hint format ["Removed %1 +1000000 Coins!",_this select 0];
                
                _sl = format["%1 minus 1.000.000 Coins from %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
    adminTakeCoins5 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney-10000000,true];
                hint format ["Removed %1 +10000000 Coins!",_this select 0];
                
                _sl = format["%1 minus 10.000.000 Coins from %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
    adminTakeCoins6 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney-20000000,true];
                hint format ["Removed %1 +20000000 Coins!",_this select 0];
                
                _sl = format["%1 minus 20.000.000 Coins from %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
    adminTakeCoins7 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney-40000000,true];
                hint format ["Removed %1 +40000000 Coins!",_this select 0];
                
                _sl = format["%1 minus 40.000.000 Coins from %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
    adminTakeCoins8 =
    {
        {
            if (name _x == _this select 0) then
            {
                _cashMoney = _x getVariable["cashMoney",0];
                _x setVariable["cashMoney",_cashMoney-80000000,true];
                hint format ["Removed %1 +80000000 Coins!",_this select 0];
                
                _sl = format["%1 minus 80.000.000 Coins from %2",name player,_this select 0];
                PVAH_WriteLogReq = [player,_sl];
                publicVariableServer "PVAH_WriteLogReq";
            };
        } forEach playableUnits;
    };
    adminTakeCoinsFromBank =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney-1000,true];
                    hint format ["Removed %1 -1000 Coins!",_this select 0];
                                     
                    _sl = format["%1 minus 1.000 Coins from %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
    adminTakeCoinsFromBank2 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney-10000,true];
                    hint format ["Removed %1 -10000 Coins!",_this select 0];
                                     
                    _sl = format["%1 minus 10.000 Coins from %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
    adminTakeCoinsFromBank3 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney-100000,true];
                    hint format ["Removed %1 -100000 Coins!",_this select 0];
                                     
                    _sl = format["%1 minus 100.000 Coins from %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
    adminTakeCoinsFromBank4 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney-1000000,true];
                    hint format ["Removed %1 -1000000 Coins!",_this select 0];
                                     
                    _sl = format["%1 minus 1.000.000 Coins from %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
    adminTakeCoinsFromBank5 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney-10000000,true];
                    hint format ["Removed %1 -10000000 Coins!",_this select 0];
                                     
                    _sl = format["%1 minus 10.000.000 Coins from %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
    adminTakeCoinsFromBank6 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney-20000000,true];
                    hint format ["Removed %1 -20000000 Coins!",_this select 0];
                                     
                    _sl = format["%1 minus 20.000.000 Coins from %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
    adminTakeCoinsFromBank7 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney-40000000,true];
                    hint format ["Removed %1 -40000000 Coins!",_this select 0];
                                     
                    _sl = format["%1 minus 40.000.000 Coins from %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
    adminTakeCoinsFromBank8 =
    {
        {
            if (name _x == _this select 0) then
                {
                    _bankMoney = _x getVariable["moneySpecial",0];
                    _x setVariable["moneySpecial",_bankMoney-80000000,true];
                    hint format ["Removed %1 -80000000 Coins!",_this select 0];
                                     
                    _sl = format["%1 minus 80.000.000 Coins from %2",name player,_this select 0];
                    PVAH_WriteLogReq = [player,_sl];
                    publicVariableServer "PVAH_WriteLogReq";
                };
        } forEach playableUnits;
    };
};
```
