waitUntil {!isNil "m_isclient"};
if !(m_isclient) exitWith {};

waitUntil {!isNil "m_ace"};
waitUntil {!isNil "m_acre"};
waitUntil {!isNil "m_taskforce"};

PARAMS_ALLOW_BIS = 1;
PARAMS_ALLOW_FAL = 0;
PARAMS_ALLOW_ACE = 0;
PARAMS_ALLOW_RHS = 0;
PARAMS_ALLOW_3CB = 0;

if (m_ace) then { PARAMS_ALLOW_ACE = 1; };
if (m_rhs) then { PARAMS_ALLOW_RHS = 1; };

_target = sideUnknown;
_restrictionDistance = 5;
//  _specNames _specSlots _specTypes ... all must have the same amounts
_specNames = 
[
    "Rifelman",
    "Grenadier", 
    "Autorifleman", 
    "AT Specialist", 
    "Medic", 
    "EOD", 
    "PilotCrewmen",
    "RTO",
    "Commander",
    "SquadLead",
    "TeamLead", 
    "Marksman",
    "Recon",
    "JTAC",
    "RconMedic",
    "UAVOperator",
    "RconExp",
    "Repair"
];
_specTypes = 
[
	["B_Soldier_F", "B_T_Soldier_F"],
    ["B_Soldier_GL_F", "B_T_Soldier_GL_F"],
	["B_soldier_AR_F","B_T_Soldier_AR_F"],
	["B_soldier_LAT_F","B_soldier_AT_F", "B_T_Soldier_AT_F"],
	["B_medic_F", "B_T_Medic_F"],
	["B_soldier_exp_F", "B_T_Soldier_Exp_F"],
	["B_Helipilot_F","B_helicrew_F","B_Pilot_F","B_soldier_repair_F","B_T_Pilot_F","B_T_Helipilot_F"],
	["B_Soldier_A_F", "B_T_Soldier_unarmed_F"],
	["B_officer_F"],
	["B_Soldier_SL_F", "B_T_Soldier_SL_F"],
	["B_Soldier_TL_F", "B_T_Soldier_TL_F"],
	["B_recon_M_F","B_T_Sniper_F","B_T_Spotter_F", "B_T_soldier_M_F"],
	["B_recon_F"],
	["B_recon_JTAC_F"],
	["B_recon_medic_F"],
	["B_soldier_UAV_F"],
	["B_recon_exp_F"],
	["B_T_Soldier_Repair_F"]
];

if (m_rhs) then {
	// Rifleman
	_specTypes set [0, (_specTypes select 0) + ["rhsusf_army_ocp_rifleman", "rhsusf_army_ocp_rifleman_m4", "rhsusf_army_ocp_rifleman_m16"]];
	// Grenadier
	_specTypes set [1, (_specTypes select 1) + ["rhsusf_army_ocp_grenadier"]];
	// Autorifleman
	_specTypes set [2, (_specTypes select 2) + ["rhsusf_army_ocp_autorifleman"]];
	// AT Specialist
	_specTypes set [3, (_specTypes select 3) + ["rhsusf_army_ocp_javelin"]];
	// Medic
	_specTypes set [4, (_specTypes select 4) + ["rhsusf_army_ocp_medic"]];
	// EOD
	_specTypes set [5, (_specTypes select 5) + ["rhsusf_army_ocp_explosives"]];
	// PilotCrewmen
	_specTypes set [6, (_specTypes select 6) + ["rhsusf_army_ocp_helipilot", "rhsusf_army_ocp_helicrew", "rhsusf_army_ocp_crewman"]];
	// RTO
	//_specTypes set [7, (_specTypes select 7) + [""]];
	// Commander
	_specTypes set [8, (_specTypes select 8) + ["rhsusf_army_ocp_officer"]];
	// SquadLead
	_specTypes set [9, (_specTypes select 9) + ["rhsusf_army_ocp_squadleader"]];
	// TeamLead
	_specTypes set [10, (_specTypes select 10) + ["rhsusf_army_ocp_teamleader"]];
	// Marksman
	_specTypes set [11, (_specTypes select 11) + ["rhsusf_army_ocp_marksman"]];
	// Recon
	_specTypes set [12, (_specTypes select 12) + ["rhsusf_socom_marsoc_cso"]];
	// JTAC
	_specTypes set [13, (_specTypes select 13) + ["rhsusf_socom_marsoc_jtac"]];
	// RconMedic
	_specTypes set [14, (_specTypes select 14) + ["rhsusf_socom_marsoc_sarc"]];
	// UAVOperator
	_specTypes set [15, (_specTypes select 15) + ["rhsusf_socom_marsoc_jfo"]];
	// RconExp
	_specTypes set [16, (_specTypes select 16) + ["rhsusf_socom_marsoc_cso_eod"]];
	// Repair
	_specTypes set [17, (_specTypes select 17) + ["rhsusf_army_ocp_engineer"]];
};

