/*
	This script chooses a random enemy group that is to be spawned. It returns a group config, depending on the type parameter.

	Parameters:
	_this select 0: String - Must be either "Infantry" or "MotInf".

	Returns: Group Config

	Edited by Lux0r
*/


private ["_type","_grpCfg"];

_type	= [_this, 0] call BIS_fnc_param;
_grpCfg	= "";


switch (_type) do {
	case "Infantry": {
		_grpCfg = switch (floor(random 8)) do {
			case 0:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_mflora" >> "rhs_group_rus_vdv_infantry_mflora_squad";};
			case 1:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_mflora" >> "rhs_group_rus_vdv_infantry_mflora_squad_mg_sniper";};
			case 2:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_mflora" >> "rhs_group_rus_vdv_infantry_mflora_squad_2mg";};
			case 3:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_mflora" >> "rhs_group_rus_vdv_infantry_mflora_squad_2mg";};
			case 4:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_mflora" >> "rhs_group_rus_vdv_infantry_mflora_section_AT";};
			case 5:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_mflora" >> "rhs_group_rus_vdv_infantry_mflora_section_AA";};
			case 6:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_mflora" >> "rhs_group_rus_vdv_infantry_mflora_fireteam";};
			case 7:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry_mflora" >> "rhs_group_rus_vdv_infantry_mflora_MANEUVER";};
		};
	};
	case "MotInf": {
		_grpCfg = switch (floor(random 5)) do {
			case 0:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_bmp1" >> "rhs_group_rus_vdv_bmp1_squad";};
			case 1:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_bmd4" >> "rhs_group_rus_vdv_bmd4_squad";};
			case 2:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_BTR80a" >> "rhs_group_rus_vdv_BTR80a_squad_2mg";};
			case 3:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_Ural" >> "rhs_group_rus_vdv_Ural_squad";};
			case 4:	{configFile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_2s25" >> "RHS_2S25Platoon";};
		};
	};
};

_grpCfg