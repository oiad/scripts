private ["_time","_vehicle","_removed","_vehType","_finished","_pos","_message","_humanity"];
_vehicle = _this select 3;

if (dayz_actionInProgress) exitWith {localize "STR_EPOCH_PLAYER_32" call dayz_rollingMessages;};
dayz_actionInProgress = true;

{player removeAction _x} count s_player_lockunlock;s_player_lockunlock = [];
s_player_lockUnlock_crtl = 1;
{DZE_myVehicle removeAction _x} count s_player_lockUnlockInside;s_player_lockUnlockInside = [];
s_player_lockUnlockInside_ctrl = 1;

_removed = ([player,"ItemHotwireKit",1] call BIS_fnc_invRemove);

_pos = getPosATL _vehicle;

if (_removed == 1) then {
	[player,"repair",0,false] call dayz_zombieSpeak;
	[player,50,true,(getPosATL player)] spawn player_alertZombies;

	_finished = ["Medic",1] call fn_loopAction;
	if (!_finished) exitWith {
		player addMagazine "ItemHotwireKit";
	};
	_vehType = getText (configFile >> "CfgVehicles" >> typeOf _vehicle >> "displayName");
	_humanity = player getVariable["humanity",0];
	player setVariable ["humanity",(_humanity - 100),true];
	
	if ((random 10) <= 5) then {
		PVDZE_veh_Lock = [_vehicle,false];
		_time = diag_tickTime;
		
		if (local _vehicle) then {
			PVDZE_veh_Lock call local_lockUnlock;
		} else {
			publicVariable "PVDZE_veh_Lock";
			//Wait for lock status to update over network (can take up to a few seconds)
			waitUntil {uiSleep 0.1;(!locked _vehicle or (diag_tickTime - _time > 4))};
		};
		_message = format ["%1 (%2) hotwired a %3 (charID: %6) @%4 %5",dayz_playerName,dayz_playerUID, typeOf _vehicle, mapGridPosition _pos,_pos,_vehicle getVariable ["CharacterID","0"]];
		format [localize "STR_EPOCH_PLAYER_33_OK",_vehType] call dayz_rollingMessages;
		_vehicle setVariable ["hotwired",true,true];
	} else {
		_message = format ["%1 (%2) failed to hotwire %3 (charID: %6) @%4 %5",dayz_playerName,dayz_playerUID, typeOf _vehicle, mapGridPosition _pos,_pos,_vehicle getVariable ["CharacterID","0"]];
		format [localize "STR_EPOCH_PLAYER_33",_vehType] call dayz_rollingMessages;
	};
	["hotwire",_message,true] call fnc_log;
};

//Let fn_selfActions run now
s_player_lockUnlock_crtl = -1;
s_player_lockUnlockInside_ctrl = -1;
dayz_actionInProgress = false;
