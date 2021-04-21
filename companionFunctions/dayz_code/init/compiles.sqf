if (isServer) then {
	diag_log "Loading custom server compiles";
};

if (!isDedicated) then {
	diag_log "Loading custom client compiles";
};

fnc_nearBy = { // The idea on this comes from the nearby check in Infistar, but this is portable and pretty.
	private ["_target","_nearby","_player","_tempArray","_range"];

	_target = _this select 0;
	_range = _this select 1;
	_nearby = [];

	{
		_player = _x;
		{
			if (!isNull _x && {getPlayerUID _x != ""} && {if (typeName _target == "OBJECT") then {_x != _target} else {true}}) then {
				_tempArray = format["%1 (%2) [%3m]",if (alive _x) then {name _x} else {"Dead Player"},getPlayerUID _x,round (_x distance _target)];
				if !(_tempArray in _nearby) then {_nearby = _nearby + [_tempArray];};
			};
		} forEach (crew (vehicle _player));
	} forEach (nearestObjects [_target,["AllVehicles"],_range]);

	if (count _nearby == 0) then {_nearby = "None"};
	if (typeName _nearBy == "ARRAY") then {(_nearby call dze_displayString)} else {_nearBy};
};

fnc_nearPlot = {
	private ["_nearestPlot","_plotOwner","_findNearestPole","_plotFriends"];

	_nearestPlot = "";
	_plotOwner = "";
	_findNearestPole = [];

	_findNearestPole = (vehicle _this) nearEntities ["Plastic_Pole_EP1_DZ", if (isServer) then {100} else {DZE_PlotPole select 0}];

	if (count (_findNearestPole) > 0) then {
		_nearestPlot = _findNearestPole select 0;
		_plotFriends = _nearestPlot getVariable ["plotfriends", []];
		_plotOwner = if (count _plotFriends == 0) then {format ["unknown (%1)",_nearestPlot getVariable ["ownerPUID",0]]} else {format ["%1 (%2)",toString ((_plotFriends select 0) select 1),(_plotFriends select 0) select 0]};
	} else {
		_plotOwner = "None"
	};
	_plotOwner
};

DZE_displayString = { // This is from Zupas Advanced Trading but I made this to be portable since it's a great function
	private "_string";

	{
		if (_forEachIndex == 0) then {
			_string = _x;
		} else {
			if (_forEachIndex == ((count _this) - 1)) then {
				_string = _string + " and " + _x;
			} else {
				_string = _string + ", " + _x;
			};
		};
	} forEach _this;

	_string
};

fnc_parseInventory = {
	private ["_array","_count"];

	_array = [];
	{
		if (count (_x select 0) > 0) then {
			_count = _x select 1;
			{
				_array set [count _array,format ["%1 x%2",_x,_count select _forEachIndex]];
			} forEach (_x select 0);
		};
	} count _this;

	if (count _array > 0) then {_array call DZE_displayString} else {"None"}
};