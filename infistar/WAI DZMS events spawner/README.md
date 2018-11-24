This assumes your WAI missions are located in this directory:
```\z\addons\dayz_server\WAI\missions\hero\
\z\addons\dayz_server\WAI\missions\bandit\
```
This assumes your event addons (ikea, military and treasure) are located in:
```
\z\addons\dayz_server\addons\
```

This assumes your DZMS missions are located: 
```\z\addons\dayz_server\DZMS\missions\minor\
\z\addons\dayz_server\DZMS\missions\major\
```

# Install:

On line 289 or so of `AT.sqf` find this code block:
```sqf
			adminadd = adminadd + ["  Force Disconnect (Self)",{(findDisplay 46) closeDisplay 0;},"0","0","0","0",[]];
		};
```

Add this code block after it:
```sqf
		_fnc = "-WAI mission spawn";
		if (isNil 'adminshowwaimenu')then{_fnc = "+WAI mission spawn";};
		adminadd = adminadd + [_fnc,{if(isNil "adminshowwaimenu")then{adminshowwaimenu = true;}else{adminshowwaimenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
		if (!isNil "adminshowwaimenu") then {
			adminadd = adminadd + ["  [EVENT] Ikea",{PVAH_AdminReq = [8000,player,"event","ikea"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [EVENT] Military",{PVAH_AdminReq = [8000,player,"event","military"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [EVENT] Treasure",{PVAH_AdminReq = [8000,player,"event","treasure"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
				
			adminadd = adminadd + ["  [HERO] Abandoned trader",{PVAH_AdminReq = [8000,player,"Hero","abandoned_trader"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Armed vehicle",{PVAH_AdminReq = [8000,player,"Hero","armed_vehicle"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Army base",{PVAH_AdminReq = [8000,player,"Hero","armybase"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Bandit base",{PVAH_AdminReq = [8000,player,"Hero","bandit_base"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Bandit patrol",{PVAH_AdminReq = [8000,player,"Hero","bandit_patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Bandit takeover",{PVAH_AdminReq = [8000,player,"Hero","bandit_takeover"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Black hawk crash",{PVAH_AdminReq = [8000,player,"Hero","black_hawk_crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Broken down ural",{PVAH_AdminReq = [8000,player,"Hero","broken_down_ural"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] C130",{PVAH_AdminReq = [8000,player,"Hero","c130"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Captured MV22",{PVAH_AdminReq = [8000,player,"Hero","captured_mv22"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Communications tower",{PVAH_AdminReq = [8000,player,"Hero","comm"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Destroyed ural",{PVAH_AdminReq = [8000,player,"Hero","destroyed_ural"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Disabled military chopper",{PVAH_AdminReq = [8000,player,"Hero","disabled_milchopper"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Drone pilot",{PVAH_AdminReq = [8000,player,"Hero","drone_pilot"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Fallout shelter",{PVAH_AdminReq = [8000,player,"Hero","fallout"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Gemstone Mine",{PVAH_AdminReq = [8000,player,"Hero","gemstonemine"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Gem Tower",{PVAH_AdminReq = [8000,player,"Hero","gem_tower"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Ikea convoy",{PVAH_AdminReq = [8000,player,"Hero","ikea_convoy"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Mayors Mansion",{PVAH_AdminReq = [8000,player,"Hero","mayors_mansion"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Medical camp",{PVAH_AdminReq = [8000,player,"Hero","medi_camp"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Patrol",{PVAH_AdminReq = [8000,player,"Hero","patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Radioshack",{PVAH_AdminReq = [8000,player,"Hero","radioshack"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Tank column",{PVAH_AdminReq = [8000,player,"Hero","tankcolumn"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Weapon cache",{PVAH_AdminReq = [8000,player,"Hero","weapon_cache"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			
			adminadd = adminadd + ["  [BANDIT] Abandoned trader",{PVAH_AdminReq = [8000,player,"Bandit","abandoned_trader"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Armed vehicle",{PVAH_AdminReq = [8000,player,"Bandit","armed_vehicle"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Army base",{PVAH_AdminReq = [8000,player,"Bandit","armybase"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Black hawk crash",{PVAH_AdminReq = [8000,player,"Bandit","black_hawk_crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Broken down ural",{PVAH_AdminReq = [8000,player,"Bandit","broken_down_ural"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] C130",{PVAH_AdminReq = [8000,player,"Bandit","c130"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Captured MV22",{PVAH_AdminReq = [8000,player,"Bandit","captured_mv22"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Communications tower",{PVAH_AdminReq = [8000,player,"Bandit","comm"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Disabled military chopper",{PVAH_AdminReq = [8000,player,"Bandit","disabled_milchopper"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Drone pilot",{PVAH_AdminReq = [8000,player,"Bandit","drone_pilot"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Hero base",{PVAH_AdminReq = [8000,player,"Bandit","hero_base"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Hero fortification",{PVAH_AdminReq = [8000,player,"Bandit","hero_fortification"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Hero patrol",{PVAH_AdminReq = [8000,player,"Bandit","hero_patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];			
			adminadd = adminadd + ["  [BANDIT] Fallout shelter",{PVAH_AdminReq = [8000,player,"Bandit","fallout"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Gemstone Mine",{PVAH_AdminReq = [8000,player,"Bandit","gemstonemine"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Gem Tower",{PVAH_AdminReq = [8000,player,"Bandit","gem_tower"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Ikea convoy",{PVAH_AdminReq = [8000,player,"Bandit","ikea_convoy"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Medical camp",{PVAH_AdminReq = [8000,player,"Bandit","medi_camp"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Patrol",{PVAH_AdminReq = [8000,player,"Bandit","patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Presidents Mansion",{PVAH_AdminReq = [8000,player,"Bandit","presidents_mansion"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Radioshack",{PVAH_AdminReq = [8000,player,"Bandit","radioshack"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Sniper extraction",{PVAH_AdminReq = [8000,player,"Bandit","sniper_extraction"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Tank column",{PVAH_AdminReq = [8000,player,"Bandit","tankcolumn"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Weapon cache",{PVAH_AdminReq = [8000,player,"Bandit","weapon_cache"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		};
		_fnc = "-DZMS mission spawn";
		if (isNil 'adminshowdzmsmenu')then{_fnc = "+DZMS mission spawn";};
		adminadd = adminadd + [_fnc,{if(isNil "adminshowdzmsmenu")then{adminshowdzmsmenu = true;}else{adminshowdzmsmenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
		if (!isNil "adminshowdzmsmenu") then {
			adminadd = adminadd + ["  [MAJOR] C130 Crash",{PVAH_AdminReq = [8000,player,"major","EM1"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] Nato Weapons Cache",{PVAH_AdminReq = [8000,player,"major","SM1"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] Supply Drop",{PVAH_AdminReq = [8000,player,"major","SM2"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] Bandit Medical Camp",{PVAH_AdminReq = [8000,player,"major","SM3"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] Helicopter Landing",{PVAH_AdminReq = [8000,player,"major","SM4"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] Ural Ambush",{PVAH_AdminReq = [8000,player,"major","SM5"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] Medical Cache",{PVAH_AdminReq = [8000,player,"major","SM6"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] Large Ammo Cache",{PVAH_AdminReq = [8000,player,"major","SM7"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] Bandit Firebase",{PVAH_AdminReq = [8000,player,"major","SM9"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] CH47 Mission",{PVAH_AdminReq = [8000,player,"major","SM10"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] Armored Vehicles",{PVAH_AdminReq = [8000,player,"major","SM11"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] APC's",{PVAH_AdminReq = [8000,player,"major","SM12"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MAJOR] Bandit Construction",{PVAH_AdminReq = [8000,player,"major","SM13"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			
			adminadd = adminadd + ["  [MINOR] Bandit Squad",{PVAH_AdminReq = [8000,player,"minor","SM1"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MINOR] Medical Outpost",{PVAH_AdminReq = [8000,player,"minor","SM2"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MINOR] Stash House",{PVAH_AdminReq = [8000,player,"minor","SM3"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MINOR] Helicopter Crash",{PVAH_AdminReq = [8000,player,"minor","SM4"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MINOR] Humvee Crash",{PVAH_AdminReq = [8000,player,"minor","SM5"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MINOR] Weapons Truck",{PVAH_AdminReq = [8000,player,"minor","SM6"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [MINOR] Hillbillies",{PVAH_AdminReq = [8000,player,"minor","SM9"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
		};
```

