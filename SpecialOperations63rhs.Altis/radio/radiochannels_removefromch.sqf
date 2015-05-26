/*
	Created by Lux0r
*/


disableSerialization;

private["_index", "_channelsStatus", "_button"];
_index = _this select 0;
_channelsStatus = player getVariable "RADIO_channelsStatus";

_channelsStatus set [_index, 0];
player setVariable ["RADIO_channelsStatus", _channelsStatus];
(RADIO_channels select _index) radioChannelRemove [player];
_button = (findDisplay 2815) displayCtrl ((_index * 100 ) + 100);
_button ctrlSetTextColor [1, 0, 0, 1];
_button ctrlSetText "OFF";