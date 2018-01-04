if !(m_isclient) exitwith {};

Bis_Weapons_Standard =
[
    //"arifle_SPAR_01_khk_F"
	//"arifle_MXC_khk_F",
	//"arifle_MX_khk_F",
	//"arifle_MX_F",
    //"arifle_MX_Black_F",
    //"arifle_MXC_F",
    //"arifle_MXC_Black_F",
    //"arifle_MXM_F",
    //"arifle_MXM_Black_F",
    //"arifle_MXM_khk_F",
    //"arifle_SPAR_01_blk_F",
    
    //"arifle_SPAR_01_snd_F"
];
Weapons_Standard = Weapons_Standard + Bis_Weapons_Standard;

Bis_Weapons_GLs =
[
    /*"arifle_MX_GL_F",
    "arifle_MX_GL_Black_F",
    //"arifle_MX_GL_khk_F",
	//"arifle_SPAR_01_GL_khk_F",
    "arifle_SPAR_01_GL_blk_F",
    "arifle_SPAR_01_GL_snd_F"*/
];
    
Bis_Weapons_ARs =
[
    /*"arifle_MX_SW_F",
    "arifle_MX_SW_Black_F",
    //"arifle_MX_SW_khk_F",
	//"arifle_SPAR_02_khk_F",
    //"LMG_Mk200_F",
    //"MMG_02_camo_F",
    //"MMG_02_black_F",
    //"MMG_02_sand_F",
    "arifle_SPAR_02_blk_F",
    "arifle_SPAR_02_snd_F",
	"LMG_03_F"*/
];
    
Bis_Weapons_ATs =
[
    //"launch_B_Titan_F",
    //"launch_B_Titan_short_F"
];
    
Bis_Weapons_Snipers =
[
    /*"arifle_MXM_khk_F",
    "srifle_EBR_F",
    //"srifle_DMR_02_F",
    "srifle_DMR_03_khaki_F",
    //"srifle_DMR_06_olive_F",
    //"arifle_SPAR_03_blk_F",
    "arifle_SPAR_03_khk_F"
    //"arifle_SPAR_03_snd_F"*/
];
    
Bis_Weapons_LaserDes =
[
];
    
Bis_Weapons_Generic =
[
    //"SMG_01_F",
	//"SMG_05_F",
    //"hgun_P07_F",
	//"hgun_P07_khk_F",
    //"hgun_Pistol_heavy_01_F",
    "Rangefinder",
    "Binocular"
    //"launch_RPG7_F",
    //"launch_NLAW_F"
];

Bis_Ammunition = 
[
    //"10Rnd_338_Mag",
    //"130Rnd_338_Mag",
    "30Rnd_45ACP_Mag_SMG_01",
    "30Rnd_45ACP_Mag_SMG_01_Tracer_Red",
    "11Rnd_45ACP_Mag",
    "16Rnd_9x21_Mag",
    "30Rnd_65x39_caseless_mag",
    "30Rnd_65x39_caseless_mag_Tracer",
    "100Rnd_65x39_caseless_mag",
    "100Rnd_65x39_caseless_mag_Tracer",
    //"200Rnd_65x39_cased_Box",
    //"200Rnd_65x39_cased_Box_Tracer",
    "30Rnd_556x45_Stanag",
    "30Rnd_556x45_Stanag_Tracer_Red",
    "20Rnd_762x51_Mag",
    "1Rnd_HE_Grenade_shell",
    "3Rnd_HE_Grenade_shell",
    "150Rnd_556x45_Drum_Mag_F",
    "150Rnd_556x45_Drum_Mag_Tracer_F",
	"30Rnd_9x21_Mag_SMG_02",
	"30Rnd_9x21_Mag_SMG_02_Tracer_Red",
	"200Rnd_556x45_Box_F",
	"200Rnd_556x45_Box_Red_F",
    
    "NLAW_F",
    //"Titan_AA",
    //"Titan_AT",
    
    "Laserbatteries",
    "SmokeShell",
    "SmokeShellBlue",
    "SmokeShellYellow",
    "SmokeShellGreen",
    "SmokeShellOrange",
    "SmokeShellPurple",
    "SmokeShellRed",
    "HandGrenade",
    "MiniGrenade",
    "B_IR_Grenade",
    
    "1Rnd_Smoke_Grenade_shell",
    "1Rnd_SmokeBlue_Grenade_shell",
    "1Rnd_SmokeGreen_Grenade_shell",
    "1Rnd_SmokeOrange_Grenade_shell",
    "1Rnd_SmokePurple_Grenade_shell",
    "1Rnd_SmokeRed_Grenade_shell",
    "1Rnd_SmokeYellow_Grenade_shell",
    
    "3Rnd_Smoke_Grenade_shell",
    "3Rnd_SmokeBlue_Grenade_shell",
    "3Rnd_SmokeGreen_Grenade_shell",
    "3Rnd_SmokeOrange_Grenade_shell",
    "3Rnd_SmokePurple_Grenade_shell",
    "3Rnd_SmokeRed_Grenade_shell",
    "3Rnd_SmokeYellow_Grenade_shell",
    "3Rnd_UGL_FlareCIR_F",
    "3Rnd_UGL_FlareGreen_F",
    "3Rnd_UGL_FlareRed_F",
    "3Rnd_UGL_FlareWhite_F",
    
    "UGL_FlareCIR_F",
    "UGL_FlareGreen_F",
    "UGL_FlareRed_F",
    "UGL_FlareWhite_F",
    
    "Chemlight_green",
    "Chemlight_red",
    "Chemlight_yellow",
    "Chemlight_blue"
];

