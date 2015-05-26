// Add respawn positions.
[] execVM "SOS\Respawn\respawn.sqf";

// Initialize some misc stuff:
// Creates a new AI HQ (makes them able to communicate).
_side = createCenter east;

// Init UPSMON script (must run on all clients)
call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";

// Finish world initialization before mission is launched.
finishMissionInit;

// This is a function used by side-missions to broadcast hints to everyone
// It's going to be called by bis_fnc_MP
hintThis = {hint _this;};

// Initialize global variables for different scripts.
initGlobalVariables = [] execVM "SOS\MiscScripts\initGlobalVariables.sqf";

// Run the briefing file.
[] execVM "Briefing.sqf";
sleep 0.5;

// Server-side scripts:
if (isServer) then {
	// Initialize time of day (chosen in the mission parameters). Default: 14
	_startingTimeHour = ["TimeOfDay", 14] call BIS_fnc_getParamValue;
	setDate [2035, 7, 6, _startingTimeHour, 0];

	// Set overcast, fog and rain (chosen in the mission parameters).
	[] execVM "SOS\Weather\setWeather.sqf";

	// Begin script that keeps the base clear of destroyed wrecks.
	[] execVM "SOS\MiscScripts\clearVehicleWrecks.sqf";

	// Begin script that keeps the base clear of dropped items/weapons.
	[] execVM "SOS\MiscScripts\clearItems.sqf";

	// Remove enemies from base.
	[] execVM "SOS\MiscScripts\safeZone.sqf";

	// Add an action to all UAVs, that allows to recharge them.
	[] execVM "SOS\UAV\rechargeUAVs.sqf";

	// Tweak AI accuracy and skill.
	[] execVM "SOS\MiscScripts\setSkills.sqf";
};

// Manage groups and groupIcons. Must run after "custom_functions_init" and before "platoonList.sqf" for client and server.
[] execVM "SOS\Groups\initGroups.sqf";

// Start Patrol Generator
[] execVM "CombatPatrolGenerator\init.sqf";

// Create task to patrol the area.
["TaskAssigned",["","Patrol the Area"]] call bis_fnc_showNotification;

[[
	["Task1","Main Mission: Patrol Area","Enemies have been spotted in the area. Your job is to patrol the marked areas and neutralize any hostiles you meet along the way.<br/><br/>Note: The mission is randomized each time you start it. Markers will show up shortly after the mission has started."]
]] execVM "shk_taskmaster.sqf";

// Client-side scripts:
if (!isDedicated) then {
	// Initialize medical system.
//    [] execVM "SOS\MiscScripts\lm_medic_system.sqf";

	// Initialize jump script.
	[] execVM "SOS\MiscScripts\jump.sqf";

	// Initialize helicopter smoke support.
	[] execVM "SOS\MiscScripts\lm_helo_support.sqf";

	// Initialize Virtual Arsenal.
	[] execVM "SOS\VirtualArsenal\initVirtualArsenal.sqf";

	// Firing in base protection.
	[] execVM "SOS\MiscScripts\noFireZone.sqf";

	// Aircraft resupply zones.
	[] execVM "SOS\MiscScripts\aircraftResupplyZone.sqf";

	// Initialize the texture of the uniform.
	[] execVM "SOS\Textures\initUniformTexture.sqf";

	// Run vehicle crew hud and platoon list.
	[] execVM "SOS\VehicleHud\teamList.sqf";
	[] execVM "SOS\VehicleHud\platoonList.sqf";

	// Disable AI radio chatter.
	player disableConversation true;
	player setVariable ["BIS_noCoreConversations", true];

	// Enable ghost mode, teleport and free camera for server admin.
	[player] call compile preprocessFileLineNumbers "SOS\AdminActions\main.sqf";
};

// Scripts for all machines:

// Whitelist script to check, if the player is allowed to use this slot.
[] execVM "SOS\MiscScripts\whitelist.sqf";

// Initialize global variables for the object spawn.
[] execVM "SOS\ObjectSpawn\initObjectSpawn.sqf";

// Fast roping system
[] execVM "FastRope\zlt_fastrope.sqf";

// Initialize Mag Repack.
//[] execVM "outlw_magRepack\MagRepack_init_sv.sqf";

// Initialize IgiLoad.
[] execVM "IgiLoad\IgiLoadInit.sqf";

// Radio channels: must stay here, outside of all conditions
[] execVM "radio\radioChannels.sqf";

// Initialize ammo drop script.
[] execVM "SOS\Ammodrop\initAmmoDrop.sqf";

// Start TPWCAS.
_suppression_enabled	= ["Suppression_Enabled", 1] call BIS_fnc_getParamValue;
tpwcas_mode				= ["Suppression_Mode", 2] call BIS_fnc_getParamValue;

if (_suppression_enabled == 1) then {
	diag_log format ["%1 - starting TPWCAS_A3 with tpwcas_mode [%2]", time, tpwcas_mode];
	[tpwcas_mode] execVM "tpwcas\tpwcas_script_init.sqf";

	// enable AI Suppression statistics logging (once every 60 seconds)
	if (tpwcas_mode == 2 || isServer) then {
		waitUntil {!(isNil "bdetect_init_done")};

		[] spawn tpwcas_fnc_log_benchmark;
	};
};

// The hint window, appearing when a player joins the game.
// Better to place it here, so it doesn't stop other scripts (eventually).
// This is a window that will appear right in front of every player, stopping him
// from doing anything, forcing him to (hopefully) read these basic rules.
if (!isServer) then {
"Welcome to [S.O.S]" hintC parseText "Basic rules for this server:<br/><br/>
We require <t color='#0000ff'>cooperative gameplay</t> from all the users on this server. This means that everyone <t color='#ff0000'>must listen to orders</t> coming from team leaders and platoon leader.<br/><br/>
Patience and maturity are necessary to achieve a correct military simulation experience and to be able to <t color='#0000ff'>have fun</t>.<br/><br/>
For pilots, we need to be able to coordinate to organize the transport runs of the other players. Therefore pilots <t color='#ff0000'>must have a microphone!</t><br/><br/>
Don't ask if you can spawn an <t color='#ff0000'>attack helicopter</t> to fly CAS. If it's needed, a fireteam leader will request it.<br/><br/>
We <t color='#ff0000'>kick</t> all the users who do not observe these rules.<br/><br/>
A <t color='#0000ff'>Virtual Arsenal</t> is assigned to some ammo boxes at the base. It allows to choose custom gear for the selected role.<br/>
<t color='#ff0000'>Don't share gear</t> between the different roles!<br/><br/>
There is <t color='#ff0000'>no 3rd person view</t>.<br/><br/>
<t color='#0000ff'>[S.O.S]</t> is a gaming community which focuses on <t color='#0000ff'>realism</t> of the simulation and <t color='#0000ff'>tactical gameplay</t>.<br/><br/>
If you are interested in joining our clan, talk to any Admin or visit us at:<br/>
<t color='#0000ff'>www.sos-tactical-gaming.shivtr.com</t>";
};