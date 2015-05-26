/*
	Created by Lux0r
*/


private["_channelsStatus"];
_channelsStatus = player getVariable "RADIO_channelsStatus";

{
	if (_x == 1) then {
		[_forEachIndex] execVM "radio\radioChannels_removeFromCh.sqf";
	};
} forEach _channelsStatus;