Bis_Explosives =
[
    "APERSBoundingMine_Range_Mag",
    "APERSMine_Range_Mag",
    "APERSTripMine_Wire_Mag",
    "ATMine_Range_Mag",
    "ClaymoreDirectionalMine_Remote_Mag",
    "SLAMDirectionalMine_Wire_Mag",
    "DemoCharge_Remote_Mag",
    "SatchelCharge_Remote_Mag"
];

Bis_Backpacks = 
[
    "B_Parachute"
    //"B_Kitbag_cbr",
    //"B_Kitbag_sgg",
    //"B_Kitbag_rgr",
    //"B_AssaultPack_khk",
    //"B_Carryall_khk"
	//"B_TacticalPack_rgr"
	//"B_TacticalPack_oli",
	//"B_FieldPack_khk",
	//"B_Carryall_oli"
];

Bis_scopes = 
[
    "optic_Aco",
    "optic_Aco_smg",
    //"optic_Holosight",
    //"optic_Holosight_smg",
    "optic_Holosight_blk_F",
    "optic_Holosight_smg_blk_F",
    //"optic_Hamr",
    "optic_Hamr_khk_F",
    "optic_MRCO",
    //"optic_Arco",
    //"optic_Arco_blk_F",
    //"optic_Arco_ghex_F",
    "optic_MRD",
    //"optic_ERCO_blk_F",
    "optic_ERCO_khk_F"
    //"optic_ERCO_snd_F"
];	
    
Bis_Scopes_Sniper =
[
    //"optic_AMS",
    "optic_AMS_khk",
    //"optic_AMS_snd",
	"optic_SOS_khk_F"
];
        
Bis_Silencers = 
[
    "muzzle_snds_acp",
    "muzzle_snds_H",
    "muzzle_snds_L",
    "muzzle_snds_M",
    "muzzle_snds_H_SW",
    "muzzle_snds_B"
];
 
Bis_Uniforms = 
[
    /*"U_B_CTRG_1",
    "U_B_CTRG_2",
    "U_B_CTRG_3"*/
    /*"U_B_T_Soldier_F",
    "U_B_T_Soldier_AR_F",
    "U_B_CTRG_Soldier_F",
    "U_B_CTRG_Soldier_2_F",
    "U_B_CTRG_Soldier_3_F",
	"U_B_T_Soldier_SL_F"*/
];

Bis_Vests = 
[
    /*"V_PlateCarrierH_CTRG",
    "V_PlateCarrierL_CTRG",
    //"V_PlateCarrier1_tna_F",
    //"V_PlateCarrier2_tna_F",
	//"V_PlateCarrierSpec_tna_F",
	"V_PlateCarrierSpec_rgr",
	"V_PlateCarrier1_rgr",
	"V_PlateCarrier2_rgr",
	"V_PlateCarrier3_rgr"*/
];

Bis_Helmets = 
[
    /*"H_HelmetB_camo",
    "H_HelmetB_light",
    "H_HelmetSpecB",
    "H_HelmetSpecB_snakeskin",
    //"H_HelmetB_Enh_tna_F",
    //"H_HelmetB_Light_tna_F",
	//"H_HelmetB_tna_F",
	"H_HelmetB",
	"H_HelmetB_light_snakeskin"*/
];
        
Bis_Hats_Glasses_Masks = 
[
    "G_Tactical_Black",
    "G_Bandanna_beast"
];

Bis_Items_Generic = 
[
    "ItemCompass",
    "ItemGPS",
    "ItemMap",
    "ItemWatch",
    "acc_flashlight",
    "acc_pointer_IR"
];

// Add ACRE radios
if (m_acre) then {
    Bis_Items_Generic = Bis_Items_Generic + [
        "ACRE_PRC343",
        "ACRE_PRC152",
        "ACRE_PRC117F",
        "ACRE_PRC148"
    ];
};

// Add Task Force radios
if (m_taskforce) then {
    Bis_Items_Generic = Bis_Items_Generic + [
        "tf_anprc152",
		"tf_mr3000_multicam"
    ];
};

BIS_NVGs = 
[
    "NVGoggles"
    //"NVGoggles_tna_F"
];
Bis_Items_Generic = Bis_Items_Generic + BIS_NVGs;

