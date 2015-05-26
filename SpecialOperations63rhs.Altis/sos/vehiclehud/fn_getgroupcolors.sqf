/*
	This script contains the groupColors for the different sides, used by the Platoon List.

	IMPORTANT: The size and order must be the same as the groupIDs in "fn_getGroupIDs.sqf".

	Created by Lux0r
*/


private ["_side","_groupColors"];

_side = [_this, 0] call BIS_fnc_param;


_groupColors = switch (_side) do {
	case WEST:	{[
		"#ff8800",	// Brown	(Platoon Lead)
		"#ff0000",	// Red		(Shadow Lead)
		"#ff0000",	// Red		(Shadow Recon)
		"#ff0000",	// Red		(Shadow 1)
		"#ff0000",	// Red		(Shadow 2)
		"#2255ff",	// Blue		(Ghost Lead)
		"#2255ff",	// Blue		(Ghost Recon)
		"#2255ff",	// Blue		(Ghost 1)
		"#2255ff",	// Blue		(Ghost 2)
		"#00ff00",	// Green	(Reaper 1)
		"#00ff00",	// Green	(Reaper 2)
		"#00ff00",	// Green	(Reaper 3)
		"#00ff00",	// Green	(Reaper 4)
		"#FF7F00"	// Orange	(Havoc 1)
	];};
	case EAST:			{[];};
	case RESISTANCE:	{[];};
	case CIVILIAN:		{[];};
	default				{[];};
};

_groupColors