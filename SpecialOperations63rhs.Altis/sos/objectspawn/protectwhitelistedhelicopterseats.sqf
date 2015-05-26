/*
	This Script adds an eventHandler to the given vehicle, so only whitelisted pilots can get in.

	Created by Lux0r
*/


_veh = _this select 0;

_veh addEventHandler ["GetIn", {
	_veh		= _this select 0;
	_position	= _this select 1;
	_unit		= _this select 2;
	
	if (!((typeOf _unit) in (SOS_helicopterPilots + SOS_jetPilots)) || !((getPlayerUID _unit) in SOS_whitelistedPlayers)) then {
		_unit action ["engineOff", _veh];
		moveOut _unit;
	};
}];