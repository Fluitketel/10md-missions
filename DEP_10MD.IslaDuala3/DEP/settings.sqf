/*  Copyright 2016 Fluit
    
    This file is part of Dynamic Enemy Population.

    Dynamic Enemy Population is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation version 3 of the License.

    Dynamic Enemy Population is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Dynamic Enemy Population.  If not, see <http://www.gnu.org/licenses/>.
*/

// *************************************************************
// This is the settings file for DEP. Edit to your own liking.
// Every setting in this file is optional and will fall back
// to it's appropriate default value when commented out.
// For a complete list of possible settings and their values
// visit:   https://fluitarma.wordpress.com/dep-settings/
// *************************************************************

//dep_respawn_timeout = 2160; // 1440 minutes = 24 hours, 2160 minutes = 36 hours
dep_side = independent; 
dep_debug = false;
dep_civilians = false;
dep_zone_markers = [];
dep_map_center = [5120, 5120];

if (PARAMS_DEP_CIVILIANS == 1) then {
    dep_civilians = true;
};
if (PARAMS_DebugMode == 1) then {
    dep_debug = true;
};
if (PARAMS_DEP_MARKERS == 1) then {
    dep_zone_markers = ["town"];
};
dep_max_ai_tot  = PARAMS_DEP_AI_TOT;
dep_max_ai_loc  = PARAMS_DEP_AI_LOC;
dep_act_dist    = PARAMS_DEP_ACTDIST;
dep_safe_rad    = PARAMS_DEP_SAFERADIUS;
dep_air_patrols = PARAMS_DEP_AIR;

// Enemy density high
if (PARAMS_EnemyDensity == 2) then {
	dep_housepop 		= 90;
	dep_roadblocks 		= 16;
	dep_aa_camps 		= 8;
	dep_patrols 		= 16;
	dep_bunkers 		= 25;
	dep_military 		= 4;
	dep_ambushes 		= 6;
	dep_forest_patrols 	= 0;
	dep_mortars 		= 1 + (round random 2);
	dep_veh_chance 		= 1;
	dep_town_occupation = 0.8;
};

// Enemy density medium
if (PARAMS_EnemyDensity == 1) then {
	dep_housepop 		= 70;
	dep_roadblocks 		= 12;
	dep_aa_camps 		= 5;
	dep_patrols 		= 12;
	dep_bunkers 		= 20;
	dep_military 		= 3;
	dep_ambushes 		= 4;
	dep_forest_patrols 	= 0;
	dep_mortars 		= 1 + (round random 1);
	dep_veh_chance 		= 0.8;
	dep_town_occupation = 0.6;
};

// Enemy density low
if (PARAMS_EnemyDensity < 1) then {
	dep_housepop 		= 50;
	dep_roadblocks 		= 8;
	dep_aa_camps 		= 3;
	dep_patrols 		= 10;
	dep_bunkers 		= 15;
	dep_military 		= 2;
	dep_ambushes 		= 2;
	dep_forest_patrols 	= 0;
	dep_mortars 		= round random 1;
	dep_veh_chance 		= 0.7;
	dep_town_occupation = 0.4;
};

if (dep_debug) then {
    dep_chat_logging = true;
	//dep_enemy_presence = 0.01;
};

dep_safe_zone = [
    getMarkerPos "safe01",
    getMarkerPos "safe02",
    getMarkerPos "safe03",
    getMarkerPos "safe04",
    getMarkerPos "safe05",
    getMarkerPos "safe06",
    getMarkerPos "safe07"
];


// *************************************************************
// Class names
// *************************************************************

// Military forces
/*
// Iranian armed forces
dep_u_soldier       = "LOP_IRAN_Infantry_Rifleman";
dep_u_gl            = "LOP_IRAN_Infantry_Grenadier";
dep_u_ar            = "LOP_IRAN_Infantry_AR";
dep_u_at            = "LOP_IRAN_Infantry_LAT";
dep_u_medic         = "LOP_IRAN_Infantry_medic";
dep_u_aa            = "LOP_IRAN_Infantry_AA";
dep_u_aaa           = "LOP_IRAN_Infantry_Rifleman";
dep_u_sl            = "LOP_IRAN_Infantry_sergean";
dep_u_marksman      = "LOP_IRAN_Infantry_Marksman";
dep_u_sniper        = "LOP_IRAN_Infantry_AR_Asst";*/
// African Militia
dep_u_soldier       = "LOP_AFR_Infantry_Rifleman_4";
dep_u_gl            = "LOP_AFR_Infantry_GL";
dep_u_ar            = "LOP_AFR_Infantry_AR";
dep_u_at            = "LOP_AFR_Infantry_AT";
dep_u_medic         = "LOP_AFR_Infantry_Corpsman";
dep_u_aa            = "LOP_AFR_Infantry_AT";
dep_u_aaa           = "LOP_AFR_Infantry_AT";
dep_u_sl            = "LOP_AFR_Infantry_SL";
dep_u_marksman      = "LOP_AFR_Infantry_Marksman";
dep_u_sniper        = "LOP_AFR_Infantry_Marksman";

