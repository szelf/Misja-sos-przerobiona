/*
	This script removes destroyed, immobile, and out of fuel vehicles with no crew in a defined radius around the "m_airfield" marker.

	Edited by Lux0r
*/


// Run this script only on server-side.
if (isServer) then {
	_radius	= 1000;
	_mrkPos	= getMarkerpos "m_airfield";

	while {true} do {
		_vehs = nearestObjects [_mrkPos, ["LandVehicle", "Air"], _radius];
		
		{
			if (!alive _x || ((!canMove _x || fuel _x <= 0) && {alive _x} count crew _x < 1)) then {
				deleteVehicle _x;
			};
		} forEach _vehs;
		
		sleep 60;
	};
};