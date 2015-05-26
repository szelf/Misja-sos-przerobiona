/*
	Edited by Lux0r
*/


_channelsStatus = [0, 0, 0, 0, 0];
player setVariable ["RADIO_channelsStatus", _channelsStatus];

if (isNil "RADIO_INIT") then {
	RADIO_INIT = false;
};

// Server-side: create radio channels.
if (isServer) then {
	_ghostChannel = radioChannelCreate [
		[0.13, 0.33, 1, 1],
		"Ghost",
		"%UNIT_GRP_NAME %UNIT_NAME",
		[]
	];
	
	_pilotChannel = radioChannelCreate [
		[0, 1, 0, 1],
		"Pilot",
		"%UNIT_GRP_NAME %UNIT_NAME",
		[]
	];
	
	_pilotGroupChannel = radioChannelCreate [
		[0, 1, 0, 1],
		"Pilot Group",
		"%UNIT_GRP_NAME %UNIT_NAME",
		[]
	];
	
	_channel1 = radioChannelCreate [
		[1, 0, 0, 1],
		"Channel 1",
		"%UNIT_GRP_NAME %UNIT_NAME",
		[]
	];
	
	_channel2 = radioChannelCreate [
		[1, 0, 0, 1],
		"Channel 2",
		"%UNIT_GRP_NAME %UNIT_NAME",
		[]
	];
	
	RADIO_channels = [_ghostChannel, _pilotChannel, _pilotGroupChannel, _channel1, _channel2];
	publicVariable "RADIO_channels";
	
	RADIO_INIT = true;
	publicVariable "RADIO_INIT";
};

// Client-side
if(!isDedicated) then {
	waitUntil {RADIO_INIT};
	
	[] execVM "radio\radioChannels_channelStatus.sqf";	
	[] execVM "radio\radioChannels_setDefaultCh.sqf";
	
	player addAction ["<t color='#ff3300'>Open Radio Menu</t>", "radio\radioChannels_menu.sqf", [], 9, false];
		
	player addEventHandler ["respawn", {
		player addAction ["<t color='#ff3300'>Open Radio Menu</t>", "radio\radioChannels_menu.sqf", [], 9, false];
		[] execVM "radio\radioChannels_reassignCh.sqf";
	}];
};