/*
	Define global variables, that are used by different scripts from the object spawn.

	Created by Lux0r
*/


OS_disableThermal = ["DisableThermal", 1] call BIS_fnc_getParamValue;

// Array with all unit types that are allowed to spawn vehicles.
OS_allowVehicleSpawnWest = [
	"B_Soldier_SL_F",
	"B_Soldier_TL_F",
	"B_recon_TL_F",
	"B_Pilot_F",
	"B_Helipilot_F",
	"B_helicrew_F"
];

// Array with all unit types that are allowed to spawn APCs.
OS_allowAPCSpawnWest = [
	"B_Soldier_SL_F",
	"B_Soldier_TL_F",
	"B_recon_TL_F",
	"B_Pilot_F",
	"B_Helipilot_F",
	"B_helicrew_F"
];

// Array with all unit types that are allowed to spawn tanks.
OS_allowTankSpawnWest = [
	"B_Soldier_SL_F",
	"B_Soldier_TL_F",
	"B_recon_TL_F",
	"B_engineer_F"
];

// Array with all unit types that are allowed to spawn helicopters.
OS_allowHeliSpawnWest = [
	"B_Soldier_SL_F",
	"B_Pilot_F",
	"B_Helipilot_F",
	"B_helicrew_F"
];

// Array with all unit types that are allowed to spawn jets.
OS_allowJetSpawnWest = [
	"B_Soldier_SL_F",
	"B_Pilot_F"
];

// Array with all unit types that are allowed to spawn UAVs.
OS_allowUAVSpawnWest = [
	"B_Soldier_SL_F",
	"B_Soldier_TL_F",
	"B_recon_TL_F",
	"B_Pilot_F",
	"B_Helipilot_F",
	"B_helicrew_F"
];


// Array with all unit types that are allowed to spawn boats.
OS_allowBoatSpawnWest = [
	"B_Soldier_SL_F",
	"B_Soldier_TL_F",
	"B_recon_TL_F",
	"B_Pilot_F",
	"B_Helipilot_F",
	"B_helicrew_F"
];

// Spawn delay to prevent vehicle spam.
[] execVM "SOS\ObjectSpawn\spawnDelay.sqf";