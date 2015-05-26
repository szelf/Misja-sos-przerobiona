/*
	Server adds a action to all UAVs in the mission, that allows the player to recharge them.

	Created by Lux0r
*/


// Run this script only on server-side.
if (isServer) then {
	// Array with all UAVs, that already have the recharge action.
	_UAVs = [];

	while {true} do {
		_newUAVs = allUnitsUav - _UAVs;
		//hint format ["_newUAVs: %1", _newUAVs];
		
		{
			[[[_x],"SOS\UAV\addAction.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP;
			
			_UAVs pushBack _x;
		} forEach _newUAVs;
		
		sleep 10;
	};
};