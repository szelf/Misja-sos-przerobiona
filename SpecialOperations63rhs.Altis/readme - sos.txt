====================================================
===
===		Special Operations
===
===		Created by Lux0r
===		www.sos-tactical-gaming.shivtr.com
===
====================================================

This is a Coop mission designed for multiplayer gaming with up to 42 players. It is based on the Tier1 Patrol Generator under the terms of condition (ReadMe - Tier1.txt).



==============================
===		Features
==============================

- Revive Script: Legman Medic System 0.8.4
- Ammo Box: There are ammo boxes in the base for rearming (FirstAidKits, magazines, grenades, smoke, ...).
- Virtual Arsenal: Contains specific gear (backpacks, weapons, magazines and items) for the different roles.
- Mag Repack: This script allows the player to repack the ammo in his magazines (keybinding: "Ctrl + R").
- Custom textures for uniforms, helicopters and other vehicles.
- Jump: This script allows the player to jump (keybinding: "2 * C").
- Group Markers: The position of the fireteam is marked on the map.
- Vehicle Hud: Shows position of passengers in vehicles/choppers.
- UPSMON: Urban patrol script for more intelligent ai behaviour.
- TPWCAS: Suppression script for ai soldiers and human players.
- Base Protection (noFireZone): Instantly removes any kind of bullet/grenade/satchel/mine fired or placed by a player.
- Clear Items: Keeps the base clear from dropped items.
- Clear Vehicle Wrecks: Keeps the base clear from destroyed, immobile, and out of fuel vehicles with no crew.
- Aircraft Resupply Zone: Helicopters can be repaired, refueled and rearmed.
- Recharge UAV: Custom action that allows to recharge UAVs (with short animation).
- Admin Actions: Enables ghost mode, teleport and free camera for logged in admin.

Platoon List
- A list of all players from one side, grouped by teams.
- The current player and all fireteam leaders are highlighted.
- Show/hide list with keybinding: "Ctrl+Alt+P".

Custom Channels
- Ghost:		Internal communication of the ghost elements.
- Pilot:		Communication between pilots and ground forces.
- Pilot Group:	Internal communication of the pilots.
- Channel 1:	Can be used for any purpose.
- Channel 2:	Can be used for any purpose.

Remove Unauthorized Gear
- Removes unauthorized gear from the player, to prevent gear sharing in the base between different roles.
- In the field it’s allowed to pick up friendly weapons, rangefinder and all backpacks.
- Taking enemy weapons is still forbidden!

Vehicle Spawn
- Ground Vehicles:		2 spawn points for Quadbike, Offroad, Offroad armed, HEMTT Truck, HEMTT Truck (Covered), Hunter, Hunter HMG, Hunter GMG, APC – Panther, APC – Panther (Black), MBT – Slammer.
- Transport Helicopter:	MH-9 Hummingbird, WY-55 Hellcat, UH-80 Ghost Hawk (Black), UH-80 Ghost Hawk (Camo), CH-49 Mohawk. Only pilots can spawn transport helicopters.
- Attack Helicopter:	AH-9 Pawnee, WY-55 Hellcat, AH-99 Blackfoot. Only pilots can spawn attack helicopters.
- Jet:					A-164 Wipeout. Only jet pilots can spawn jets.

Helicopters
- Fast Roping: Allows passengers to use a rope for getting out of the chopper.
- Doors: A script to open/close doors from Ghosthawk and Mohawk.
- Ammo Drop: Allows to drop an ammo box, if chopper is on the ground.
- Ammo Drop Parachute: Allows to drop an ammo box with a parachute (speed >= 50km/h and height >= 75m).

Seat Protection
- Only pilots can enter the driver seat of helicopters.
- Only whitelisted pilots can enter the AH-99 Blackfoot.
- Only jet pilots can enter the driver seat of jets.



==============================
===		Side Missions
==============================

Small Radar
Enemy forces have built a small radar system, probably planning to put air defenses in place soon. Destroy the small radar tower.

Checkpoint
Enemy forces have set up a checkpoint aiming at controlling this island's roads and communications. Destroy the checkpoint and any fortification.

Small FOB
Enemy forces have set up a small FOB, supporting their motorized operations on the island. Destroy the FOB.

Large FOB
Enemy forces have set up a large FOB, supporting their motorized operations on the island. Destroy the large FOB.

Enemy HQ
The enemy has set up a small headquarters building, in order to command their forces in the area. Destroy the enemy HQ.

Cache
Enemy forces have gathered weapons in an unknown location. Find and destroy the weapons cache.

Officer
An enemy officer has arrived in the area and is now taking command of enemy forces. Find and eliminate the officer.

Armed Chopper
Enemy forces have set up an FOB, supporting the activity of an armed helicopter. This helicopter could be manned, so practice extreme caution during the approach. Destroy the armed helicopter.

