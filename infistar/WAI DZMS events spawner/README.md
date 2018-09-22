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
				
			adminadd = adminadd + ["  [HERO] Abandoned trader",{PVAH_AdminReq = [8000,player,"hero","abandoned_trader"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Armed vehicle",{PVAH_AdminReq = [8000,player,"hero","armed_vehicle"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Army base",{PVAH_AdminReq = [8000,player,"hero","armybase"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Bandit base",{PVAH_AdminReq = [8000,player,"hero","bandit_base"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Bandit patrol",{PVAH_AdminReq = [8000,player,"hero","bandit_patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Bandit takeover",{PVAH_AdminReq = [8000,player,"hero","bandit_takeover"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Black hawk crash",{PVAH_AdminReq = [8000,player,"hero","black_hawk_crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Broken down ural",{PVAH_AdminReq = [8000,player,"hero","broken_down_ural"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] C130",{PVAH_AdminReq = [8000,player,"hero","c130"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Captured MV22",{PVAH_AdminReq = [8000,player,"hero","captured_mv22"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Communications tower",{PVAH_AdminReq = [8000,player,"hero","comm"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Destroyed ural",{PVAH_AdminReq = [8000,player,"hero","destroyed_ural"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Disabled military chopper",{PVAH_AdminReq = [8000,player,"hero","disabled_milchopper"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Drone pilot",{PVAH_AdminReq = [8000,player,"hero","drone_pilot"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Fallout shelter",{PVAH_AdminReq = [8000,player,"hero","fallout"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Gemstone Mine",{PVAH_AdminReq = [8000,player,"hero","gemstonemine"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Gem Tower",{PVAH_AdminReq = [8000,player,"hero","gem_tower"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Ikea convoy",{PVAH_AdminReq = [8000,player,"hero","ikea_convoy"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Mayors Mansion",{PVAH_AdminReq = [8000,player,"hero","mayors_mansion"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Medical camp",{PVAH_AdminReq = [8000,player,"hero","medi_camp"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Patrol",{PVAH_AdminReq = [8000,player,"hero","patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Radioshack",{PVAH_AdminReq = [8000,player,"hero","radioshack"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Tank column",{PVAH_AdminReq = [8000,player,"hero","tankcolumn"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [HERO] Weapon cache",{PVAH_AdminReq = [8000,player,"hero","weapon_cache"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			
			adminadd = adminadd + ["  [BANDIT] Abandoned trader",{PVAH_AdminReq = [8000,player,"bandit","abandoned_trader"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Armed vehicle",{PVAH_AdminReq = [8000,player,"bandit","armed_vehicle"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Army base",{PVAH_AdminReq = [8000,player,"bandit","armybase"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Black hawk crash",{PVAH_AdminReq = [8000,player,"bandit","black_hawk_crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Broken down ural",{PVAH_AdminReq = [8000,player,"bandit","broken_down_ural"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] C130",{PVAH_AdminReq = [8000,player,"bandit","c130"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Captured MV22",{PVAH_AdminReq = [8000,player,"bandit","captured_mv22"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Communications tower",{PVAH_AdminReq = [8000,player,"bandit","comm"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Disabled military chopper",{PVAH_AdminReq = [8000,player,"bandit","disabled_milchopper"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Drone pilot",{PVAH_AdminReq = [8000,player,"bandit","drone_pilot"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Hero base",{PVAH_AdminReq = [8000,player,"bandit","hero_base"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Hero fortification",{PVAH_AdminReq = [8000,player,"bandit","hero_fortification"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Hero patrol",{PVAH_AdminReq = [8000,player,"bandit","hero_patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];			
			adminadd = adminadd + ["  [BANDIT] Fallout shelter",{PVAH_AdminReq = [8000,player,"bandit","fallout"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Gemstone Mine",{PVAH_AdminReq = [8000,player,"bandit","gemstonemine"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Gem Tower",{PVAH_AdminReq = [8000,player,"bandit","gem_tower"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Ikea convoy",{PVAH_AdminReq = [8000,player,"bandit","ikea_convoy"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Medical camp",{PVAH_AdminReq = [8000,player,"bandit","medi_camp"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Patrol",{PVAH_AdminReq = [8000,player,"bandit","patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Presidents Mansion",{PVAH_AdminReq = [8000,player,"bandit","presidents_mansion"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Radioshack",{PVAH_AdminReq = [8000,player,"bandit","radioshack"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Sniper extraction",{PVAH_AdminReq = [8000,player,"bandit","sniper_extraction"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Tank column",{PVAH_AdminReq = [8000,player,"bandit","tankcolumn"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
			adminadd = adminadd + ["  [BANDIT] Weapon cache",{PVAH_AdminReq = [8000,player,"bandit","weapon_cache"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[]];
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
			if (_mtype == "hero" || {_mtype == "bandit"}) then {
				diag_log format ["%1 (%2) Spawning mission [%3] %4",name (_array select 1),getPlayerUID (_array select 1),_mtype,_mname];
				wai_mission_markers set [(count wai_mission_markers), format ["Main%1%2",_mtype,count(wai_mission_data)]];
				wai_mission_data = wai_mission_data + [[0,"",[],[0,0,0]]];
				execVM format ["\z\addons\dayz_server\WAI\missions\%1\%2.sqf",_mtype,_mname];
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
