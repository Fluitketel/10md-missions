if (isServer) exitwith {diag_log "I was kicked from VA_FAL.sqf";};
diag_log "////====****READING VA_FAL.SQF ****====////";

/////////////////////////////////////////////////////////////////

		Falcons_Weapons_Standard =
			[
				"Falcons_arifle_MXC_Wood_F",
				"Falcons_arifle_MX_Wood_F",
				"Falcons_arifle_MXM_Wood_F",
				"Falcons_arifle_MXC_Urban_F",
				"Falcons_arifle_MX_Urban_F",
				"Falcons_arifle_MXM_Urban_F"
			];
		Weapons_Standard = Weapons_Standard + Falcons_Weapons_Standard;
		
		Falcons_Weapons_GLs =
			[

				"Falcons_arifle_MX_GL_Wood_F",
				"Falcons_arifle_MX_GL_Urban_F"
			];
			
		Falcons_Weapons_ARs =
			[
				/*
				NOT WORKING
				"Falcons_arifle_MX_SW_Urban_F",
				"Falcons_arifle_MX_SW_Wood_F"
				*/
			];
			
		Falcons_Weapons_ATs =
			[
			];
			
		Falcons_Weapons_Snipers =
			[
			];
			
		Falcons_Weapons_LaserDes =
			[
			];
			
		Falcons_Weapons_Generic =
			[
			];

		Falcons_Ammunition = 
			[
			];

		Falcons_Explosives =
			[
			];

		Falcons_Backpacks = 
			[
				"Falcons_Backpack_DPM",
				"Falcons_Backpack_Compact_DPM",
				"Falcons_Backpack_Kitbag_DPM",
				"Falcons_Backpack_Desert",
				"Falcons_Backpack_Compact_Desert",
				"Falcons_Backpack_Kitbag_Desert",
				"Falcons_Backpack_Dark",
				"Falcons_Backpack_Compact_Dark",
				"Falcons_Backpack_Kitbag_Dark",
				"Falcons_Backpack_URBAN",
				"Falcons_Backpack_Compact_URBAN",
				"Falcons_Backpack_Kitbag_URBAN"
				
			];

		Falcons_scopes = 
			[
			];	
			
		Falcons_Scopes_Sniper =
			[
			];
				
		Falcons_Silencers = 
			[
			];
				
		Falcons_Uniforms = 
			[
				"Falcons_CombatUniform_DPM",
				"Falcons_CombatUniform_DPM_tshirt",
				"Falcons_CombatUniform_DPM_vest",
				"Falcons_CombatUniform_Desert",
				"Falcons_CombatUniform_Desert_tshirt",
				"Falcons_CombatUniform_Desert_vest",
				"Falcons_CombatUniform_Dark",
				"Falcons_CombatUniform_Dark_tshirt",
				"Falcons_CombatUniform_Dark_vest",
				"Falcons_CombatUniform_URBAN",
				"Falcons_CombatUniform_URBAN_tshirt",
				"Falcons_CombatUniform_URBAN_vest"
			];

		Falcons_Vests = 
			[
				"Falcons_DPM_Plate_Carrier",
				"Falcons_DPM_Plate_Carrier_H",
				"Falcons_DPM_PlateCarrier_1",
				"Falcons_DPM_PlateCarrier_2",
				"Falcons_Desert_Plate_Carrier",
				"Falcons_Desert_Plate_Carrier_H",
				"Falcons_Desert_PlateCarrier_1",
				"Falcons_Desert_PlateCarrier_2",
				"Falcons_URBAN_Plate_Carrier",
				"Falcons_URBAN_Plate_Carrier_H",
				"Falcons_URBAN_PlateCarrier_1",
				"Falcons_URBAN_PlateCarrier_2",
				"Falcons_Dark_Plate_Carrier",
				"Falcons_Dark_Plate_Carrier_H",
				"Falcons_Dark_PlateCarrier_1",
				"Falcons_Dark_PlateCarrier_2"
			];

		Falcons_Helmets = 
			[
				"Falcons_Helmet_wood",
				"Falcons_Helmet_simple_wood",
				"Falcons_Helmet_Light_wood",
				"Falcons_Helmet_Cammo_Wood",
				"Falcons_Helmet_Desert",
				"Falcons_Helmet_simple_Desert",
				"Falcons_Helmet_Light_Desert",
				"Falcons_Helmet_Cammo_Desert",
				"Falcons_Helmet_urban",
				"Falcons_Helmet_simple_urban",
				"Falcons_Helmet_Light_urban",
				"Falcons_Helmet_Cammo_Urban",
				"Falcons_Helmet_Dark",
				"Falcons_Helmet_simple_Dark",
				"Falcons_Helmet_Light_Dark",
				"Falcons_Helmet_Cammo_Dark"
			];
				
		Falcons_Hats_Glasses_Masks = 
			[
				"Falcons_Cap_headphones",
				"Falcons_Woolhat_black",
				"Falcons_Woolhat_blue",
				"Falcons_Woolhat_brown",
				"Falcons_Woolhat_green",
				"Falcons_Woolhat_red",
				"Falcons_bandana_Desert",
				"Falcons_bandana_Dark",
				"Falcons_bandana_Wood",
				"Falcons_bandana_Urban",
				"Falcons_bandana_Skull",
				"Falcons_bandana_Skull2",
				"Falcons_Beret_Green"
			];

		Falcons_Items_Generic = 
			[
			
			];

		if (PARAMS_ALLOW_NVG == 1) then
			{
				Falcons_NVGs = 
					[
					];
				Falcons_Items_Generic = Falcons_Items_Generic + Falcons_NVGs;
			};