_specSlots = [];
{ _specSlots = _specSlots + [-1]; } forEach _specNames;

GENERAL_GLOBAL      = [];
Weapons_Standard    = [];

RifelmanItems       = [];
GrenadierItems      = [];		
AutoriflemanItems   = [];
ATItems             = [];
MedicItems          = [];
EODItems            = [];
PilotItems          = [];
RTOItems            = [];
CommanderItems      = [];
SquadLeadItems      = [];
TeamLeadItems       = [];
MarksmanItems       = [];
ReconItems          = [];
JTACItems           = [];
RconMedic           = [];
UAVItems            = [];
RconExp             = [];
Repair              = [];

if (PARAMS_ALLOW_BIS == 1) then {
    _VA_Bis_Script = execVM "Arsenal\VA_Bis.sqf";
    waitUntil{scriptDone _VA_Bis_Script}; 
};

if (PARAMS_ALLOW_FAL == 1) then {
    _VA_Falcons_Script = execVM "Arsenal\VA_Fal.sqf";
    waitUntil{scriptDone _VA_Falcons_Script}; 
};

if (PARAMS_ALLOW_ACE == 1) then {
    _VA_Ace_Script = execVM "Arsenal\VA_Ace.sqf";
    waitUntil{scriptDone _VA_Ace_Script}; 
};

if (PARAMS_ALLOW_RHS == 1) then {
    _VA_Rhs_Script = execVM "Arsenal\VA_Rhs.sqf";
    waitUntil{scriptDone _VA_Rhs_Script}; 
};

if (PARAMS_ALLOW_3CB == 1) then {
    _VA_3cb_Script = execVM "Arsenal\VA_3cb.sqf";
    waitUntil{scriptDone _VA_3cb_Script}; 
};

// Set the allowed items for the player (only used for restrictions)
/*AllowedItems = [];
if ((typeOf player) in (_specTypes select 0))   then { AllowedItems = AllowedItems + RifelmanItems; };
if ((typeOf player) in (_specTypes select 1))   then { AllowedItems = AllowedItems + GrenadierItems; }; 
if ((typeOf player) in (_specTypes select 2)) 	then { AllowedItems = AllowedItems + AutoriflemanItems; }; 
if ((typeOf player) in (_specTypes select 3))   then { AllowedItems = AllowedItems + ATItems; }; 
if ((typeOf player) in (_specTypes select 4))   then { AllowedItems = AllowedItems + MedicItems; }; 
if ((typeOf player) in (_specTypes select 5))   then { AllowedItems = AllowedItems + EODItems; }; 
if ((typeOf player) in (_specTypes select 6))   then { AllowedItems = AllowedItems + PilotItems; }; 
if ((typeOf player) in (_specTypes select 7))   then { AllowedItems = AllowedItems + RTOItems; };  
if ((typeOf player) in (_specTypes select 8))   then { AllowedItems = AllowedItems + CommanderItems; }; 
if ((typeOf player) in (_specTypes select 9))   then { AllowedItems = AllowedItems + SquadLeadItems; }; 
if ((typeOf player) in (_specTypes select 10))  then { AllowedItems = AllowedItems + TeamLeadItems; }; 
if ((typeOf player) in (_specTypes select 11))  then { AllowedItems = AllowedItems + MarksmanItems; }; 
if ((typeOf player) in (_specTypes select 12))  then { AllowedItems = AllowedItems + ReconItems; }; 
if ((typeOf player) in (_specTypes select 13))  then { AllowedItems = AllowedItems + JTACItems; };  
if ((typeOf player) in (_specTypes select 14))  then { AllowedItems = AllowedItems + RconMedic; }; 
if ((typeOf player) in (_specTypes select 15))  then { AllowedItems = AllowedItems + UAVItems; }; 
if ((typeOf player) in (_specTypes select 16))  then { AllowedItems = AllowedItems + RconExp; }; 
if ((typeOf player) in (_specTypes select 17))  then { AllowedItems = AllowedItems + Repair; };*/ 

VA_MAIN = true;
	
_specItems = [
    RifelmanItems,
    GrenadierItems,
    AutoriflemanItems,
    ATItems,
    MedicItems,
    EODItems,
    PilotItems,
    RTOItems,
    CommanderItems,
    SquadLeadItems,
    TeamLeadItems,
    MarksmanItems,
    ReconItems,
    JTACItems,
    RconMedic,
    UAVItems,
    RconExp,
    Repair
 ];

[_target, [_this select 0, _restrictionDistance, _specNames, _specSlots, _specTypes, _specItems]] spawn Arsenal_fnc_executeLocalArsenal;

