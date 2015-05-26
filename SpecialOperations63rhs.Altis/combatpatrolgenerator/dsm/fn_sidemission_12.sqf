////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////
////	Tank
////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


private["_missionPos", "_grpPos", "_overwatchPos", "_mrkPos", "_mrkPatrol", "_mrk", "_counter", "_tank"];

_patrolAreaIndex	= (CPG_sideMissions_counter + 1) mod CPG_patrolArea_number;
_patrolAreaPos		= CPG_patrolArea_positions select _patrolAreaIndex;

_check = [];
_counter = 0;
_equal1 = true;
_equal2 = true;

// We want to find a good position to create the tank, so we need the isFlatEmpty function to check if
// the position found by BIS_fnc_findSafePos is a good one. If not, retry.
while {(_equal1 || _equal2) && _counter < 10000} do {
	_missionPos = [_patrolAreaPos, 0, (1500*CPG_sideMissions_radiusMulti), 10, 0, 0, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_check = _missionPos isFlatEmpty  [ 12, 1, 0.2, 20, 0, false, objNull]; 
	_counter = _counter + 1;
	_equal1 = [[], _check] call BIS_fnc_areEqual;	
	_normal = surfaceNormal  _missionPos;
	if ((_normal select 2) > 0.985) then {
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
	
	_camoNet = createVehicle ["CamoNet_OPFOR_big_F", _missionPos, [], 0, "CAN_COLLIDE"];
	_camoNet setVectorUp (surfaceNormal _missionPos);
	_camoNet setDir 180;
	
	_tank = createVehicle ["rhs_sprut_vdv", _missionPos, [], 0, "NONE"];
	_tank setVehicleLock "LOCKED";
	
	// create tank group
	_groupTank = createGroup east;
	_ai = _groupTank createUnit ["rhs_msv_emr_driver_armored", _missionPos, [], 0, "NONE"];
	_ai moveInDriver _tank;	
	_ai = _groupTank createUnit ["rhs_msv_emr_armoredcrew", _missionPos, [], 0, "NONE"];
	_ai moveInTurret [_tank, [0,0]];	
	_ai = _groupTank createUnit ["rhs_msv_emr_armoredcrew", _missionPos, [], 0, "NONE"];
	_ai moveInGunner _tank;	
	_mrkPatrol = [_missionPos, [1000, 1000]] call CPG_fnc_createPatrolMarker;
	[leader _groupTank, _mrkPatrol, "nowp", "spawned"] execVM "scripts\UPSMON.sqf";	
	
	// Create tower
	_postower = [_missionPos, 50, 100, 10, 0, 5, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_tower = createVehicle ["Land_Cargo_Patrol_V1_F", _postower, [], 0, "CAN_COLLIDE"];	
	_group_0 = createGroup east;
	_ai = _group_0 createUnit ["rhs_vdv_rifleman", _postower, [], 0, "CAN_COLLIDE"];
	_ai setPos (_tower buildingPos 1);		
	_group_1 = createGroup east;
	_ai = _group_1 createUnit ["rhs_vdv_rifleman", _postower, [], 0, "CAN_COLLIDE"];
	_ai setPos (_tower buildingPos 0);
	
	// Create cargo
	_cargo = [_missionPos, 60, 70, 15, 0, 5, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_container = createVehicle ["Land_Cargo20_military_green_F", _cargo, [], 0, "CAN_COLLIDE"];	
	_cargo = [_missionPos, 63, 70, 15, 0, 5, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_container = createVehicle ["Land_Cargo20_military_green_F", _cargo, [], 0, "CAN_COLLIDE"];
	
	// Create barrels
	_barrel1 = createVehicle ["Land_MetalBarrel_F", [(_missionPos select 0) -20, (_missionPos select 1) - 1], [], 0, "CAN_COLLIDE"];
	_barrel2 = createVehicle ["Land_MetalBarrel_F", [(_missionPos select 0) - 21.5, (_missionPos select 1) - 1.5], [], 0, "CAN_COLLIDE"];
	_barrel3 = createVehicle ["Land_MetalBarrel_F", [(_missionPos select 0) - 21, (_missionPos select 1) - 0.5], [], 0, "CAN_COLLIDE"];
	_barrel4 = createVehicle ["Land_MetalBarrel_F", [(_missionPos select 0) - 20.5, (_missionPos select 1) - 2], [], 0, "CAN_COLLIDE"];
	_barrel5 = createVehicle ["Land_MetalBarrel_F", [(_missionPos select 0) -20, (_missionPos select 1) - 2.5], [], 0, "CAN_COLLIDE"];
	_barrel6 = createVehicle ["Land_MetalBarrel_F", [(_missionPos select 0) - 20.5, _missionPos select 1], [], 0, "CAN_COLLIDE"];
	_barrel7 = createVehicle ["Land_MetalBarrel_F", [(_missionPos select 0) - 20.5, _missionPos select 1], [], 0, "CAN_COLLIDE"];
	
	_scrap			= [_missionPos, 45, 55, 5, 0, 5, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_box = createVehicle ["Land_ScrapHeap_1_F", _scrap, [], 0, "CAN_COLLIDE"];
	
	_scrap			= [_missionPos, 80, 140, 5, 0, 5, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_box = createVehicle ["Land_ScrapHeap_2_F", _scrap, [], 0, "CAN_COLLIDE"];
	
	_ammo1 = createVehicle ["Box_East_AmmoOrd_F", [(_missionPos select 0) - 20, (_missionPos select 1) + 1], [], 0, "CAN_COLLIDE"];
	_ammo1 addEventHandler ["killed", "_this select 1 addScore 3;"];
	clearMagazineCargoGlobal _ammo1;
	_ammo1 addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 5];
	_ammo1 addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 5];

	// create AA group
	_aaGroup1 = createGroup East;
	_aapos = [_missionPos, 100, 100, 20, 0, 5, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_ai = _aaGroup1 CreateUnit["rhs_vdv_junior_sergeant", _aapos, [], 0, "NONE"];
	_ai = _aaGroup1 CreateUnit["rhs_vdv_rifleman", _aapos, [], 0, "NONE"];
	_ai = _aaGroup1 CreateUnit["rhs_vdv_machinegunner", _aapos, [], 0, "NONE"];
	_ai = _aaGroup1 CreateUnit["rhs_vdv_aa", _aapos, [], 0, "NONE"];
    _ai addBackpack "B_FieldPack_cbr";
	[_ai] spawn CPG_fnc_rearmAA;
	_ai = _aaGroup1 CreateUnit["rhs_vdv_grenadier", _aapos, [], 0, "NONE"];
	_ai = _aaGroup1 CreateUnit["rhs_vdv_marksman", _aapos, [], 0, "NONE"];	
	_mrkPatrol = [_missionPos, [150, 150]] call CPG_fnc_createPatrolMarker;
	[leader _aaGroup1, _mrkPatrol, "nofollow", "random", "spawned"] execVM "scripts\UPSMON.sqf";

	// create AA group
	_aaGroup2 = createGroup East;
	_aapos = [_missionPos, 100, 100, 20, 0, 5, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_ai = _aaGroup2 CreateUnit["rhs_vdv_junior_sergeant", _aapos, [], 0, "NONE"];
	_ai = _aaGroup2 CreateUnit["rhs_vdv_rifleman", _aapos, [], 0, "NONE"];
	_ai = _aaGroup2 CreateUnit["rhs_vdv_machinegunner", _aapos, [], 0, "NONE"];
	_ai = _aaGroup2 CreateUnit["rhs_vdv_aa", _aapos, [], 0, "NONE"];
    _ai addBackpack "B_FieldPack_cbr";
	[_ai] spawn CPG_fnc_rearmAA;
	_ai = _aaGroup2 CreateUnit["rhs_vdv_grenadier", _aapos, [], 0, "NONE"];
	_ai = _aaGroup2 CreateUnit["rhs_vdv_marksman", _aapos, [], 0, "NONE"];	
	_mrkPatrol = [_missionPos, [200, 200]] call CPG_fnc_createPatrolMarker;
	[leader _aaGroup2, _mrkPatrol, "random", "spawned"] execVM "scripts\UPSMON.sqf";

	// create group
	_grpCfg = ["Infantry"] call CPG_fnc_chooseGroupConfig;
	_grp = [_missionPos, east, _grpCfg, [], [], [0.45,0.9], [], [], (random 360)] call BIS_fnc_spawnGroup;
	_mrkPatrol = [_missionPos, [250, 250]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "nofollow", "random", "spawned"] execVM "scripts\UPSMON.sqf";

	// create group
	_overwatchPos = [_missionPos, 250, 25, 20] call BIS_fnc_findOverwatch;
	_grpPos = [_overwatchPos, 0, 15, 2, 0, 1000, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
	_grpCfg = ["Infantry"] call CPG_fnc_chooseGroupConfig;
	_grp = [_grpPos, east, _grpCfg, [], [], [0.45,0.9], [], [], (random 360)] call BIS_fnc_spawnGroup;
	_mrkPatrol = [_grpPos, [300, 300]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "ONROAD" ,"spawned"] execVM "scripts\UPSMON.sqf";
	
	// ----------------------------------------------------------------------------------------------------
	
	_taskName = format ["TaskDSM_%1", CPG_sideMissions_counter];
	CPG_taskNames pushBack _taskName;
	_taskTitle = "Destroy Tank";
	_taskDesc = "Enemy forces have set up an FOB, supporting the activity of an armed Tank. This Tank could be manned, so practice extreme caution during the approach.<br/><br/>Destroy the armed Tank.";
	_taskImage = "<img image='CombatPatrolGenerator\DSM\pix\Tank.jpg'/><br/><br/>";

	if (CPG_sideMissions_showMarker == 1) then {
		_mrkPos = getPos _tank;
		
		// create a task with destination
		[_taskName, _taskTitle, _taskImage + _taskDesc, true, [], "created", _mrkPos] call SHK_Taskmaster_add;
		
		// create marker
		_mrk = [format ["m_cpg_sideMission%1",CPG_sideMissions_counter], _mrkPos, "o_armor", "ColorRed", 0.8, "Solid", _taskTitle] call CPG_fnc_createMarker;
	} else {
		// create a task without destination
		[_taskName, _taskTitle, _taskImage + _taskDesc] call SHK_Taskmaster_add;
	};
	
	message = parseText format ["<br/><img image='CombatPatrolGenerator\DSM\pix\Tank.jpg' size='7' align='center'/><br/><br/>
	<t align='center' size='2'>Objective</t><br/>
	<t align='center' size='1.5'>%1</t><br/><br/>
	<t align='center' size='1.5' color='#08b000'>Assigned</t><br/><br/>
	%2", _taskTitle, _taskDesc];

	[message,"hintThis"] call BIS_fnc_MP;
	
	_updateCounter = 0;
	while { alive _tank } do {
		//  update the marker and refuel the tank every 2 minutes
		if (CPG_sideMissions_showMarker == 1 && _updateCounter >= 180) then {
			_updateCounter = 0;
			_mrk setMarkerPos (getPos _tank);
			_tank setFuel 1;
			_tank setVehicleAmmo 1;
		};
		
		_updateCounter = _updateCounter + 10;
		sleep 10;
	};
	
	[_taskName, "succeeded"] call SHK_Taskmaster_upd;
	
	if (CPG_sideMissions_showMarker == 1) then {
		_mrk setMarkerColor "ColorGreen";
		_mrk setMarkerText "Tank Destroyed";
	};

	message = parseText format ["<img image='SOS\Pictures\SOS.jpg' size='7' align='center'/><br/><br/>
	<t align='center' size='2'>Objective</t><br/>
	<t align='center' size='1.5'>%1</t><br/><br/>
	<t align='center' size='1.5' color='#01df01'>Completed</t><br/><br/>
	The enemy attack Tank has been destroyed: this enormous threat to our operation has finally ceased to exist.<br/>
	Good job everyone.", _taskTitle];

	[message,"hintThis"] call BIS_fnc_MP;
};