/////////////////////////////////////////////////////////////////	

GENERAL_GLOBAL = GENERAL_GLOBAL + Falcons_Items_Generic + Falcons_Hats_Glasses_Masks + Falcons_Helmets + Falcons_Vests + Falcons_Uniforms + Falcons_scopes + Falcons_Backpacks + Falcons_Ammunition + Falcons_Weapons_Generic;

/////////////////////////////////////////////////////////////////
GrenadierItems = GrenadierItems +
	[
	] + GENERAL_GLOBAL + Falcons_Weapons_GLs;
	
/////////////////////////////////////////////////////////////////			
AutoriflemanItems =  AutoriflemanItems + 
	[
	
	] + GENERAL_GLOBAL + Falcons_Weapons_ARs;

/////////////////////////////////////////////////////////////////
ATItems = ATItems+
	[

	] + GENERAL_GLOBAL + Falcons_Weapons_ATs + Falcons_Weapons_Standard;

/////////////////////////////////////////////////////////////////
MedicItems = MedicItems+
	[
		"Falcons_Backpack_URBAN_Medic",
		"Falcons_Backpack_Dark_Medic",
		"Falcons_Backpack_Desert_Medic",
		"Falcons_Backpack_DPM_Medic",
		
		"Falcons_Helmet_Desert_medic",
		"Falcons_Helmet_Dark_medic",
		"Falcons_Helmet_Urban_medic",
		"Falcons_Helmet_Wood_medic",
		
		"Falcons_DPM_booniehat_Medic",
		"Falcons_Urban_booniehat_Medic",
		"Falcons_Dark_booniehat_Medic",
		"Falcons_Desert_booniehat_Medic"

	] + GENERAL_GLOBAL + Falcons_Weapons_Standard;

/////////////////////////////////////////////////////////////////
EODItems =EODItems+
	[
	] + GENERAL_GLOBAL + Falcons_Explosives + Falcons_Weapons_Standard;

/////////////////////////////////////////////////////////////////
PilotItems = PilotItems+
	[
	] + GENERAL_GLOBAL;
/////////////////////////////////////////////////////////////////
RTOItems = RTOItems+
	[
	
	] + GENERAL_GLOBAL + Falcons_Weapons_Standard;
/////////////////////////////////////////////////////////////////
RifelmanItems = RifelmanItems+
	[	
	] + GENERAL_GLOBAL + Falcons_Weapons_Standard;

/////////////////////////////////////////////////////////////////
CommanderItems = CommanderItems+
	[
	"Falcons_Beret_Red"
	] + GENERAL_GLOBAL + Falcons_Weapons_Standard;

/////////////////////////////////////////////////////////////////
SquadLeadItems = SquadLeadItems+
	[
	"Falcons_Beret_Blue"
	] + GENERAL_GLOBAL + Falcons_Weapons_Standard;

/////////////////////////////////////////////////////////////////
TeamLeadItems = TeamLeadItems+
	[
	] + GENERAL_GLOBAL + Falcons_Weapons_GLs + Falcons_Weapons_Standard;
	
/////////////////////////////////////////////////////////////////
MarksmanItems = MarksmanItems+
	[
		"Falcons_DPM_booniehat",
		"Falcons_Urban_booniehat",
		"Falcons_Dark_booniehat",
		"Falcons_Desert_booniehat",
		"Falcons_Folded_boonie"
	] + GENERAL_GLOBAL + Falcons_Weapons_Snipers + Falcons_Silencers + Falcons_Scopes_Sniper;

/////////////////////////////////////////////////////////////////
ReconItems = ReconItems+
	[	
		"Falcons_DPM_booniehat",
		"Falcons_Urban_booniehat",
		"Falcons_Dark_booniehat",
		"Falcons_Desert_booniehat",
		"Falcons_Folded_boonie"
	] + GENERAL_GLOBAL + Falcons_Silencers + Falcons_Weapons_Standard;

/////////////////////////////////////////////////////////////////
JTACItems = JTACItems+
	[
		"Falcons_DPM_booniehat",
		"Falcons_Urban_booniehat",
		"Falcons_Dark_booniehat",
		"Falcons_Desert_booniehat",
		"Falcons_Folded_boonie"
	] + GENERAL_GLOBAL + Falcons_Silencers + Falcons_Weapons_Standard;

/////////////////////////////////////////////////////////////////
RconMedic = RconMedic+
	[
		"Falcons_DPM_booniehat",
		"Falcons_Urban_booniehat",
		"Falcons_Dark_booniehat",
		"Falcons_Desert_booniehat",
		"Falcons_Folded_boonie"
	] + GENERAL_GLOBAL + Falcons_Silencers + Falcons_Weapons_Standard;

/////////////////////////////////////////////////////////////////
UAVItems = UAVItems+
	[
		"Falcons_DPM_booniehat",
		"Falcons_Urban_booniehat",
		"Falcons_Dark_booniehat",
		"Falcons_Desert_booniehat",
		"Falcons_Folded_boonie"
	] + GENERAL_GLOBAL + Falcons_Silencers  + Falcons_Weapons_Standard;

/////////////////////////////////////////////////////////////////
RconExp = RconExp+
	[
		"Falcons_DPM_booniehat",
		"Falcons_Urban_booniehat",
		"Falcons_Dark_booniehat",
		"Falcons_Desert_booniehat",
		"Falcons_Folded_boonie"
	] + GENERAL_GLOBAL + Falcons_Silencers + Falcons_Weapons_Standard;

