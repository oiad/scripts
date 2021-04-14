fnc_Log
Pretty useful functions mainly geared towards logging purposes.

# <code>fnc_nearBy</code> Syntax:

```sqf
	[_object,600] call fnc_nearBy;
```

This will list the players and sort by range within 600 meters of the object stored in '_object'

results: 
nearBy: None
nearBy: oiad (76561197999617086) [30m], oiad (76561197999617086) [220m] and oiad (76561197999617086) [440m]

# <code>fnc_nearPlot</code> syntax:

```sqf
	_object call fnc_nearPlot;
```

This will return the owner name and PUID of the nearest plot

results: 
nearPlot: None
nearPlot: oiad (76561197999617086)

# <code>fnc_parseInventory</code> syntax:

```sqf
	_inventory call fnc_parseInventory
```

Takes an inventory array and makes it pretty

results:
inventory: None
inventory: PartFueltank x2, PartVRotor x1, PartGeneric x2, PartEngine x1, PartGlass x10, 100Rnd_762x51_M240 x1, ItemAntibiotic5 x1 and ItemFuelBarrelEmpty x2

# <code>DZE_displayString</code> syntax:

```sqf
	_array call DZE_displayString
```

Will process an array and return a string nicely formatted

Results: 
100Rnd_762x51_M240, ItemAntibiotic5 and ItemFuelBarrelEmpty

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

1. Copy the specific date format <code>LogDLL (dd-MM-yyyy, MM-dd-yyyy or yyyy-MM-dd)</code> to your Arma 2 OA directory, this will then make a daily log directory in <code>Logs\\</code> i.e:
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
