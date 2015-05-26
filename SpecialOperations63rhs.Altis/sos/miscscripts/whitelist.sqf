/*
	Created by Lux0r
*/


SOS_whitelistedPlayers = [
    "76561198086059576", // Przemro
    "76561198042702025", // Nakano
    "76561198069774367", // Nemo
    "76561198016703230", // Rejro
	"76561198067970521", // Psychol
	"76561198126224050", // MrBartek
	"76561198038257291"  // Szelf
];

// Client-side script.
if (!isDedicated) then {
	if (vehicleVarName player == "Havoc1") then {
		if (!((getPlayerUID player) in SOS_whitelistedPlayers)) then {
			endMission "Loser";
		};
	};
};