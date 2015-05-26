/*
	Created by Lux0r
*/


_channelsBackup = +(player getVariable "RADIO_channelsStatus");

_removeFromAllCh = [] execVM "radio\radioChannels_removeFromAllCh.sqf";
waitUntil {scriptDone _removeFromAllCh};

{
	if (_x == 1) then {
		[_forEachIndex] execVM "radio\radioChannels_addToCh.sqf";
	};
} forEach _channelsBackup;