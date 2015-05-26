class WEST_PL_SL {
	displayName = "Platoon Leader";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MX_GL_Hamr_pointer_F",				// MX 3GL 6.5 mm
		"hgun_Pistol_heavy_01_snds_F",				// 4-five .45
		"Rangefinder"								// Rangefinder
	};
	magazines[] = {
		"11Rnd_45ACP_Mag",							// .45 ACP 11Rnd Mag
		"11Rnd_45ACP_Mag",							// .45 ACP 11Rnd Mag
		"3Rnd_HE_Grenade_shell",					// 40mm 3Rnd HE Grenade
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade"								// RGO Frag Grenade
	};
	linkedItems[] = {
		"H_Beret_Colonel",							// Beret [NATO] (Colonel)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"optic_MRD",								// MRD								// Magnification: 1x
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"acc_pointer_IR",							// IR Laser Pointer
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio",								// Radio
		"ItemGPS"									// GPS
	};
	uniformClass = "U_B_CombatUniform_mcam";		// Combat Fatigues (MTP)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_PL_Medic {
	displayName = "Platoon Medic";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MX_Hamr_pointer_F",					// MX 6.5 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Rangefinder"								// Rangefinder
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		// -------------------- Backpack Items --------------------
		"Medikit",									// Medikit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		// --------------------------------------------------------
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade"								// RGO Frag Grenade
	};
	linkedItems[] = {
		"H_HelmetB_light_grass",					// ECH (Light, Grass)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio",								// Radio
		"ItemGPS"									// GPS
	};
	uniformClass = "U_B_CombatUniform_mcam_tshirt";	// Combat Fatigues (MTP) (Tee)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_PL_Marksman {
	displayName = "Platoon Marksman";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MXM_DMS_F",							// MXM 6.5 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Rangefinder"								// Rangefinder
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"optic_NVS"									// NVS								// Magnification: 10x
	};
	linkedItems[] = {
		"H_HelmetSpecB_paint1",						// SF Helmet (Light paint)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"acc_pointer_IR",							// IR Laser Pointer
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio"									// Radio
	};
	uniformClass = "U_B_CombatUniform_mcam";		// Combat Fatigues (MTP)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_RCN_TL {
	displayName = "Recon - Team Leader";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MXM_DMS_F",							// MXM 6.5 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Rangefinder"								// Rangefinder
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"optic_NVS"									// NVS								// Magnification: 10x
	};
	linkedItems[] = {
		"H_Shemag_olive_hs",						// Shemag (Olive, Headset)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"acc_pointer_IR",							// IR Laser Pointer
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio",								// Radio
		"ItemGPS"									// GPS
	};
	uniformClass = "U_B_CombatUniform_mcam_vest";	// Recon Fatigues (MTP)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_RCN_Scout {
	displayName = "Recon - Scout";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MXM_DMS_F",							// MXM 6.5 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Rangefinder"								// Rangefinder
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"optic_NVS"									// NVS								// Magnification: 10x
	};
	linkedItems[] = {
		"H_Shemag_olive_hs",						// Shemag (Olive, Headset)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"acc_pointer_IR",							// IR Laser Pointer
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio",								// Radio
		"B_UavTerminal"								// UAV Terminal
	};
	uniformClass = "U_B_CombatUniform_mcam_vest";	// Recon Fatigues (MTP)
	backpack = "B_UAV_01_backpack_F";				// UAV Backpack
};