On line 5468 or so of `AH.sqf` find this code block:
```sqf
			} forEach _arrayforcrate;
		};
```

Add this code block after it:
```sqf
		if (_option == 8000) then {
			_mtype = _array select 2;
			_mname = _array select 3;
			if (_mtype == "Hero" || {_mtype == "Bandit"}) then {
				diag_log format ["%1 (%2) Spawning mission [%3] %4",name (_array select 1),getPlayerUID (_array select 1),_mtype,_mname];
				wai_mission_markers set [(count wai_mission_markers), format ["Main%1%2",_mtype,count(wai_mission_data)]];
				if (isNil "ai_show_count") then {wai_mission_data = wai_mission_data + [[0,"",[],[0,0,0]]];} else {wai_mission_data = wai_mission_data + [[0,[],[],[],[]]]};
				//execVM format ["\z\addons\dayz_server\WAI\missions\%1\%2.sqf",_mtype,_mname]; // If you use OLD WAI format, then use this line
				[if (_mtype == "Bandit") then {"MainHero"} else {"MainBandit"},if (_mtype == "Bandit") then {"Bandit"} else {"Hero"}] execVM format ["\z\addons\dayz_server\WAI\missions\missions\%1.sqf",_mission]; // If you use the NEW WAI format then use this line
			};
			if (_mtype == "event") then {
				[] execVM "\z\addons\dayz_server\addons\" + _mname + ".sqf";
			};
			if (_mtype == "major" || {_mtype == "minor"}) then {
				diag_log format ["%1 (%2) Spawning mission [%3] %4",name (_array select 1),getPlayerUID (_array select 1),_mtype,_mname];
				execVM format ["\z\addons\dayz_server\DZMS\missions\%1\%2.sqf",_mtype,_mname];
			};
		};
```
