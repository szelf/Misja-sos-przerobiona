/*
	Use this script to allow specific classes to spawn tanks.

	Created by Lux0r
*/


_caller			= _this select 1;
_arguments		= _this select 3;
_vehicleType	= _arguments select 0;
_spawn			= _arguments select 1;
_whitelisted	= _arguments select 2;
_texture		= _arguments select 3;
_spawnDelay		= 60;


// Check if players class is allowed to spawn a tank.
if ((typeOf _caller) in OS_allowTankSpawnWest) then {
	// Continue if whitelisted is disabled for this tank, or if it's enabled and the player is actually whitelisted.
	if (!_whitelisted || (_whitelisted && ((getPlayerUID _caller) in SOS_whitelistedPlayers))) then {
		if (OS_spawnDelay > 0) then {
			hintSilent format["Please try again in about %1 seconds.", OS_spawnDelay];
			playSound "warning1";
		} else {
			// Create the vehicle
			_spawnPos = getPos _spawn;
			_veh = _vehicleType createVehicle [_spawnPos select 0, _spawnPos select 1, (_spawnPos select 2) + 0.5];
			_veh setDir (getDir _spawn);
			
			// Remove weapons
			clearWeaponCargoGlobal _veh;
			
			if (OS_disableThermal == 1) then {
				_veh disableTIEquipment true;
			};
			
			OS_spawnDelay = OS_spawnDelay + _spawnDelay;
			playSound "confirm1";
		};
	} else {
		hintSilent "You can't spawn this tank, if you are not whitelisted!";
		playSound "warning1";
	};
} else {
	hintSilent "You can't spawn this tank, if you are not a PL/SL/in a tank crew!";
	playSound "warning1";
};