class WEST_RCN_Marksman {
	displayName = "Recon - Marksman";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"srifle_EBR_DMS_pointer_snds_F",			// Mk18 ABR 7.62 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Rangefinder"								// Rangefinder
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"20Rnd_762x51_Mag",							// 7.62mm 20Rnd Mag
		"20Rnd_762x51_Mag",							// 7.62mm 20Rnd Mag
		"20Rnd_762x51_Mag",							// 7.62mm 20Rnd Mag
		"20Rnd_762x51_Mag",							// 7.62mm 20Rnd Mag
		"20Rnd_762x51_Mag",							// 7.62mm 20Rnd Mag
		"20Rnd_762x51_Mag",							// 7.62mm 20Rnd Mag
		"20Rnd_762x51_Mag",							// 7.62mm 20Rnd Mag
		"20Rnd_762x51_Mag",							// 7.62mm 20Rnd Mag
		"20Rnd_762x51_Mag"							// 7.62mm 20Rnd Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"optic_NVS"									// NVS								// Magnification: 10x
	};
	linkedItems[] = {
		"H_Shemag_olive_hs",						// Shemag (Olive, Headset)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio"									// Radio
	};
	uniformClass = "U_B_CombatUniform_mcam_vest";	// Recon Fatigues (MTP)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_RCN_Paramedic {
	displayName = "Recon - Paramedic";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MX_Hamr_pointer_F",					// MX 6.5 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Rangefinder"								// Rangefinder
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		// -------------------- Backpack Items --------------------
		"Medikit",									// Medikit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		// --------------------------------------------------------
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade"								// RGO Frag Grenade
	};
	linkedItems[] = {
		"H_HelmetB_light_grass",					// ECH (Light, Grass)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio",								// Radio
		"ItemGPS"									// GPS
	};
	uniformClass = "U_B_CombatUniform_mcam_vest";	// Recon Fatigues (MTP)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_TL {
	displayName = "Team Leader";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MX_GL_Hamr_pointer_F",				// MX 3GL 6.5 mm
		"hgun_Pistol_heavy_01_snds_F",				// 4-five .45
		"Rangefinder"								// Rangefinder
	};
	magazines[] = {
		"11Rnd_45ACP_Mag",							// .45 ACP 11Rnd Mag
		"11Rnd_45ACP_Mag",							// .45 ACP 11Rnd Mag
		"3Rnd_HE_Grenade_shell",					// 40mm 3Rnd HE Grenade
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		// -------------------- Backpack Items --------------------
		"DemoCharge_Remote_Mag",					// Explosive Charge
		"DemoCharge_Remote_Mag"						// Explosive Charge
		// --------------------------------------------------------
	};
	linkedItems[] = {
		"H_HelmetSpecB_paint1",						// SF Helmet (Light paint)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"optic_MRD",								// MRD								// Magnification: 1x
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"acc_pointer_IR",							// IR Laser Pointer
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio",								// Radio
		"ItemGPS"									// GPS
	};
	uniformClass = "U_B_CombatUniform_mcam";		// Combat Fatigues (MTP)
	backpack = "B_Kitbag_rgr";						// Kitbag (Green)
};

