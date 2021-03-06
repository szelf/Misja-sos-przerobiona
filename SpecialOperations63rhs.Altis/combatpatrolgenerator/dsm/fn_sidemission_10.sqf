////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////
////	Mortar Site
////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


private["_missionPos", "_grpPos", "_overwatchPos", "_mrkPos", "_barrier1", "_barrier2", "_barrier3", "_barrier4", "_barrel1", "_mrkPatrol", "_mrk", "_counter", "_gunner", "_grp"];

_patrolAreaIndex	= (CPG_sideMissions_counter + 1) mod CPG_patrolArea_number;
_patrolAreaPos		= CPG_patrolArea_positions select _patrolAreaIndex;

_check = [];
_counter = 0;
_equal1 = true;
_equal2 = true;

// We want to find a good position to create the mortar site, so we need the isFlatEmpty function to check if
// the position found by BIS_fnc_findSafePos is a good one. If not, retry.
while {(_equal1 || _equal2) && _counter < 10000} do {
	_missionPos = [_patrolAreaPos, 0, (1800*CPG_sideMissions_radiusMulti), 4, 0, 0, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_check = _missionPos isFlatEmpty [ 12, 1, 0.2, 15, 0, false, objNull]; 
	_counter = _counter + 1;
	_equal1 = [[], _check] call BIS_fnc_areEqual;	
	_normal = surfaceNormal _missionPos;
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

	_barrier1 = createVehicle ["Land_HBarrier_5_F", [(_missionPos select 0) + 5, _missionPos select 1], [], 0, "CAN_COLLIDE"];
	_barrier1 setVectorUp (surfaceNormal _missionPos);
	_barrier1 setDir 90;
	_barrier2 = createVehicle ["Land_HBarrier_5_F", [(_missionPos select 0) - 5, _missionPos select 1], [], 0, "CAN_COLLIDE"];
	_barrier2 setVectorUp (surfaceNormal _missionPos);
	_barrier2 setDir 270;
	_barrier3 = createVehicle ["Land_HBarrier_5_F", [_missionPos select 0, (_missionPos select 1) + 5], [], 0, "CAN_COLLIDE"];
	_barrier3 setVectorUp (surfaceNormal _missionPos);
	_barrier4 = createVehicle ["Land_HBarrier_5_F", [_missionPos select 0, (_missionPos select 1) - 5], [], 0, "CAN_COLLIDE"];
	_barrier4 setVectorUp (surfaceNormal _missionPos);

	_barrel1 = createVehicle ["Land_MetalBarrel_F", [(_missionPos select 0) - 1, (_missionPos select 1) - 1.5], [], 0, "CAN_COLLIDE"];

	_ammo1 = createVehicle ["Box_East_AmmoOrd_F", [(_missionPos select 0) + 2, (_missionPos select 1) + 2.5], [], 0, "CAN_COLLIDE"];
	_ammo1 addEventHandler ["killed", "_this select 1 addScore 3;"];
	clearMagazineCargoGlobal _ammo1;
	_ammo1 addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 5];
	_ammo1 addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 5];


	// create mortar
	_grp = createGroup east;
	_mortar = createVehicle ["O_Mortar_01_F", [(_missionPos select 0) + 2, (_missionPos select 1)], [], 0, "NONE"];
	//_mortar setVehicleLock "LOCKED";
	_gunner = _grp createUnit ["rhs_vdv_rifleman", [(_missionPos select 0) + 2.5, (_missionPos select 1)], [], 0, "NONE"];
	_gunner moveInGunner _mortar;
	_gunner assignAsGunner _mortar;

	_mrkPatrol = [_missionPos, [100, 100]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "nofollow", "spawned"] execVM "scripts\UPSMON.sqf";

	// create group
	_grpCfg = ["Infantry"] call CPG_fnc_chooseGroupConfig;
	_grp = [_missionPos, east, _grpCfg, [], [], [0.45,0.9], [], [], (random 360)] call BIS_fnc_spawnGroup;
	_mrkPatrol = [_missionPos, [150, 150]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "random", "spawned"] execVM "scripts\UPSMON.sqf";

	// create group
	_overwatchPos = [_missionPos, 250, 25, 20] call BIS_fnc_findOverwatch;
	_grpPos = [_overwatchPos, 0, 15, 2, 0, 1000, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_grpCfg = ["Infantry"] call CPG_fnc_chooseGroupConfig;
	_grp = [_grpPos, east, _grpCfg, [], [], [0.45,0.9], [], [], (random 360)] call BIS_fnc_spawnGroup;
	_mrkPatrol = [_grpPos, [200, 200]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "random", "spawned"] execVM "scripts\UPSMON.sqf";

	// create group
	_grpCfg = ["Infantry"] call CPG_fnc_chooseGroupConfig;
	_grp = [_missionPos, east, _grpCfg, [], [], [0.45,0.9], [], [], (random 360)] call BIS_fnc_spawnGroup;
	_mrkPatrol = [_missionPos, [300, 300]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "nofollow", "random", "spawned"] execVM "scripts\UPSMON.sqf";

	// ----------------------------------------------------------------------------------------------------

	_taskName = format ["TaskDSM_%1", CPG_sideMissions_counter];
	CPG_taskNames pushBack _taskName;
	_taskTitle = "Neutralize Mortar Site";
	_taskDesc = "Enemy forces have set up a small Mortar Site, threatening our land operations in that area.<br/><br/>Suppress the Mortar Site by eliminating the mortar operator and demolishing the Site itself.";
	_taskImage = "<img image='CombatPatrolGenerator\DSM\pix\Mortar.jpg'/><br/><br/>";

	if (CPG_sideMissions_showMarker == 1) then {
		_mrkPos = [_missionPos, 10, 100, 0, 0, 1000, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
		
		// create a task with destination
		[_taskName, _taskTitle, _taskImage + _taskDesc, true, [], "created", _mrkPos] call SHK_Taskmaster_add;
		
		// create marker
		_mrk = [format ["m_cpg_sideMission%1",CPG_sideMissions_counter], _mrkPos, "o_mortar", "ColorRed", 0.8, "Solid", _taskTitle] call CPG_fnc_createMarker;
	} else {
		// create a task without destination
		[_taskName, _taskTitle, _taskImage + _taskDesc] call SHK_Taskmaster_add;
	};

	message = parseText format ["<br/><img image='CombatPatrolGenerator\DSM\pix\Mortar.jpg' size='7' align='center'/><br/><br/>
	<t align='center' size='2'>Objective</t><br/>
	<t align='center' size='1.5'>%1</t><br/><br/>
	<t align='center' size='1.5' color='#08b000'>Assigned</t><br/><br/>
	%2", _taskTitle, _taskDesc];

	[message,"hintThis"] call BIS_fnc_MP;

	waitUntil { sleep 5; !alive _mortar };

	[_taskName, "succeeded"] call SHK_Taskmaster_upd;

	if (CPG_sideMissions_showMarker == 1) then {
		_mrk setMarkerColor "ColorGreen";
		_mrk setMarkerText "Mortar Site Neutralized";
	};

	message = parseText format ["<img image='SOS\Pictures\SOS.jpg' size='7' align='center'/><br/><br/>
	<t align='center' size='2'>Objective</t><br/>
	<t align='center' size='1.5'>%1</t><br/><br/>
	<t align='center' size='1.5' color='#01df01'>Completed</t><br/><br/>
	The enemy Mortar Site has been neutralized: our land operations in the area are now considerably safer.<br/>
	Good job everyone.", _taskTitle];

	[message,"hintThis"] call BIS_fnc_MP;
};