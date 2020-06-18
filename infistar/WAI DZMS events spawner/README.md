This assumes your WAI missions are located in this directory:
```
\z\addons\dayz_server\WAI\missions\missions\
```
This assumes your event addons (ikea, military and treasure) are located in:
```
\z\addons\dayz_server\addons\modules\
```

This assumes your DZMS missions are located: 
```
\z\addons\dayz_server\DZMS\missions\
```

# Install:

On line 289 or so of `AT.sqf` find this code block:
```sqf
adminadd = adminadd + ["  Force Disconnect (Self)",{(findDisplay 46) closeDisplay 0;},"0","0","0","0",[]];
```

Add this code block after it:
```sqf
_fnc = "-Missions WAI";
if (isNil 'adminshowwaimenu')then{_fnc = "+Missions WAI";};adminadd = adminadd + [_fnc,{if(isNil "adminshowwaimenu")then{adminshowwaimenu = true;}else{adminshowwaimenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
if (!isNil "adminshowwaimenu") then {
	adminadd = adminadd + ["  [EVENT] Abandoned Vaults",{PVAH_AdminReq = [8000,player,"event","abandoned_vaults"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Animated Crash",{PVAH_AdminReq = [8000,player,"event","animated_crash_spawner"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Building Supplies",{PVAH_AdminReq = [8000,player,"event","building_supplies"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Fuel Station Bomb",{PVAH_AdminReq = [8000,player,"event","fuelstationbomb"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Hemp",{PVAH_AdminReq = [8000,player,"event","hemp"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Labyrinth",{PVAH_AdminReq = [8000,player,"event","labyrinth"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Pirate Treasure",{PVAH_AdminReq = [8000,player,"event","pirate_treasure"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Rubble Town",{PVAH_AdminReq = [8000,player,"event","rubble_town"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Special Forces",{PVAH_AdminReq = [8000,player,"event","special_forces"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] UN Supply",{PVAH_AdminReq = [8000,player,"event","un_supply"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["","","0","1","0","0",[]];
	adminadd = adminadd + ["  [WAI HERO] Abandoned Trader",{PVAH_AdminReq = [8000,player,"WAIHero","abandoned_trader"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Armed Vehicle",{PVAH_AdminReq = [8000,player,"WAIHero","armed_vehicle"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Army Base",{PVAH_AdminReq = [8000,player,"WAIHero","armybase"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Base",{PVAH_AdminReq = [8000,player,"WAIHero","base"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Black Hawk Crash",{PVAH_AdminReq = [8000,player,"WAIHero","black_hawk_crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Broken Down Ural",{PVAH_AdminReq = [8000,player,"WAIHero","broken_down_ural"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Cannibal Cave",{PVAH_AdminReq = [8000,player,"WAIHero","cannibal_cave"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Captured MV22",{PVAH_AdminReq = [8000,player,"WAIHero","captured_mv22"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Crop Raider",{PVAH_AdminReq = [8000,player,"WAIHero","crop_raider"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Drone Pilot",{PVAH_AdminReq = [8000,player,"WAIHero","drone_pilot"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Drug Bust",{PVAH_AdminReq = [8000,player,"WAIHero","drugbust"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Farmer",{PVAH_AdminReq = [8000,player,"WAIHero","farmer"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Firestation",{PVAH_AdminReq = [8000,player,"WAIHero","firestation"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Gem Tower",{PVAH_AdminReq = [8000,player,"WAIHero","gem_tower"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] IKEA Convoy",{PVAH_AdminReq = [8000,player,"WAIHero","ikea_convoy"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Junk Yard",{PVAH_AdminReq = [8000,player,"WAIHero","junkyard"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Lumber Jack",{PVAH_AdminReq = [8000,player,"WAIHero","lumberjack"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Mac Donald",{PVAH_AdminReq = [8000,player,"WAIHero","macdonald"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Mayors Mansion",{PVAH_AdminReq = [8000,player,"WAIHero","mayors_mansion"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Medical Camp",{PVAH_AdminReq = [8000,player,"WAIHero","medi_camp"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Medical Outpost",{PVAH_AdminReq = [8000,player,"WAIHero","outpost"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Patrol Mission",{PVAH_AdminReq = [8000,player,"WAIHero","patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] President Mansion",{PVAH_AdminReq = [8000,player,"WAIHero","presidents_mansion"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Radio Shack",{PVAH_AdminReq = [8000,player,"WAIHero","radioshack"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Scout Patrol",{PVAH_AdminReq = [8000,player,"WAIHero","scout_patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Slaughter House",{PVAH_AdminReq = [8000,player,"WAIHero","slaughter_house"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Sniper Extraction",{PVAH_AdminReq = [8000,player,"WAIHero","sniper_extraction"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Tank Column",{PVAH_AdminReq = [8000,player,"WAIHero","tankcolumn"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Vehicle Drop",{PVAH_AdminReq = [8000,player,"WAIHero","vehicle_drop"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [WAI HERO] Weapon Cache",{PVAH_AdminReq = [8000,player,"WAIHero","weapon_cache"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["","","0","1","0","0",[]];			
	adminadd = adminadd + ["  [WAI BANDIT] Abandoned Trader",{PVAH_AdminReq = [8000,player,"WAIBandit","abandoned_trader"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Armed Vehicle",{PVAH_AdminReq = [8000,player,"WAIBandit","armed_vehicle"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Army Base",{PVAH_AdminReq = [8000,player,"WAIBandit","armybase"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Base",{PVAH_AdminReq = [8000,player,"WAIBandit","base"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Black Hawk Crash",{PVAH_AdminReq = [8000,player,"WAIBandit","black_hawk_crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Broken Down Ural",{PVAH_AdminReq = [8000,player,"WAIBandit","broken_down_ural"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Cannibal Cave",{PVAH_AdminReq = [8000,player,"WAIBandit","cannibal_cave"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Captured MV22",{PVAH_AdminReq = [8000,player,"WAIBandit","captured_mv22"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Crop Raider",{PVAH_AdminReq = [8000,player,"WAIBandit","crop_raider"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Drone Pilot",{PVAH_AdminReq = [8000,player,"WAIBandit","drone_pilot"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Drug Bust",{PVAH_AdminReq = [8000,player,"WAIBandit","drugbust"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Farmer",{PVAH_AdminReq = [8000,player,"WAIBandit","farmer"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Firestation",{PVAH_AdminReq = [8000,player,"WAIBandit","firestation"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Gem Tower",{PVAH_AdminReq = [8000,player,"WAIBandit","gem_tower"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] IKEA Convoy",{PVAH_AdminReq = [8000,player,"WAIBandit","ikea_convoy"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Junk Yard",{PVAH_AdminReq = [8000,player,"WAIBandit","junkyard"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Lumber Jack",{PVAH_AdminReq = [8000,player,"WAIBandit","lumberjack"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Mac Donald",{PVAH_AdminReq = [8000,player,"WAIBandit","macdonald"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Mayors Mansion",{PVAH_AdminReq = [8000,player,"WAIBandit","mayors_mansion"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Medical Camp",{PVAH_AdminReq = [8000,player,"WAIBandit","medi_camp"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Medical Outpost",{PVAH_AdminReq = [8000,player,"WAIBandit","outpost"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Patrol Mission",{PVAH_AdminReq = [8000,player,"WAIBandit","patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] President Mansion",{PVAH_AdminReq = [8000,player,"WAIBandit","presidents_mansion"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Radio Shack",{PVAH_AdminReq = [8000,player,"WAIBandit","radioshack"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Scout Patrol",{PVAH_AdminReq = [8000,player,"WAIBandit","scout_patrol"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Slaughter House",{PVAH_AdminReq = [8000,player,"WAIBandit","slaughter_house"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Sniper Extraction",{PVAH_AdminReq = [8000,player,"WAIBandit","sniper_extraction"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Tank Column",{PVAH_AdminReq = [8000,player,"WAIBandit","tankcolumn"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Vehicle Drop",{PVAH_AdminReq = [8000,player,"WAIBandit","vehicle_drop"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [WAI BANDIT] Weapon Cache",{PVAH_AdminReq = [8000,player,"WAIBandit","weapon_cache"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
};

_fnc = "-Missions DZMS";
if (isNil 'adminshowdzmsmenu')then{_fnc = "+Missions DZMS";};
adminadd = adminadd + [_fnc,{if(isNil "adminshowdzmsmenu")then{adminshowdzmsmenu = true;}else{adminshowdzmsmenu = nil;};call admin_update_ctrl2;},"0","0","0","0",[0,0.6,1,1]];
if (!isNil "adminshowdzmsmenu") then {
	adminadd = adminadd + ["  [EVENT] Abandoned Vaults",{PVAH_AdminReq = [8000,player,"event","abandoned_vaults"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Animated Crash",{PVAH_AdminReq = [8000,player,"event","animated_crash_spawner"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Building Supplies",{PVAH_AdminReq = [8000,player,"event","building_supplies"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Fuel Station Bomb",{PVAH_AdminReq = [8000,player,"event","fuelstationbomb"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Hemp",{PVAH_AdminReq = [8000,player,"event","hemp"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Labyrinth",{PVAH_AdminReq = [8000,player,"event","labyrinth"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Pirate Treasure",{PVAH_AdminReq = [8000,player,"event","pirate_treasure"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Rubble Town",{PVAH_AdminReq = [8000,player,"event","rubble_town"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] Special Forces",{PVAH_AdminReq = [8000,player,"event","special_forces"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["  [EVENT] UN Supply",{PVAH_AdminReq = [8000,player,"event","un_supply"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0.20, 0.65, 1, 1]];
	adminadd = adminadd + ["","","0","1","0","0",[]];
	adminadd = adminadd + ["  [DZMS HERO] AN2 Cargo Drop",{PVAH_AdminReq = [8000,player,"DZMSHero","AN2_Cargo_Drop"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] APC Mission",{PVAH_AdminReq = [8000,player,"DZMSHero","APC_Mission"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Armed Vehicles",{PVAH_AdminReq = [8000,player,"DZMSHero","Armed_Vehicles"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] C130 Crash",{PVAH_AdminReq = [8000,player,"DZMSHero","C130_Crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Construction Site",{PVAH_AdminReq = [8000,player,"DZMSHero","Construction_Site"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Firebase",{PVAH_AdminReq = [8000,player,"DZMSHero","Firebase"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] General Store",{PVAH_AdminReq = [8000,player,"DZMSHero","General_Store"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Helicopter Crash",{PVAH_AdminReq = [8000,player,"DZMSHero","Helicopter_Crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Helicopter Landing",{PVAH_AdminReq = [8000,player,"DZMSHero","Helicopter_Landing"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Humvee Crash",{PVAH_AdminReq = [8000,player,"DZMSHero","Humvee_Crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Medical Cache",{PVAH_AdminReq = [8000,player,"DZMSHero","Medical_Cache"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Medical Camp",{PVAH_AdminReq = [8000,player,"DZMSHero","Medical_Camp"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Medical Outpost",{PVAH_AdminReq = [8000,player,"DZMSHero","Medical_Outpost"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] NATO Weapons Cache",{PVAH_AdminReq = [8000,player,"DZMSHero","NATO_Weapons_Cache"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Squad",{PVAH_AdminReq = [8000,player,"DZMSHero","Squad"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Stash House",{PVAH_AdminReq = [8000,player,"DZMSHero","Stash_House"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Ural Ambush",{PVAH_AdminReq = [8000,player,"DZMSHero","Ural_Ambush"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["  [DZMS HERO] Weaoibs Truck",{PVAH_AdminReq = [8000,player,"DZMSHero","Weapons_Truck"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[0, 1, 0.5, 1]];
	adminadd = adminadd + ["","","0","1","0","0",[]];
	adminadd = adminadd + ["  [DZMS BANDIT] AN2 Cargo Drop",{PVAH_AdminReq = [8000,player,"DZMSBandit","AN2_Cargo_Drop"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] APC Mission",{PVAH_AdminReq = [8000,player,"DZMSBandit","APC_Mission"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Armed Vehicles",{PVAH_AdminReq = [8000,player,"DZMSBandit","Armed_Vehicles"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] C130 Crash",{PVAH_AdminReq = [8000,player,"DZMSBandit","C130_Crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Construction Site",{PVAH_AdminReq = [8000,player,"DZMSBandit","Construction_Site"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Firebase",{PVAH_AdminReq = [8000,player,"DZMSBandit","Firebase"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] General Store",{PVAH_AdminReq = [8000,player,"DZMSBandit","General_Store"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Helicopter Crash",{PVAH_AdminReq = [8000,player,"DZMSBandit","Helicopter_Crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Helicopter Landing",{PVAH_AdminReq = [8000,player,"DZMSBandit","Helicopter_Landing"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Humvee Crash",{PVAH_AdminReq = [8000,player,"DZMSBandit","Humvee_Crash"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Medical Cache",{PVAH_AdminReq = [8000,player,"DZMSBandit","Medical_Cache"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Medical Camp",{PVAH_AdminReq = [8000,player,"DZMSBandit","Medical_Camp"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Medical Outpost",{PVAH_AdminReq = [8000,player,"DZMSBandit","Medical_Outpost"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] NATO Weapons Cache",{PVAH_AdminReq = [8000,player,"DZMSBandit","NATO_Weapons_Cache"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Squad",{PVAH_AdminReq = [8000,player,"DZMSBandit","Squad"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Stash House",{PVAH_AdminReq = [8000,player,"DZMSBandit","Stash_House"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Ural Ambush",{PVAH_AdminReq = [8000,player,"DZMSBandit","Ural_Ambush"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["  [DZMS BANDIT] Weaoibs Truck",{PVAH_AdminReq = [8000,player,"DZMSBandit","Weapons_Truck"]; publicVariableServer "PVAH_AdminReq";},"0","0","0","0",[1, 0.20, 0.20, 1]];
	adminadd = adminadd + ["","","0","1","0","0",[]];
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
	if (_mtype == "WAIHero" || {_mtype == "WAIBandit"}) then {
		diag_log format ["%1 (%2) Spawning mission [%3] %4",name (_array select 1),getPlayerUID (_array select 1),_mtype,_mname];
		wai_mission_markers set [(count wai_mission_markers), format ["Main%1%2",_mtype,count(wai_mission_data)]];
		if (isNil "ai_show_count") then {wai_mission_data = wai_mission_data + [[0,"",[],[0,0,0]]];} else {wai_mission_data = wai_mission_data + [[0,[],[],[],[],[],[]]]};
		[if (_mtype == "WAIBandit") then {"MainHero"} else {"MainBandit"},if (_mtype == "WAIBandit") then {"Bandit"} else {"Hero"}] execVM format ["\z\addons\dayz_server\WAI\missions\missions\%1.sqf",_mname];
	};
	if (_mtype == "event") then {
		[] execVM "\z\addons\dayz_server\addons\modules\" + _mname + ".sqf";
	};
	if (_mtype == "DZMSHero" || {_mtype == "DZMSBandit"}) then {
		diag_log format ["%1 (%2) Spawning mission [%3] %4",name (_array select 1),getPlayerUID (_array select 1),_mtype,_mname];
		DZMSMarkers set [(count DZMSMarkers), format ["Main%1%2",_mtype,count(DZMSMissionData)]];
		if (isNil "ai_show_count") then {DZMSMissionData = DZMSMissionData + [[0,"",[],[0,0,0]]];} else {DZMSMissionData = DZMSMissionData + [[0,[],[],[],[],[],[]]]};
		[if (_mtype == "DZMSBandit") then {"MainHero"} else {"MainBandit"},if (_mtype == "DZMSBandit") then {"Bandit"} else {"Hero"}] execVM format ["\z\addons\dayz_server\DZMS\missions\%1.sqf",_mname];
	};
};
```