class WEST_MMG_Mk200 {
	displayName = "Autorifleman Mk200";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"LMG_Mk200_pointer_F",						// Mk200 6.5 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Binocular"									// Binoculars
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"200Rnd_65x39_cased_Box",					// 6.5mm 200Rnd Belt Case
		"200Rnd_65x39_cased_Box",					// 6.5mm 200Rnd Belt Case
		"200Rnd_65x39_cased_Box_Tracer",			// 6.5mm 200Rnd Belt Case Tracer (Yellow)
		"200Rnd_65x39_cased_Box_Tracer"				// 6.5mm 200Rnd Belt Case Tracer (Yellow)
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade"								// RGO Frag Grenade
	};
	linkedItems[] = {
		"H_HelmetSpecB_paint1",						// SF Helmet (Light paint)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"optic_Hamr",								// RCO								// Magnification: 10x
		"muzzle_snds_H_MG",							// Sound Suppressor LMG (6.5 mm)	// Mk 200
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio"									// Radio
	};
	uniformClass = "U_B_CombatUniform_mcam";		// Combat Fatigues (MTP)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_MMG_MXSW {
	displayName = "Autorifleman MX SW";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MX_SW_Hamr_pointer_F",				// Mk200 6.5 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Binocular"									// Binoculars
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"100Rnd_65x39_caseless_mag",				// 6.5mm 100Rnd Belt Case
		"100Rnd_65x39_caseless_mag",				// 6.5mm 100Rnd Belt Case
		"100Rnd_65x39_caseless_mag",				// 6.5mm 100Rnd Belt Case
		"100Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 100Rnd Tracer (Red) Belt Case
		"100Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 100Rnd Tracer (Red) Belt Case
		"100Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 100Rnd Tracer (Red) Belt Case
		"100Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 100Rnd Tracer (Red) Belt Case
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade"								// RGO Frag Grenade
	};
	linkedItems[] = {
		"H_HelmetSpecB_paint1",						// SF Helmet (Light paint)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"muzzle_snds_H_SW",							// Sound Suppressor LMG (6.5 mm)	// MX SW
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio"									// Radio
	};
	uniformClass = "U_B_CombatUniform_mcam";		// Combat Fatigues (MTP)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_AT {
	displayName = "Rifleman (AT)";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MX_Hamr_pointer_F",					// MX 6.5 mm
		"launch_NLAW_F",							// PCML
		"hgun_P07_snds_F",							// P07 9 mm
		"Binocular"									// Binoculars
	};
	magazines[] = {
		"NLAW_F",									// PCML Missile
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		// -------------------- Backpack Items --------------------
		"NLAW_F",									/// PCML Missile
		"NLAW_F"									/// PCML Missile
		// --------------------------------------------------------
	};
	linkedItems[] = {
		"H_HelmetSpecB_paint1",						// SF Helmet (Light paint)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio"									// Radio
	};
	uniformClass = "U_B_CombatUniform_mcam_tshirt";	// Combat Fatigues (MTP) (Tee)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_CombatEngineer {
	displayName = "Combat Engineer";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MX_Hamr_pointer_F",					// MX 6.5 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Binocular"									// Binoculars
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		// -------------------- Backpack Items --------------------
		"ToolKit",									// ToolKit
		// --------------------------------------------------------
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade"								// RGO Frag Grenade
	};
	linkedItems[] = {
		"H_Watchcap_blk",							// Beanie
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio",								// Radio
	};
	uniformClass = "U_B_CombatUniform_mcam";		// Combat Fatigues (MTP)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_AssistantMMG {
	displayName = "Assistant MMG";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MX_Hamr_pointer_F",					// MX 6.5 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Rangefinder"								// Rangefinder
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade"								// RGO Frag Grenade
	};
	linkedItems[] = {
		"H_HelmetSpecB_paint1",						// SF Helmet (Light paint)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio"									// Radio
	};
	uniformClass = "U_B_CombatUniform_mcam";		// Combat Fatigues (MTP)
	backpack = "B_Carryall_mcamo";					// Carryall Backpack (MTP)
};

class WEST_Medic {
	displayName = "Medic";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MX_Hamr_pointer_F",					// MX 6.5 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Binocular"									// Binoculars
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		// -------------------- Backpack Items --------------------
		"Medikit",									// Medikit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		// --------------------------------------------------------
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade"								// RGO Frag Grenade
	};
	linkedItems[] = {
		"H_HelmetB_light_grass",					// ECH (Light, Grass)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio",								// Radio
		"ItemGPS"									// GPS
	};
	uniformClass = "U_B_CombatUniform_mcam_tshirt";	// Combat Fatigues (MTP) (Tee)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_Grenadier {
	displayName = "Grenadier";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"arifle_MX_GL_Hamr_pointer_F",				// MX 3GL 6.5 mm
		"hgun_P07_snds_F",							// P07 9 mm
		"Binocular"									// Binoculars
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"3Rnd_HE_Grenade_shell",					// 40mm 3Rnd HE Grenade
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag",					// 6.5mm 30Rnd STANAG Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer",			// 6.5mm 30Rnd Tracer (Red) Mag
		"30Rnd_65x39_caseless_mag_Tracer"			// 6.5mm 30Rnd Tracer (Red) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade"								// RGO Frag Grenade
	};
	linkedItems[] = {
		"H_HelmetSpecB_paint1",						// SF Helmet (Light paint)
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"muzzle_snds_H",							// Sound Suppressor (6.5 mm)
		"acc_pointer_IR",							// IR Laser Pointer
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio"									// Radio
	};
	uniformClass = "U_B_CombatUniform_mcam";		// Combat Fatigues (MTP)
	backpack = "B_AssaultPack_rgr";					// Assault Pack (Green)
};

