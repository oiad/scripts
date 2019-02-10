if (isServer) then {
	diag_log "Loading custom server compiles";
};

if (!isDedicated) then {
	diag_log "Loading custom client compiles";
};


fnc_log = {
	private ["_fileName","_message","_dll","_display"];

	_fileName = toLower (_this select 0);
	_message = _this select 1;
	_display = if (count _this > 2) then {_this select 2} else {false};

	if (!isDedicated) then {
		SK_Log = [_fileName,if (typeName _message == "ARRAY") then {_message} else {toArray _message},_display];
		publicVariableServer "SK_Log";
	} else {
		call {
			if (_fileName == "rearm") then {
				private ["_vehicle","_player","_amount"];
				_vehicle = _message select 0;
				_player = _message select 3;
				_amount = (_message select 4) select 0;
				{
					if ((getArray (configFile >> "CfgWeapons" >> _x >> "magazines") select 0) == (toString (_message select 1))) exitWith {
						_message = format ["%1 (%2) rearmed %3 on %4 for %5 @%6 %7",name _player,getPlayerUID _player,getText (configFile >> "CfgWeapons" >> _x >> "displayName"),typeOf _vehicle,if ((_message select 4) select 1) then {format ["%1 %2",[_amount] call BIS_fnc_numberText,CurrencyName]} else {z_calcCurrency = compile preprocessFileLineNumbers "\z\addons\dayz_code\actions\advancedTrading\functions\z_at_calcCurrency.sqf";format ["%1",[_amount,true] call z_calcCurrency]},mapGridPosition _vehicle,getPosATL _vehicle];
					};
				} forEach (_vehicle weaponsTurret (_message select 2));
			};
		};
		_message = if (typeName _message == "ARRAY") then {toString _message} else {_message};
		if (_display) then {diag_log format ["[%1] %2",toUpper (_fileName),_message];};

		"LogDLL" callExtension format ["Logs~%1~%2",_fileName,_message];
	};
};