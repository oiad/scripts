in your `AT.sqf` around line 4661, find this code block:
```sqf
	admin_showid =
	{
		_obj = cursortarget;
		if(!isNull _obj)then
		{
			_charID = _obj getVariable['CharacterID','0'];
			_objID = _obj getVariable['ObjectID','0'];
			_objUID = _obj getVariable['ObjectUID','0'];
			_lastUpdate = _obj getVariable['lastUpdate',time];
			_pos = getPosATL _obj;
			_log1 = format['%1, WorldSpace: [%2,%3], @%4',typeOf _obj,getDir _obj,_pos,mapGridPosition _pos];
			_log2 = format['charID: %1, objID: %2, objUID: %3, lastUpdate: %4s ago',_charID,_objID,_objUID,time - _lastUpdate];
			if(isPlayer _obj)then
			{
				_log2 = format['Name: %1  PlayerUID: %2  charID: %3',_obj getVariable['bodyName',name _obj],getPlayerUID _obj,_charID];
			};
			if(!isNil 'DZE_DoorsLocked' && !isNil 'DZE_LockedStorage')then
			{
				_objType = typeOf _obj;
				if(_objType in DZE_DoorsLocked || _objType in DZE_LockedStorage)then
				{
					_log2 = format['LockCode: %1, objID: %2, objUID: %3, lastUpdate: %4s ago',_charID,_objID,_objUID,time - _lastUpdate];
				}
				else
				{
					_vID = parseNumber _charID;
					if(((_obj isKindOf 'LandVehicle') || (_obj isKindOf 'Air') || (_obj isKindOf 'Ship')) && (_vID > 0))then
					{
						_colors = ['Green', 'Red', 'Blue', 'Yellow', 'Black'];
						_key = format['ItemKey%1%2', _colors select floor(_vID / 2500), (_vID - (floor(_vID / 2500) * 2500))];
						_displayName = (getText (configFile >> 'CfgWeapons' >> _key >> 'displayName'));
						
						_log2 = format['Key: %1 (%2) - CharID: %3, objID: %4, objUID: %5',_key,_displayName,_charID,_objID,_objUID];
					};
				};
			};
			{systemChat _x;diag_log _x;} forEach [_log1,_log2];
		};
	};
```

Replace it with this code block:
```sqf
	admin_showid = {
		private ["_target","_charID","_targetID","_ownerUID","_pos","_dir","_gps","_message","_typeOf","_vehID","_colors","_key","_displayName","_extra","_lockCode","_lockColor","_lockBoxes","_friends"];

		_target = cursorTarget;

		if (isNull _target) exitWith { systemChat "cursorTarget isNull!"; };

		_charID 	= _target getVariable["CharacterID","0"];
		_targetID 	= _target getVariable["ObjectID","0"];
		_ownerUID 	= _target getVariable ["ownerPUID","0"]; 
		_coins		= _target getVariable [Z_moneyVariable,0];
		_playerUID	= getPlayerUID _target;
		_pos 		= getPosATL _target;
		_dir		= getDir _target;
		_gps		= mapGridPosition _pos;
		_typeOf		= typeOf _target;
		_extra		= "";
		_friends	= [];

		if (_charID != "0") then { _extra = format ["charID: %1",_charID]; };
		if (_ownerUID != "0") then { _extra = _extra + format [", ownerUID: %1",_ownerUID]; };
		if (_targetID != "0") then { _extra = _extra + format [", objID: %1",_targetID]; };

		if (_target isKindOf "Man") then {
			if !(isPlayer _target) then {
				_message = format["Name: AI Coins: %1 Skin: %2",[_coins] call BIS_fnc_numberText,_typeOf];
			} else {
				_message = format["Name: %1 (%2) Coins: %3 Skin: %4 charID: %5",_target getVariable["bodyName","Unknown"],_playerUID,[_coins] call BIS_fnc_numberText,_typeOf,_charID];
			};
		} else {
			_message = format["%1, @%4 [%2,%3] %5",_typeOf,_dir,_pos,_gps,_extra];
		};

		if (DZE_permanentPlot && {_typeOf == "Plastic_Pole_EP1_DZ"}) then {
			_friends = _target getVariable ["plotfriends",[]];
		};
		
		if (_typeOf in DZE_DoorsLocked || {_typeOf in DZE_LockableStorage}) then {
			_lockBoxes = ["LockboxStorage","LockboxStorageLocked"];
			if (_typeOf in _lockBoxes) then {
				_lockCode =  parseNumber _charID;
				_lockCode = _lockCode - 10000;
				if (_lockCode <= 99) then {_lockColor = "Red";};
				if (_lockCode >= 100 && {_lockCode <= 199}) then {_lockColor = "Green"; _lockCode = _lockCode - 100;};
				if (_lockCode >= 200) then {_lockColor = "Blue"; _lockCode = _lockCode - 200;};
				if (_lockCode <= 9) then {_lockCode = format["0%1", _lockCode];};
				_message = format["%1, @%4 [%2,%3], Coins: %8, LockCode: %5%6 %7",_typeOf,_dir,_pos,_gps,_lockColor,_lockCode,_extra,[_coins] call BIS_fnc_numberText];
			} else {
				_message = format["%1, @%4 [%2,%3], Coins: %7, LockCode: %5 %6",_typeOf,_dir,_pos,_gps,_charID,_extra,[_coins] call BIS_fnc_numberText];
				if (DZE_doorManagement) then {_friends = _target getVariable ["doorfriends",[]];};
			};
		} else {
			_vehID = parseNumber _charID;
			if (((_target isKindOf "LandVehicle") || (_target isKindOf "Air") || (_target isKindOf "Ship")) && {_vehID > 0}) then {
				_colors = ["Green", "Red", "Blue", "Yellow", "Black"];
				_key = format["ItemKey%1%2", _colors select floor(_vehID / 2500), (_vehID - (floor(_vehID / 2500) * 2500))];
				_displayName = (getText (configFile >> "CfgWeapons" >> _key >> "displayName"));
				_message = format["%1, @%4 [%2,%3], charID: %5, objID: %6, Key: %7 (%8)",_typeOf,_dir,_pos,_gps,_charID,_targetID,_displayName,_key];
				if (_ownerUID != "0") then {_message = _message + format [", ownerPUID: %1",_ownerUID]};
			};
		};

		systemChat _message;
		diag_log _message;

		if (count _friends > 0) then {
			systemchat format ["Users in %1 access list:",_typeOf];
			{
				systemChat format ["Name: %1 (%2)",if (typeName (_x select 1) == "ARRAY") then {toString (_x select 1)} else {_x select 1},_x select 0];
			} count _friends;
		};
	};
```