class WEST_HelicopterPilot {
	displayName = "Helicopter Pilot";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"SMG_01_Holo_pointer_snds_F",				// Vermin SMG .45 ACP
		"hgun_P07_snds_F"							// P07 9 mm
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"30Rnd_45ACP_Mag_SMG_01",					// .45 ACP 30Rnd Vermin Mag
		"30Rnd_45ACP_Mag_SMG_01",					// .45 ACP 30Rnd Vermin Mag
		"30Rnd_45ACP_Mag_SMG_01",					// .45 ACP 30Rnd Vermin Mag
		"30Rnd_45ACP_Mag_SMG_01",					// .45 ACP 30Rnd Vermin Mag
		"30Rnd_45ACP_Mag_SMG_01",					// .45 ACP 30Rnd Vermin Mag
		"30Rnd_45ACP_Mag_SMG_01_tracer_green",		// .45 30Rnd VerminTracers (Green) Mag
		"30Rnd_45ACP_Mag_SMG_01_tracer_green",		// .45 30Rnd VerminTracers (Green) Mag
		"30Rnd_45ACP_Mag_SMG_01_tracer_green",		// .45 30Rnd VerminTracers (Green) Mag
		"30Rnd_45ACP_Mag_SMG_01_tracer_green"		// .45 30Rnd VerminTracers (Green) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"SmokeShellOrange",							// Smoke Grenade (Orange)
		"Chemlight_green",							// Chemlight (Green)
		"Chemlight_green",							// Chemlight (Green)
		"B_IR_Grenade",								// IR Grenade [NATO]
		"B_IR_Grenade",								// IR Grenade [NATO]
		"HandGrenade",								// RGO Frag Grenade
		"HandGrenade"								// RGO Frag Grenade
	};
	linkedItems[] = {
		"H_PilotHelmetHeli_B",						// Heli Pilot Helmet [NATO]
		"V_PlateCarrierGL_rgr",						// Carrier GL Rig (Green)
		"acc_pointer_IR",							// IR Laser Pointer
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio",								// Radio
		"ItemGPS"									// GPS
	};
	uniformClass = "U_B_HeliPilotCoveralls";		// Heli Pilot Coveralls
	backpack = "";
};

class WEST_JetPilot {
	displayName = "Jet Pilot";
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";

	weapons[] = {
		"SMG_01_Holo_pointer_snds_F",				// Vermin SMG .45 ACP
		"hgun_P07_snds_F"							// P07 9 mm
	};
	magazines[] = {
		"16Rnd_9x21_Mag",							// 9mm 16Rnd Mag
		"30Rnd_45ACP_Mag_SMG_01",					// .45 ACP 30Rnd Vermin Mag
		"30Rnd_45ACP_Mag_SMG_01",					// .45 ACP 30Rnd Vermin Mag
		"30Rnd_45ACP_Mag_SMG_01_tracer_green",		// .45 30Rnd VerminTracers (Green) Mag
		"30Rnd_45ACP_Mag_SMG_01_tracer_green"		// .45 30Rnd VerminTracers (Green) Mag
	};
	items[] = {
		"FirstAidKit",								// First Aid Kit
		"FirstAidKit",								// First Aid Kit
		"SmokeShellGreen",							// Smoke Grenade (Green)
		"Chemlight_green",							// Chemlight (Green)
		"B_IR_Grenade"								// IR Grenade [NATO]
	};
	linkedItems[] = {
		"H_PilotHelmetFighter_B",					// Pilot Helmet [NATO]
		"acc_pointer_IR",							// IR Laser Pointer
		"NVGoggles",								// NV Goggles (Brown)
		"ItemMap",									// Map
		"ItemCompass",								// Compass
		"ItemWatch",								// Watch
		"ItemRadio",								// Radio
		"ItemGPS"									// GPS
	};
	uniformClass = "U_B_PilotCoveralls";			// Pilot Coveralls [NATO]
	backpack = "B_Parachute";						// Steerable Parachute
};