# [EPOCH 1.0.6.x] fnc_Log
Modular server/client logging function with logging DLL

Credits:
* Special thanks to [@dtavana / TwiSt#7777](https://github.com/dtavana/LogDLL) for providing the logging DLL and source
* Thanks to [@RedLink](https://github.com/RedLink-kam) for the daily log rotation idea and changes

* All logfiles will be placed in <code>Logs\<filename>_DD-MM-YYYY.txt</code>
* 3rd param is boolean, defaults to false for displaying to server RPT.
* https://github.com/oiad/LogDLL is my fork of @dtavana repo
* Log folders seperated by type in one common folder or sorted by day

Syntax:

```sqf
_fileName = toLower (_this select 0);
_message = _this select 1;
_display = if (count _this > 2) then {_this select 2} else {false};
```

```sqf
["filename","message goes here",true/false optional defaults to false] call fnc_Log;
```

```sqf
_message = format ["%1 (%2) failed to hotwire %3 (charID: %6) @%4 %5",dayz_playerName,dayz_playerUID, typeOf _vehicle, mapGridPosition _pos,_pos,_vehicle getVariable ["CharacterID","0"]];

["hotwire",_message,true] call fnc_log;
```

```sqf
_message = format["GARAGE: %1 (%2) stored %3 @%4 %5",_name,_playerUID,_class,mapGridPosition _player,getPosATL _player];
diag_log _message;

["garage",_message] call fnc_Log;
```

# REPORTING ERRORS/PROBLEMS

1. Please, if you report issues can you please attach (on pastebin or similar) your CLIENT rpt log file as this helps find out the errors very quickly. To find this logfile:

	```sqf
	C:\users\<YOUR WINDOWS USERNAME>\AppData\Local\Arma 2 OA\ArmA2OA.RPT
	```

# Index:

* [Arma 2 OA install](https://github.com/oiad/scripts/tree/master/fnc_log#arma-2-oa-install)
* [Mission folder install](https://github.com/oiad/scripts/tree/master/fnc_log#mission-folder-install)
* [dayz_server folder install](https://github.com/oiad/scripts/tree/master/fnc_log#dayz_server-folder-install)
* [Daily folder rotation](https://github.com/oiad/scripts/tree/master/fnc_log#daily-folder-rotation)
* [Battleye filter install](https://github.com/oiad/scripts/tree/master/fnc_log#battleye-filter-install)
	
# Arma 2 OA install:

1. Copy <code>LogDLL.dll</code> from the repo to your Arma2 OA root directory

# Mission folder install:

1. In mission\init.sqf find: <code>call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";</code> and add this directly below:

	```sqf
	call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";
	```

# dayz_server folder install:

1. in <code>dayz_server\init\server_functions.sqf</code> add this line to the very bottom:

	```sqf

	"SK_log" addPublicVariableEventHandler {(_this select 1) call fnc_Log};

	```

# Daily folder rotation

1. Copy the specific date format <code>LogDLL (dd-MM-yyyy, MM-dd-yyyy or yyyy-MM-dd)</code> to your Arma 2 OA directory, this will then make a daily log directory in <code>Logs\</code> i.e:
```
Logs\10-02-2019\login_10-02-2019.txt
Logs\10-02-2019\hotwire_10-02-2019.txt
```
	
# Battleye filter install:

1. This assumes you are running the DEFAULT epoch filters.

2. On line 2 of <code>config\<yourServerName>\Battleye\publicVariable.txt</code> add <code>!=SK_Log</code> to the end of the line so it looks like this:
	```sqf
	5 !=(remExField|remExFP) <CUT> !=SK_Log
	```
