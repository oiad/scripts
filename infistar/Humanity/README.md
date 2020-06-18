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
    _fnc = "-Humanity";
    if(isNil 'adminshowhumanidademenu')then{_fnc = "+Humanidade";};
    adminadd = adminadd + [_fnc,{if(isNil "adminshowhumanidademenu")then{adminshowhumanidademenu = true;}else{adminshowhumanidademenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0.86,0.08,0.24,1]];
    if(!isNil "adminshowhumanidademenu")then
    {
        adminadd = adminadd + ["  Give 1.000 de Humanidade",adminHumanityPlus,"0","0","0","1",[0.56,0.93,0.56,1]];
        adminadd = adminadd + ["  Give 5.000 de Humanidade",adminHumanityPlus2,"0","0","0","1",[0.56,0.93,0.56,1]];
        adminadd = adminadd + ["  Give 10.000 de Humanidade",adminHumanityPlus3,"0","0","0","1",[0.56,0.93,0.56,1]];
        adminadd = adminadd + ["  Give 20.000 de Humanidade",adminHumanityPlus4,"0","0","0","1",[0.56,0.93,0.56,1]];
        adminadd = adminadd + ["  Give 40.000 de Humanidade",adminHumanityPlus5,"0","0","0","1",[0.56,0.93,0.56,1]];
        adminadd = adminadd + ["  Give 80.000 de Humanidade",adminHumanityPlus6,"0","0","0","1",[0.56,0.93,0.56,1]];
        adminadd = adminadd + ["","","0","1","0","0",[]];
        adminadd = adminadd + ["  Remove 1.000 de Humanidade",adminHumanityMinus,"0","0","0","1",[0.8,0.36,0.36,1]];   
        adminadd = adminadd + ["  Remove 5.000 de Humanidade",adminHumanityMinus2,"0","0","0","1",[0.8,0.36,0.36,1]];  
        adminadd = adminadd + ["  Remove 10.000 de Humanidade",adminHumanityMinus3,"0","0","0","1",[0.8,0.36,0.36,1]];
        adminadd = adminadd + ["  Remove 20.000 de Humanidade",adminHumanityMinus4,"0","0","0","1",[0.8,0.36,0.36,1]]; 
        adminadd = adminadd + ["  Remove 40.000 de Humanidade",adminHumanityMinus5,"0","0","0","1",[0.8,0.36,0.36,1]]; 
        adminadd = adminadd + ["  Remove 80.000 de Humanidade",adminHumanityMinus6,"0","0","0","1",[0.8,0.36,0.36,1]];
        adminadd = adminadd + ["","","0","1","0","0",[]];
    };	
```

On line 4208 or so of `AT.sqf` find this code block:
```sqf
    changeHumanity =
    {
        disableSerialization;
        _plr = objNull; 
        {if(name _x == _this select 0)exitWith {_plr = _x;};} forEach playableUnits;
        if(isNull _plr)exitWith {
            systemchat 'Select a Player!';
        };
        if(isNull findDisplay 24)exitWith {
            systemchat 'open the chat, type the Amount of Humanity you want to add (can be negative) and doubleClick again!';
        };
        _chat = (findDisplay 24) displayCtrl 101;
        _txt = ctrlText _chat;
        _num = 0;
        if(_txt != '')then{
            _num = parseNumber _txt;
            if(typeName _num != 'SCALAR')then{systemchat 'INSERT A NUMBER!';};
            (findDisplay 24) closeDisplay 0;
        };
        
        _humanity = _plr getVariable['humanity',0];
        _plr setVariable['humanity',_humanity+_num,true];
        hint format['Gave %1 %2 Humanity!',_this select 0,_num];
        
        _sl = format['%1 %2 Humanity to %3',name player,_num,_this select 0];
        PVAH_WriteLogReq = [player,toArray _sl];
        publicVariableServer 'PVAH_WriteLogReq';
    };
    adminHumanityPlus =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity+2500,true];
                hint format['Gave %1 +2500 Humanity!',_this select 0];
                
                _sl = format['%1 plus 2500 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
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

Replace this code block for it:
```sqf
    changeHumanity =
    {
        disableSerialization;
        _plr = objNull; 
        {if(name _x == _this select 0)exitWith {_plr = _x;};} forEach playableUnits;
        if(isNull _plr)exitWith {
            systemchat 'Select a Player!';
        };
        if(isNull findDisplay 24)exitWith {
            systemchat 'open the chat, type the Amount of Humanity you want to add (can be negative) and doubleClick again!';
        };
        _chat = (findDisplay 24) displayCtrl 101;
        _txt = ctrlText _chat;
        _num = 0;
        if(_txt != '')then{
            _num = parseNumber _txt;
            if(typeName _num != 'SCALAR')then{systemchat 'INSERT A NUMBER!';};
            (findDisplay 24) closeDisplay 0;
        };
        
        _humanity = _plr getVariable['humanity',0];
        _plr setVariable['humanity',_humanity+_num,true];
        hint format['Gave %1 %2 Humanity!',_this select 0,_num];
        
        _sl = format['%1 %2 Humanity to %3',name player,_num,_this select 0];
        PVAH_WriteLogReq = [player,toArray _sl];
        publicVariableServer 'PVAH_WriteLogReq';
    };
    adminHumanityPlus =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity+1000,true];
                hint format['Gave %1 +1000 Humanity!',_this select 0];
                
                _sl = format['%1 plus 1.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
    adminHumanityPlus2 =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity+5000,true];
                hint format['Gave %1 +5000 Humanity!',_this select 0];
                
                _sl = format['%1 plus 5.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
    adminHumanityPlus3 =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity+10000,true];
                hint format['Gave %1 +10000 Humanity!',_this select 0];
                
                _sl = format['%1 plus 10.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
    adminHumanityPlus4 =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity+20000,true];
                hint format['Gave %1 +10000 Humanity!',_this select 0];
                
                _sl = format['%1 plus 20.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
    adminHumanityPlus5 =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity+40000,true];
                hint format['Gave %1 +10000 Humanity!',_this select 0];
                
                _sl = format['%1 plus 40.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
    adminHumanityPlus6 =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity+80000,true];
                hint format['Gave %1 +80000 Humanity!',_this select 0];
                
                _sl = format['%1 plus 80.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
    adminHumanityMinus =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity-1000,true];
                hint format['Gave %1 -1000 Humanity!',_this select 0];
                
                _sl = format['%1 minus 1.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
    adminHumanityMinus2 =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity-5000,true];
                hint format['Gave %1 -5000 Humanity!',_this select 0];
                
                _sl = format['%1 minus 5.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
    adminHumanityMinus3 =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity-10000,true];
                hint format['Gave %1 -10000 Humanity!',_this select 0];
                
                _sl = format['%1 minus 10.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
    adminHumanityMinus4 =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity-20000,true];
                hint format['Gave %1 -20000 Humanity!',_this select 0];
                
                _sl = format['%1 minus 20.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
    adminHumanityMinus5 =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity-40000,true];
                hint format['Gave %1 -40000 Humanity!',_this select 0];
                
                _sl = format['%1 minus 40.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
    adminHumanityMinus6 =
    {
        {
            if(name _x == _this select 0)then
            {
                _humanity = _x getVariable['humanity',0];
                _x setVariable['humanity',_humanity-80000,true];
                hint format['Gave %1 -80000 Humanity!',_this select 0];
                
                _sl = format['%1 minus 80.000 Humanity to %2',name player,_this select 0];
                PVAH_WriteLogReq = [player,toArray _sl];
                publicVariableServer 'PVAH_WriteLogReq';
            };
        } forEach playableUnits;
    };
```
