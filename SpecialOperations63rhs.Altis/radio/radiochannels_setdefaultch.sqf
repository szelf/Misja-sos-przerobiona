/*
	Created by Lux0r
*/


switch (vehicleVarName player) do {
	case "GhostRecon_TL": {
		[0] execVM "radio\radioChannels_addToCh.sqf"; // Ghost channel
	};
	case "Ghost1_TL": {
		[0] execVM "radio\radioChannels_addToCh.sqf"; // Ghost channel
	};
	case "Ghost2_TL": {
		[0] execVM "radio\radioChannels_addToCh.sqf"; // Ghost channel
	};
	case "Reaper1": {
		[1] execVM "radio\radioChannels_addToCh.sqf"; // Pilot channel
		[2] execVM "radio\radioChannels_addToCh.sqf"; // Pilot Group channel
	};
	case "Reaper2": {
		[1] execVM "radio\radioChannels_addToCh.sqf"; // Pilot channel
		[2] execVM "radio\radioChannels_addToCh.sqf"; // Pilot Group channel
	};
	case "Reaper3": {
		[1] execVM "radio\radioChannels_addToCh.sqf"; // Pilot channel
		[2] execVM "radio\radioChannels_addToCh.sqf"; // Pilot Group channel
	};
	case "Havoc1": {
		[1] execVM "radio\radioChannels_addToCh.sqf"; // Pilot channel
		[2] execVM "radio\radioChannels_addToCh.sqf"; // Pilot Group channel
	};
};