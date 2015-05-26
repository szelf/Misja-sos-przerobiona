////////////////////////////////////////////////////////////////////////////////////
////
////	Officer
////
////////////////////////////////////////////////////////////////////////////////////


private["_buildingPos", "_grpPos", "_mrkPos", "_targets", "_target", "_poscache", "_posarray", "_posofficer", "_mrk", "_mrkPatrol", "_ammo0", "_ammo1", "_ammo2", "_ammo3", "_ammo4"];

_valid_buildings = ["Land_i_Barracks_V1_F", "Land_i_Barracks_V2_F", "Land_i_House_Big_01_V1_F", "Land_i_House_Big_02_V1_F", "Land_i_Stone_HouseBig_V1_F", "Land_MilOffices_V1_F","Land_Chapel_V1_F","Land_Chapel_V2_F"];

_patrolAreaIndex	= (CPG_sideMissions_counter + 1) mod CPG_patrolArea_number;
_patrolAreaPos		= CPG_patrolArea_positions select _patrolAreaIndex;

_targets = nearestObjects [_patrolAreaPos, _valid_buildings, (2300*CPG_sideMissions_radiusMulti)];

// This is a safety measure: if no possible targets have been found,
// don't execute the mission itself.
if ((count _targets) > 0) then {
	CPG_sideMissions_counter = CPG_sideMissions_counter + 1;
	
	_target = _targets select (random ((count _targets) - 1));
	
	_counter = 0;
	_posarray = [];
	
	// as long as building position _counter not equal to "[0,0,0]" keep looping
	while {format ["%1", _target buildingPos _counter] != "[0,0,0]" } do {
		_posarray = _posarray + [_counter];	// add the index of the position to the list		
		_counter = _counter + 1;			// increment counter
	};
	
	// shuffle
	for [{_x = 0},{_x < count (_posarray)},{_x = _x + 1}] do {
		_tempValue = _posarray select _x;
		_tempIndex = floor(random(count _posarray));
		_posarray set [_x, _posarray select _tempIndex];
		_posarray set [_tempIndex, _tempValue];
	};
	
	_posofficer = _target buildingPos (_posarray select 0);
	_bodypos1 = _target buildingPos (_posarray select 1);
	_bodypos2 = _target buildingPos (_posarray select 2);
	_bodypos3 = _target buildingPos (_posarray select 3);
	
	_static_bodyguards1 = createGroup east;
	_bodyguard = _static_bodyguards1 createUnit ["rhs_vdv_flora_machinegunner", _bodypos1, [], 0, "CAN_COLLIDE"];
	_bodyguard setPos _bodypos1;
	
	_static_bodyguards2 = createGroup east;
	_bodyguard = _static_bodyguards2 createUnit ["rhs_vdv_flora_medic", _bodypos2, [], 0, "CAN_COLLIDE"];
	_bodyguard setPos _bodypos2;
	
	_static_bodyguards3 = createGroup east;
	_bodyguard = _static_bodyguards3 createUnit ["rhs_vdv_flora_at", _bodypos3, [], 0, "CAN_COLLIDE"];
	_bodyguard setPos _bodypos3;
	
	
	_group_bodyguards = createGroup east;
	_officer = _group_bodyguards createUnit ["rhs_vdv_flora_officer", _posofficer, [], 0, "CAN_COLLIDE"];
	_officer setPos _posofficer;
	_bodyguard = _group_bodyguards createUnit ["rhs_vdv_flora_machinegunner", _bodypos1, [], 0, "CAN_COLLIDE"];
	_bodyguard setPos _bodypos1;
	_bodyguard = _group_bodyguards createUnit ["rhs_vdv_flora_medic", _bodypos2, [], 0, "CAN_COLLIDE"];
	_bodyguard setPos _bodypos2;
	_bodyguard = _group_bodyguards createUnit ["rhs_vdv_rifleman", _bodypos3, [], 0, "CAN_COLLIDE"];
	_bodyguard setPos _bodypos3;

	// create group
	_grpCfg = ["Infantry"] call CPG_fnc_chooseGroupConfig;
	_grpPos = position _target;
	_grp = [_grpPos, east, _grpCfg, [], [], [0.45,0.9], [], [], (random 360)] call BIS_fnc_spawnGroup;
	_mrkPatrol = [_grpPos, [100, 100]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "fortify", "random", "spawned"] execVM "scripts\UPSMON.sqf";

	// create group
	_grpCfg = ["Infantry"] call CPG_fnc_chooseGroupConfig;
	_grp = [_grpPos, east, _grpCfg, [], [], [0.45,0.9], [], [], (random 360)] call BIS_fnc_spawnGroup;
	_mrkPatrol = [_grpPos, [150, 150]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "reinforcement", "random", "spawned"] execVM "scripts\UPSMON.sqf";

	// create group
	_grpCfg = ["Infantry"] call CPG_fnc_chooseGroupConfig;
	_grp = [_grpPos, east, _grpCfg, [], [], [0.45,0.9], [], [], (random 360)] call BIS_fnc_spawnGroup;
	_mrkPatrol = [_grpPos, [200, 200]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "random", "spawned"] execVM "scripts\UPSMON.sqf";

	// create group
	_grpCfg = ["Infantry"] call CPG_fnc_chooseGroupConfig;
	_grp = [_grpPos, east, _grpCfg, [], [], [0.45,0.9], [], [], (random 360)] call BIS_fnc_spawnGroup;
	_mrkPatrol = [_grpPos, [300, 300]] call CPG_fnc_createPatrolMarker;
	[leader _grp, _mrkPatrol, "nofollow", "random", "spawned"] execVM "scripts\UPSMON.sqf";
	
	// ----------------------------------------------------------------------------------------------------
	
	_taskName = format ["TaskDSM_%1", CPG_sideMissions_counter];
	CPG_taskNames pushBack _taskName;
	_taskTitle = "Eliminate Officer";
	_taskDesc = "An enemy officer has arrived in the area and is now taking command of enemy forces.<br/><br/>Find and eliminate the officer.";
	_taskImage = "<img image='CombatPatrolGenerator\DSM\pix\Officer.jpg'/><br/><br/>";

	if (CPG_sideMissions_showMarker == 1) then {
		_mrkPos = [(position _target), 10, 150, 0, 0, 1000, 0, CPG_blacklist, CPG_backupPos] call BIS_fnc_findSafePos;
		
		// create a task with destination
		[_taskName, _taskTitle, _taskImage + _taskDesc, true, [], "created", _mrkPos] call SHK_Taskmaster_add;
		
		// create marker
		_mrk = [format ["m_cpg_sideMission%1",CPG_sideMissions_counter], _mrkPos, "mil_unknown", "ColorRed", 0.8, "Solid", _taskTitle] call CPG_fnc_createMarker;
	} else {
		// create a task without destination
		[_taskName, _taskTitle, _taskImage + _taskDesc] call SHK_Taskmaster_add;
	};
	
	message = parseText format ["<br/><img image='CombatPatrolGenerator\DSM\pix\Officer.jpg' size='7' align='center'/><br/><br/>
	<t align='center' size='2'>Objective</t><br/>
	<t align='center' size='1.5'>%1</t><br/><br/>
	<t align='center' size='1.5' color='#08b000'>Assigned</t><br/><br/>
	%2", _taskTitle, _taskDesc];

	[message,"hintThis"] call BIS_fnc_MP;

	waitUntil { sleep 5; !alive _officer };
	
	[_taskName, "succeeded"] call SHK_Taskmaster_upd;
	
	if (CPG_sideMissions_showMarker == 1) then {
		_mrk setMarkerColor "ColorGreen";
		_mrk setMarkerText "Officer Eliminated";
	};

	message = parseText format ["<img image='SOS\Pictures\SOS.jpg' size='7' align='center'/><br/><br/>
	<t align='center' size='2'>Objective</t><br/>
	<t align='center' size='1.5'>%1</t><br/><br/>
	<t align='center' size='1.5' color='#01df01'>Completed</t><br/><br/>
	The enemy officer has been eliminated, dealing a decisive blow to the enemy's chain of command.<br/>
	Good job everyone.", _taskTitle];

	[message,"hintThis"] call BIS_fnc_MP;
};