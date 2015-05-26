/*
	Use this script to allow specific classes to spawn helicopters.

	Created by Lux0r
*/


_caller 		= _this select 1;
_arguments 		= _this select 3;
_vehicleType 	= _arguments select 0;
_spawn 			= _arguments select 1;
_whitelisted	= _arguments select 2;
_texture		= _arguments select 3;
_spawnDelay		= 60;


// Check if players class is allowed to spawn a helicopter.
if ((typeOf _caller) in OS_allowHeliSpawnWest) then {
	// Continue if whitelisted is disabled for this helicopter, or if it's enabled and the player is actually whitelisted.
	if (!_whitelisted || (_whitelisted && ((getPlayerUID _caller) in SOS_whitelistedPlayers))) then {
		if (OS_spawnDelay > 0) then {
			hintSilent format["Please try again in about %1 seconds.", OS_spawnDelay];
			playSound "warning1";
		} else {
			// Create the vehicle at a safe position
			_spawnPos = getPos _spawn;
			_safePos = [_spawnPos, 0, 30, 13, 0, 1000, 0, [], [_spawnPos,_spawnPos]] call BIS_fnc_findSafePos;
			_veh = _vehicleType createVehicle _safePos;
			_veh setDir (getDir _spawn);
			
			// Remove weapons and items, re-add some FAKs
			clearWeaponCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			_veh addItemCargoGlobal ["FirstAidKit", 10];
			
			// Replace yellow tracers with red for the armed Hellcat
			if (_vehicleType == "I_Heli_light_03_F") then {
				_veh removeMagazineTurret ["5000Rnd_762x51_Yellow_Belt", [-1]];
				_veh addMagazineTurret ["5000Rnd_762x51_Belt", [-1]];
			};
			
			// Add smoke for helicopter ("lm_helo_support.sqf" must me initialized first!)
			if (_vehicleType in lm_HS_supportedHeloTypes) then {
				[[_veh], 'lm_HS_fnc_initHelo', true, true] call BIS_fnc_MP;
			};
			
			// Open door script
			switch (_vehicleType) do {
				case "B_Heli_Transport_01_F":		{ [[[_veh],"panda_doors\doors_ghosthawk\addaction.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP; };
				case "B_Heli_Transport_01_camo_F":	{ [[[_veh],"panda_doors\doors_ghosthawk\addaction.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP; };
				case "I_Heli_Transport_02_F":		{ [[[_veh],"panda_doors\doors_mohawk\addaction.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP; };
			};
			
			// Change texture
			if (_texture != "") then {
				if (_vehicleType == "I_Heli_light_03_unarmed_F" || _vehicleType == "I_Heli_light_03_F") then {
					_veh setObjectTextureGlobal [0, format["SOS\Textures\%1.paa", _texture]];
				};
				
				if (_vehicleType == "I_Heli_Transport_02_F") then {
					_veh setObjectTextureGlobal [0, format["SOS\Textures\%1.paa", _texture]];
					_veh setObjectTextureGlobal [1, format["SOS\Textures\%1.paa", _texture]];
					_veh setObjectTextureGlobal [2, format["SOS\Textures\%1.paa", _texture]];
				};
			};
			
			// Protect the pilot seat
			if (_vehicleType == "B_Heli_Attack_01_F") then {
				[[[_veh],"SOS\ObjectSpawn\protectWhitelistedHelicopterSeats.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
			} else {
				[[[_veh],"SOS\ObjectSpawn\protectHelicopterPilotSeat.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;
			};
			
			if (OS_disableThermal == 1) then {
				_veh disableTIEquipment true;
			};
			
			OS_spawnDelay = OS_spawnDelay + _spawnDelay;
			playSound "confirm1";
		};
	} else {
		hintSilent "You can't spawn this helicopter, if you are not whitelisted!";
		playSound "warning1";
	};
} else {
	hintSilent "You can't spawn this helicopter, if you are not a helicopter pilot!";
	playSound "warning1";
};