Special Forces
Enemy forces have set up a recon FOB for Special Forces activity on the island. This is a threat we cannot tolerate and it must be eradicated at once. Defeat the Special Forces squad.

Investigate War Crimes
We have intel of ongoing war crimes in our area, by hands of the enemy. Recon the area and check these reports. Find evidence of war crimes.

AA Units
Enemy forces have set up a small AA Site, denying us the possibility of air operations in that area. Suppress the AA Site by eliminating the AA operators.

Mortar Site
Enemy forces have set up a small Mortar Site, threatening our land operations in that area. Suppress the Mortar Site by eliminating the mortar operator and demolishing the Site itself.

AT Units
Enemy forces have set up a small AT Site, denying us the possibility of motorized operations in that area. Suppress the AT Site by eliminating the AT operators.

Tank
Enemy forces have set up an FOB, supporting the activity of an armed Tank. This Tank could be manned, so practice extreme caution during the approach. Destroy the armed Tank.

AA-Tank
Enemy forces have set up an FOB, supporting the activity of an armed AA-Tank. This AA-Tank could be manned, so practice extreme caution during the approach. Destroy the armed AA-Tank.

Long Range Comms Tower
Enemy forces have a long range communication tower that they use to communicate outside of the island. Destroy Long Range Comms Tower.

Comms Tower
Enemy forces have set up a communications relay to support their operations. Destroy the communications tower.

Main HQ
Enemy forces have set up a major HQ in order to command and organize all their operations on the island. Our objective is to find and destroy this site, thus disrupting the chain of command of the enemy, limiting its effectiveness on the field. Destroy the Enemy Main HQ.



==============================
===		Parameters
==============================

The following parameters are available to change the setup of the mission:

1.	General: Time of day													(Default: 14)
2.	General: Number of lives for players									(Default: Infinite)
3.	General: Disable thermal imaging for vehicles?							(Default: Yes)
4.	Weather: Overcast (100% means storms and rain are very likely)			(Default: 10%)
5.	Weather: Fog															(Default: 0%)
6.	Weather: Rain (is not possible when overcast is less than 70%)			(Default: 0%)
7.	Patrol Generator: Number of patrol areas								(Default: 1)
8.	Patrol Generator: Show the standard blue Patrol The Area marker?		(Default: Yes)
9.	Patrol Generator: Radius multiplication factor for the patrol area		(Default: 1)
10.	Patrol Generator: Number of enemies around each patrol area				(Default: 125-150)
11.	Patrol Generator: Probability to see enemy positions marked on the map	(Default: 50%)
11.	Patrol Generator: Probability to know the unit type of marked enemies	(Default: 50%)
12.	Patrol Generator: Probability factor for enemy vehicle appearance		(Default: Normal)
13.	Patrol Generator: Enemy mortars present in the normal troop mix?		(Default: No)
14.	Patrol Generator: Number of enemy air-ambushes							(Default: 10)
15.	Side Missions: Minimum number of side missions							(Default: 4)
16.	Side Missions: Maximum number of side missions							(Default: 6)
17.	Side Missions: Show Side Mission markers?								(Default: Yes)
19.	Side Missions: Radius multiplication factor for the Side Missions		(Default: 1)
20.	Suppression: Would you like to enable TPWCAS_A3 AI Suppression?			(Default: On)
21.	Suppression: TPWCAS_A3 AI Suppression Mode								(Default: AI and Players)



==============================
===		Credits
==============================

This mission utilizes:

UPSMON created by various different people. You may find more info on UPSMON at the official Arma 3 Scripting forum.

 created by [S.O.S].

Helicopter fastrope script by zealot111.

TPWCAS AI suppression script created by TPW, Coulum, fabrizio_T and Ollem (Tier1ops).

Admin Actions created by [KH]Jman, modified by BlackAlpha.

Vehicle Service script, created by (unknown), modified by BlackAlpha, modified by Lux0r[S.O.S].

Folk Group Marker script from the F2 Framework, created by Folk, modified by WhiteRaven, modified by Lux0r[S.O.S].

Setskill Script, created by Ollem (Tier1ops) and Sonsalt (Tier1ops).

Realistic Jumping/Running Vault Script [BETA] by ProGamer.

Open Doors script by panda.

LM Helicopter Support by Legman[S.O.S].


Thanks to BlackAlpha and WhiteRaven from Tier1ops for their nice mission "Combat Patrol Generator" that inspired me to create my own mission based on their concept.

Special thanks to 413X[S.O.S] for continuously improving the existing Side Missions and creating new objectives.
Another special thanks to Cherokee[S.O.S], NavySeal[S.O.S], Catshannon[S.O.S] and everyone else that have helped me testing and developing the mission.



==============================
===		Legal
==============================

You are not allowed to edit this map without my permission, nor are you allowed to release this mission under your name,
upload it to the Steam Workshop, publish it on any website or run it on any server without written consent.