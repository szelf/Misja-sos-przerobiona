/*
	Add action to the given UAV, so players can recharge it (with short animation) if they are close enough.

	Created by Lux0r
*/


_uav = _this select 0;

_uav addAction ["Recharge UAV", {
	_uav = _this select 0;
	_unit = _this select 1;
	
	_unit playAction "Gear";
	sleep 2;
	_unit playAction "PutDown";
	sleep 2;
	
	_uav setFuel 1;
	hintSilent "UAV is recharged";
	playSound "Confirm1";
}, [], 4, true, true, "", "(player distance _target) < 2"];