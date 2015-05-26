////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////
////	Special Forces
////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


private["_missionPos", "_grpPos", "_overwatchPos", "_mrkPos", "_mrkPatrol", "_mrk", "_counter", "_ifrit"];

_patrolAreaIndex	= (CPG_sideMissions_counter + 1) mod CPG_patrolArea_number;
_patrolAreaPos		= CPG_patrolArea_positions select _patrolAreaIndex;

_check = [];
_counter = 0;
_equal1 = true;
_equal2 = true;

// We want to find a good position to create the special forces, so we need the isFlatEmpty function to check if
// the position found by BIS_fnc_findSafePos is a good one. If not, retry.
while {(_equal1 || _equal2) && _counter < 10000} do {
	_missionPos = [_patrolAreaPos, 0, (1500*CPG_sideMissions_radiusMulti), 4, 0, 0, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_check = _missionPos isFlatEmpty  [ 12, 1, 0.2, 15, 0, false, objNull];
	_counter = _counter + 1;
	_equal1 = [[], _check] call BIS_fnc_areEqual;
	_normal = surfaceNormal  _missionPos;
	
	if ((_normal select 2) > 0.99) then	{
		_equal2 = false;
		// hint format ["%1", _normal];
	} else {
		_equal2 = true;
	};
};

// This is a safety measure: if after 10000 iterations of the previous code you still haven't found
// a suitable place, don't execute the mission itself.
if (_counter < 10000) then {
	CPG_sideMissions_counter = CPG_sideMissions_counter + 1;

	_camoNet1 = createVehicle ["CamoNet_OPFOR_F", [(_missionPos select 0) + 8, _missionPos select 1], [], 0, "CAN_COLLIDE"];
	_camoNet1 setVectorUp (surfaceNormal _missionPos);
	_camoNet1 setDir 90;
	_camoNet2 = createVehicle ["CamoNet_OPFOR_open_F", [(_missionPos select 0) - 10, _missionPos select 1], [], 0, "CAN_COLLIDE"];
	_camoNet2 setVectorUp (surfaceNormal _missionPos);
	_camoNet2 setDir 270;
	
	if ((random 100) < 70) then	{
		_ifrit = createVehicle ["rhs_btr80_msv", _missionPos, [], 0, "NONE"];
		_ifrit setVehicleLock "LOCKED";
		
		_group_0 = createGroup east;
		_ai = _group_0 createUnit ["rhs_msv_rifleman", _missionPos, [], 0, "NONE"];
		_ai moveInDriver _ifrit;
		_ai = _group_0 createUnit ["rhs_msv_rifleman", _missionPos, [], 0, "NONE"];
		_ai moveInGunner _ifrit;
		
		_mrkPatrol = [_missionPos, [400, 400]] call CPG_fnc_createPatrolMarker;
		[leader _group_0, _mrkPatrol, "random", "spawned"] execVM "scripts\UPSMON.sqf";
	} else {
		_ifrit = createVehicle ["rhs_bmp1k_msv", _missionPos, [], 0, "NONE"];
		_ifrit setVehicleLock "LOCKED";
		
		_group_0 = createGroup east;
		_ai = _group_0 createUnit ["rhs_msv_rifleman", _missionPos, [], 0, "NONE"];
		_ai moveInDriver _ifrit;
		_ai = _group_0 createUnit ["rhs_msv_rifleman", _missionPos, [], 0, "NONE"];
		_ai moveInGunner _ifrit;
		
		_mrkPatrol = [_missionPos, [400, 400]] call CPG_fnc_createPatrolMarker;
		[leader _group_0, _mrkPatrol, "random", "spawned"] execVM "scripts\UPSMON.sqf";
	};
	
	_barrel1 = createVehicle ["Land_MetalBarrel_F", [(_missionPos select 0) + 2, (_missionPos select 1) + 8.5], [], 0, "CAN_COLLIDE"];
	_barrel2 = createVehicle ["Land_MetalBarrel_F", [(_missionPos select 0) + 8.5, (_missionPos select 1) + 2], [], 0, "CAN_COLLIDE"];
	_barrel3 = createVehicle ["Land_MetalBarrel_F", [(_missionPos select 0) + 8.5, (_missionPos select 1) + 3], [], 0, "CAN_COLLIDE"];
	_barrel4 = createVehicle ["Land_BarrelWater_F", [(_missionPos select 0) + 8.5, (_missionPos select 1) - 1], [], 0, "CAN_COLLIDE"];
	
	_box = createVehicle ["Land_WoodenBox_F", [(_missionPos select 0) - 10, _missionPos select 1], [], 0, "CAN_COLLIDE"];
	_box setVectorUp (surfaceNormal  _missionPos);
	_box setDir 270;

	// create 1. special forces group
	_grpPos = [_missionPos, 0, 50, 4, 0, 0, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_grp = createGroup east;
	_leader1 = _grp createUnit ["rhs_msv_junior_sergeant", _grpPos, [], 0, "CAN_COLLIDE"];
	_ai = _grp createUnit ["rhs_msv_marksman", _grpPos, [], 0, "CAN_COLLIDE"];
	_ai = _grp createUnit ["rhs_msv_at", _grpPos, [], 0, "CAN_COLLIDE"];
	_ai = _grp createUnit ["rhs_msv_strelok_rpg_assist", _grpPos, [], 0, "CAN_COLLIDE"];
	_ai = _grp createUnit ["rhs_msv_medic", _grpPos, [], 0, "CAN_COLLIDE"];
	_ai = _grp createUnit ["rhs_msv_machinegunner", _grpPos, [], 0, "CAN_COLLIDE"];
    _ai addPrimaryWeaponItem "muzzle_snds_H";		// TODO (Lux0r): check if needed
	_mrkPatrol = [_missionPos, [100, 100]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "random", "spawned"] execVM "scripts\UPSMON.sqf";

	// create 2. special forces group
	_grpPos = [_missionPos, 0, 100, 4, 0, 0, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_grp = createGroup east;
	_leader2 = _grp createUnit ["rhs_msv_junior_sergeant", _grpPos, [], 0, "CAN_COLLIDE"];
	_ai = _grp createUnit ["rhs_msv_marksman", _grpPos, [], 0, "CAN_COLLIDE"];
	_ai = _grp createUnit ["rhs_msv_at", _grpPos, [], 0, "CAN_COLLIDE"];
	_ai = _grp createUnit ["rhs_msv_strelok_rpg_assist", _grpPos, [], 0, "CAN_COLLIDE"];
	_ai = _grp createUnit ["rhs_msv_medic", _grpPos, [], 0, "CAN_COLLIDE"];
	_mrkPatrol = [_missionPos, [200, 200]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "random", "spawned"] execVM "scripts\UPSMON.sqf";

	// create group
	_overwatchPos = [_missionPos, 250, 25, 20] call BIS_fnc_findOverwatch;
	_grpPos = [_overwatchPos, 0, 15, 2, 0, 1000, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_grpCfg = ["Infantry"] call CPG_fnc_chooseGroupConfig;
	_grp = [_grpPos, east, _grpCfg, [], [], [0.45,0.9], [], [], (random 360)] call BIS_fnc_spawnGroup;
	_mrkPatrol = [_grpPos, [300, 300]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "nofollow", "random", "spawned"] execVM "scripts\UPSMON.sqf";
	
	// ----------------------------------------------------------------------------------------------------
	
	_taskName = format ["TaskDSM_%1", CPG_sideMissions_counter];
	CPG_taskNames pushBack _taskName;
	_taskTitle = "Defeat Special Forces";
	_taskDesc = "Enemy forces have set up a recon FOB for Special Forces activity on the island. This is a threat we cannot tolerate and it must be eradicated at once.<br/><br/>Defeat the Special Forces squad.";
	_taskImage = "<img image='CombatPatrolGenerator\DSM\pix\SpecialForces.jpg'/><br/><br/>";

	if (CPG_sideMissions_showMarker == 1) then {
		_mrkPos = [_missionPos, 10, 100, 0, 0, 1000, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
		
		// create a task with destination
		[_taskName, _taskTitle, _taskImage + _taskDesc, true, [], "created", _mrkPos] call SHK_Taskmaster_add;
		
		// create marker
		_mrk = [format ["m_cpg_sideMission%1",CPG_sideMissions_counter], _mrkPos, "o_recon", "ColorRed", 0.8, "Solid", _taskTitle] call CPG_fnc_createMarker;
	} else {
		// create a task without destination
		[_taskName, _taskTitle, _taskImage + _taskDesc] call SHK_Taskmaster_add;
	};
	
	message = parseText format ["<br/><img image='CombatPatrolGenerator\DSM\pix\SpecialForces.jpg' size='7' align='center'/><br/><br/>
	<t align='center' size='2'>Objective</t><br/>
	<t align='center' size='1.5'>%1</t><br/><br/>
	<t align='center' size='1.5' color='#08b000'>Assigned</t><br/><br/>
	%2", _taskTitle, _taskDesc];

	[message,"hintThis"] call BIS_fnc_MP;

	waitUntil { sleep 5; count units group _leader1 == 0 && count units group _leader2 == 0 };
	
	[_taskName, "succeeded"] call SHK_Taskmaster_upd;
	
	if (CPG_sideMissions_showMarker == 1) then {
		_mrk setMarkerColor "ColorGreen";
		_mrk setMarkerText "Special Forces Defeated";
	};

	message = parseText format ["<img image='SOS\Pictures\SOS.jpg' size='7' align='center'/><br/><br/>
	<t align='center' size='2'>Objective</t><br/>
	<t align='center' size='1.5'>%1</t><br/><br/>
	<t align='center' size='1.5' color='#01df01'>Completed</t><br/><br/>
	The enemy Recon unit has been defeated: this deadly threat to our operation has finally been dismantled.<br/>
	Good job everyone.", _taskTitle];

	[message,"hintThis"] call BIS_fnc_MP;
};