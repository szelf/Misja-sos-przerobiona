/*
	This script spawns empty Opfor vehicles, depending on how big the group next to it is.
	The group size, position and chance to spawn is determined by the parameters.

	Parameters:
	_this select 0: Coordinates - Random position will be chosen nearby the coordinates given.
	_this select 1: Integer - From 0 to 100. Determines chance to spawn the vehicles. An integer higher than 99 will always result in vehicles getting spawned.
	_this select 2: Group - The script counts how large the group is and spawns enough vehicles for the entire group. The vehicles are assigned to the group.
	_this select 3: String - Vehicle type to spawn. Must be either "ATVs" or "Quadbikes".

	Returns: Nothing

	Edited by Lux0r
*/


private ["_pos","_chance","_grp","_type","_count","_range","_class","_needGunner","_vehPos","_veh","_driver","_gunner"];

_pos	= [_this, 0] call BIS_fnc_param;
_chance	= [_this, 1] call BIS_fnc_param;
_grp	= [_this, 2] call BIS_fnc_param;
_type	= [_this, 3] call BIS_fnc_param;
_armed	= [_this, 4, false] call BIS_fnc_param;


if ((floor(random 100)) < _chance) then {
	_count	= count units _grp;
	
	switch (_type) do {
		case "ATVs": {
			_range	= if (_armed) then {12} else {17};
			_class	= "";
			
			while {_count > 0} do {
				_needGunner = false;
				
				switch (floor(random _range)) do {
					case 0;
					case 1;
					case 2:	{	// 20% chance to spawn Ifrit GMG
						_class = "rhs_bmp1k_vdv";
						_count = _count - 3;
						_needGunner = true;
					};
					case 3;
					case 4;
					case 5:	{	// 20% chance to spawn Ifrit GMG
						_class = "rhs_bmd1p";
						_count = _count - 3;
						_needGunner = true;
					};
					case 6;
					case 7;
					case 8:	{	// 30% chance to spawn Ifrit HMG
						_class = "rhs_btr80a_vdv";
						_count = _count - 3;
						_needGunner = true;
					};
					case 9;
					case 10;
					case 11:	{	// 30% chance to spawn Ifrit HMG
						_class = "rhs_btr80_vdv";
						_count = _count - 3;
						_needGunner = true;
					};
					case 12;
					case 13;
					case 14:	{	// 30% chance to spawn Ifrit
						_class = "rhs_tigr_ffv_vdv";
						_count = _count - 4;
					};
					case 15:	{	// 10% chance to spawn Zamak Transport
						_class = "RHS_Ural_Open_VDV_01";
						_count = _count - 15;
					};
					case 16:	{	// 10% chance to spawn Zamak Transport (Covered)
						_class = "RHS_Ural_VDV_01";
						_count = _count - 15;
					};
				};
				
				_vehPos = [_pos, 0, 100, 8, 0, 0.5, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
				_veh = _class createVehicle _vehPos;
				_veh setDir (random 360);
				_veh setVehicleLock "LOCKED";
				_grp addVehicle _veh;
				
				_crewPos = [_vehPos, 4, 20, 4, 0, 0, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
				_driver = _grp createUnit ["rhs_vdv_driver_armored", _crewPos, [], 0, "NONE"];
				_driver moveInDriver _veh;
				_driver assignAsDriver _veh;
				
				if (_needGunner) then {
					_gunner = _grp createUnit ["rhs_vdv_armoredcrew", _crewPos, [], 0, "NONE"];
					_gunner moveInGunner _veh;
					_gunner assignAsGunner _veh;
				};
			};
		};
		case "Quadbikes": {
			for [{_i = _count}, {_i > 0}, {_i = _i - 2}] do {
				_vehPos = [_pos, 0, 100, 8, 0, 0.5, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
				_veh = "rhs_uaz_open_vdv" createVehicle _vehPos;
				_veh setDir (random 360);
				_grp addVehicle _veh;
			};
		};
	};
};