// Guerilla forces
/*
// Middle Eastern Militia
dep_u_g_soldier     = "LOP_AM_Infantry_Rifleman_3";
dep_u_g_gl          = "LOP_AM_Infantry_GL";
dep_u_g_ar          = "LOP_AM_Infantry_AR";
dep_u_g_at          = "LOP_AM_Infantry_AT";
dep_u_g_medic       = "LOP_AM_Infantry_Corpsman";
dep_u_g_sl          = "LOP_AM_Infantry_SL";
dep_u_g_marksman    = "LOP_AM_Infantry_Marksman";*/
// African Militia
dep_u_g_soldier     = "LOP_AFR_Infantry_Rifleman";
dep_u_g_gl          = "LOP_AFR_Infantry_GL";
dep_u_g_ar          = "LOP_AFR_Infantry_AR";
dep_u_g_at          = "LOP_AFR_Infantry_AT";
dep_u_g_medic       = "LOP_AFR_Infantry_Corpsman";
dep_u_g_sl          = "LOP_AFR_Infantry_SL";
dep_u_g_marksman    = "LOP_AFR_Infantry_Marksman";

// Vehicles
dep_civ_veh         = [
	"LOP_TAK_Civ_Landrover",
	"LOP_TAK_Civ_Offroad",
	"LOP_TAK_Civ_UAZ",
	"LOP_TAK_Civ_UAZ_Open",
	"LOP_TAK_Civ_Ural",
	"LOP_TAK_Civ_Ural_Open",
	"RDS_tt650_Civ_01",
	"RDS_JAWA353_Civ_01",
	"RDS_Gaz24_Civ_01",
	"RDS_Gaz24_Civ_02",
	"RDS_Gaz24_Civ_03",
	"RDS_S1203_Civ_01",
	"RDS_Lada_Civ_01",
	"RDS_Lada_Civ_02",
	"RDS_Lada_Civ_03",
	"RDS_Lada_Civ_04",
	"RDS_Lada_Civ_05"
];
dep_ground_vehicles = [
	"LOP_AM_Landrover",
	"LOP_AM_Landrover_M2",
	"LOP_AM_Offroad",
	"LOP_AM_Offroad_M2",
	"LOP_IRAN_BTR60",
	"LOP_IRAN_ZSU234",
	"LOP_AM_UAZ",
	"LOP_AM_UAZ_AGS",
	"LOP_AM_UAZ_DshKM",
	"LOP_AM_UAZ_Open",
	"LOP_AM_UAZ_SPG",
	"LOP_IRAN_KAMAZ_Transport",
	"LOP_IRAN_Ural_open"
];
dep_air_vehicles    = [
	"LOP_IRAN_Mi8MT_Cargo",
	"LOP_IRAN_AH1Z_WD"
];

// Static weapons
//dep_static_aa       = "LOP_IRAN_ZU23";
dep_static_at       = "LOP_IRAN_Static_AT4";
dep_static_hmg      = "LOP_IRAN_Static_DSHKM";
dep_static_gmg      = "LOP_IRAN_Static_M2";
dep_static_hmg_tri  = "LOP_IRAN_Static_SPG9";

dep_civ_units		= [
	"LOP_Tak_Civ_Man_01",
	"LOP_Tak_Civ_Man_02",
	"LOP_Tak_Civ_Man_04",
	"LOP_Tak_Civ_Man_05",
	"LOP_Tak_Civ_Man_06",
	"LOP_Tak_Civ_Man_07",
	"LOP_Tak_Civ_Man_08",
	"LOP_Tak_Civ_Man_09",
	"LOP_Tak_Civ_Man_10",
	"LOP_Tak_Civ_Man_11",
	"LOP_Tak_Civ_Man_12",
	"LOP_Tak_Civ_Man_13",
	"LOP_Tak_Civ_Man_14",
	"LOP_Tak_Civ_Man_15",
	"LOP_Tak_Civ_Man_16"
];