/*
	Created by Lux0r
*/


_unit = _this select 0;

while {alive _unit} do {
	_backpack = unitBackpack _unit;
	clearMagazineCargoGlobal _backpack;
	_backpack addMagazineCargoGlobal ["rhs_mag_9k38_rocket",2];
	
	sleep 60;
};