/////////////////////////////////////////////////////////////////	

GENERAL_GLOBAL = GENERAL_GLOBAL + Bis_Items_Generic + Bis_Hats_Glasses_Masks + Bis_Helmets + Bis_Vests + Bis_Uniforms + Bis_scopes + Bis_Backpacks + Bis_Ammunition + Bis_Weapons_Generic;

/////////////////////////////////////////////////////////////////
GrenadierItems = GrenadierItems+
[
    //"V_PlateCarrierGL_rgr",
    //"V_PlateCarrierGL_tna_F"
] + GENERAL_GLOBAL + Bis_Weapons_GLs;
	
/////////////////////////////////////////////////////////////////			
AutoriflemanItems = AutoriflemanItems+
[
	//"bipod_01_F_snd",
    //"bipod_01_F_mtp",
    "bipod_01_F_blk",
	"B_Carryall_cbr"
] + GENERAL_GLOBAL + Bis_Weapons_ARs;

/////////////////////////////////////////////////////////////////
ATItems = ATItems+
[

] + GENERAL_GLOBAL + Bis_Weapons_ATs + Bis_Weapons_Standard;

/////////////////////////////////////////////////////////////////
MedicItems = MedicItems+
[
    "H_Booniehat_khk_hs",
	"B_Carryall_cbr"
] + GENERAL_GLOBAL + Bis_Weapons_Standard;

/////////////////////////////////////////////////////////////////
EODItems = EODItems+
[
    "V_PlateCarrierGL_rgr",
    //"V_PlateCarrierGL_tna_F",
    "ToolKit",
	"B_Carryall_cbr"
] + GENERAL_GLOBAL + Bis_Explosives + Bis_Weapons_Standard;

/////////////////////////////////////////////////////////////////
PilotItems = PilotItems+
[
    "U_B_HeliPilotCoveralls",
    "H_HelmetCrew_B",
    "H_PilotHelmetHeli_B"
] + GENERAL_GLOBAL;
/////////////////////////////////////////////////////////////////
RTOItems = RTOItems+
[

] + GENERAL_GLOBAL + Bis_Weapons_Standard;
/////////////////////////////////////////////////////////////////
RifelmanItems = RifelmanItems+
[	

] + GENERAL_GLOBAL + Bis_Weapons_Standard;

/////////////////////////////////////////////////////////////////
CommanderItems = CommanderItems+
[
    "Laserdesignator"
] + GENERAL_GLOBAL + Bis_Weapons_Standard;

/////////////////////////////////////////////////////////////////
SquadLeadItems = SquadLeadItems+
[
    "Laserdesignator"
] + GENERAL_GLOBAL + Bis_Weapons_GLs + Bis_Weapons_Standard;

/////////////////////////////////////////////////////////////////
TeamLeadItems = TeamLeadItems+
[
    "Laserdesignator"
] + GENERAL_GLOBAL + Bis_Weapons_GLs + Bis_Weapons_Standard;
	
/////////////////////////////////////////////////////////////////
MarksmanItems = MarksmanItems+
[
    "H_Booniehat_khk_hs",
	//"bipod_01_F_snd",
    //"bipod_01_F_mtp",
    "bipod_01_F_blk"
] + GENERAL_GLOBAL + Bis_Weapons_Snipers + Bis_Scopes_Sniper ;

/////////////////////////////////////////////////////////////////
ReconItems = ReconItems+
[	
    "H_Booniehat_khk_hs"
] + GENERAL_GLOBAL + Bis_Silencers + Bis_Weapons_Standard;

/////////////////////////////////////////////////////////////////
JTACItems = JTACItems+
[
    "Laserdesignator",
    "H_Booniehat_khk_hs"
] + GENERAL_GLOBAL + Bis_Silencers + Bis_Weapons_Standard;

/////////////////////////////////////////////////////////////////
RconMedic = RconMedic+
[
    "H_Booniehat_khk_hs",
	"B_Carryall_cbr"
] + GENERAL_GLOBAL + Bis_Silencers + Bis_Weapons_Standard;

/////////////////////////////////////////////////////////////////
UAVItems = UAVItems+
[
    "H_Booniehat_khk_hs",
    "B_UAV_01_backpack_F",
    "B_UavTerminal"
] + GENERAL_GLOBAL + Bis_Silencers  + Bis_Weapons_Standard;

/////////////////////////////////////////////////////////////////
RconExp = RconExp+
[
    "H_Booniehat_khk_hs",
    //"V_PlateCarrierIAGL_oli",
    //"V_PlateCarrierGL_tna_F",
    "ToolKit",
	"B_Carryall_cbr"
] + GENERAL_GLOBAL + Bis_Silencers + Bis_Weapons_Standard;

/////////////////////////////////////////////////////////////////
Repair = Repair+
[
    "ToolKit"
] + GENERAL_GLOBAL + Bis_Weapons_Standard;
