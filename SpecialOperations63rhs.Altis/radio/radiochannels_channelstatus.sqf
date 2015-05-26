/*
	Edited by Lux0r
*/


RADIO_channelStatus = {
	private["_index", "_channelsStatus"];
	_index = _this select 0;
	_channelsStatus = player getVariable "RADIO_channelsStatus";
	
	if(_channelsStatus select _index == 0) then {
		if ((_index != 4) || ((typeOf player) in (SOS_helicopterPilots + SOS_jetPilots))) then {
			[_index] execVM "radio\radioChannels_addToCh.sqf";
			hintSilent format ["CH %1 Enabled", (_index+1)];
		} else {
			hintSilent "You can't use the pilot group channel, if you are not a pilot!";
			playSound "warning1";
		};
	} else {
		[_index] execVM "radio\radioChannels_removeFromCh.sqf";
		hintSilent format ["CH %1 Disabled", (_index+1)];
	};
};