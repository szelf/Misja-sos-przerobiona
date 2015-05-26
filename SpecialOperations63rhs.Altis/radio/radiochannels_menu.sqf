/*
	Edited by Lux0r
*/


_ok = createDialog "RadioChannels";
disableSerialization;
_display = findDisplay 2815;
_channelsStatus = player getVariable "RADIO_channelsStatus";

{
	_button = _display displayCtrl ((_forEachIndex * 100) + 100);
	if(_x == 0) then {
		_button ctrlSetTextColor [1, 0, 0, 1];
		_button ctrlSetText "OFF";
	} else {
		_button ctrlSetTextColor [0, 1, 0, 1];
		_button ctrlSetText "ON";
	};
} forEach _channelsStatus;