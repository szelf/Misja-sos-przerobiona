/*
	Created by Lux0r
*/


disableSerialization;

private["_index", "_channelsStatus", "_button"];
_index = _this select 0;
_channelsStatus = player getVariable "RADIO_channelsStatus";

_channelsStatus set [_index, 1];
player setVariable ["RADIO_channelsStatus", _channelsStatus];
(RADIO_channels select _index) radioChannelAdd [player];
_button = (findDisplay 2815) displayCtrl ((_index * 100 ) + 100);
_button ctrlSetTextColor [0, 1, 0, 1];
_button ctrlSetText "ON";