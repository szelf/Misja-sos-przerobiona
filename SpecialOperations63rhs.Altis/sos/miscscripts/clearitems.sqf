/*
	This script removes dropped items/weapons in a defined radius around the "m_baseWest" marker.

	Created by Lux0r
*/


// Run this script only on server-side.
if (isServer) then {
	_radius	= 300;
	_mrkPos	= getMarkerpos "m_baseWest";

	while {true} do {
		_clear = nearestObjects [_mrkPos, ["WeaponHolder", "GroundWeaponHolder", "WeaponHolderSimulated"], _radius];
		
		{
			deleteVehicle _x;
		} forEach _clear;

		sleep 180;
	};
};