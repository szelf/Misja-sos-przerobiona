/*
	Change uniform texture for Combat Fatigues (MTP), Combat Fatigues (MTP) (Tee) and Recon Fatigues (MTP).

	Created by Catshannon
	Edited by Lux0r
*/


[] spawn {
	private "_uniform";
	
	while {true} do	{
		waitUntil {
			sleep 0.1;
			_uniform = uniform player;
			_uniform == "U_B_CombatUniform_mcam" || _uniform == "U_B_CombatUniform_mcam_vest" || _uniform == "U_B_CombatUniform_mcam_tshirt"
		};
		
		player setObjectTextureGlobal [0, "SOS\Textures\Uniform.paa"];
		
		waitUntil {
			sleep 0.1;
			uniform player != _uniform
		};
	};
};

player addEventHandler ["respawn", {
	_unit		= _this select 0;
	_uniform	= uniform _unit;
	
	if (_uniform == "U_B_CombatUniform_mcam" || _uniform == "U_B_CombatUniform_mcam_vest" || _uniform == "U_B_CombatUniform_mcam_tshirt") then {
		_unit setObjectTextureGlobal [0, "SOS\Textures\Uniform.paa"];
	};
}];

player addEventHandler ["killed", {
	_unit		= _this select 0;
	_uniform	= uniform _unit;
	
	if (_uniform == "U_B_CombatUniform_mcam" || _uniform == "U_B_CombatUniform_mcam_vest" || _uniform == "U_B_CombatUniform_mcam_tshirt") then {
		_unit setObjectTextureGlobal [0, "SOS\Textures\Uniform.paa"];
	};
}];