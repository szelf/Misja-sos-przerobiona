/*
	This Script adds an eventHandler to the given vehicle, so only pilots can get in driver seat.

	Created by Lux0r
*/


_veh = _this select 0;

_veh addEventHandler ["GetIn", {
	_veh		= _this select 0;
	_position	= _this select 1;
	_unit		= _this select 2;
	
	if (!((typeOf _unit) in (SOS_helicopterPilots + SOS_jetPilots)) && (_position == "driver")) then {
		_unit action ["GetOut", _veh];
	};
}];