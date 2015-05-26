/*
	This script contains the groupIDs for the different sides, used by the Platoon List.

	IMPORTANT: The size and order must be the same as the groupColors in "fn_getGroupColors.sqf".

	Created by Lux0r
*/


private ["_side","_groupIDs"];

_side = [_this, 0] call BIS_fnc_param;


_groupIDs = switch (_side) do {
	case WEST:	{[
		"Platoon Lead",
		"Shadow Lead",
		"Shadow Recon",
		"Shadow 1",
		"Shadow 2",
		"Ghost Lead",
		"Ghost Recon",
		"Ghost 1",
		"Ghost 2",
		"Reaper 1",
		"Reaper 2",
		"Reaper 3",
		"Reaper 4",
		"Havoc 1"
	];};
	case EAST:			{[];};
	case RESISTANCE:	{[];};
	case CIVILIAN:		{[];};
	default				{[];};
};

_groupIDs