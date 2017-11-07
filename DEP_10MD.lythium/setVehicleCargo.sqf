if (!isServer) exitWith {};
if (isNull _this) exitWith {};
if !(alive _this) exitWith {};

clearBackpackCargoGlobal _this;
clearMagazineCargoGlobal _this;
clearWeaponCargoGlobal _this;
clearItemCargoGlobal _this;

// Ammo Truck
if (typeOf _this in ["B_Truck_01_ammo_F"]) then {
    _this addMagazineCargoGlobal  ["30Rnd_556x45_Stanag",30];
    _this addMagazineCargoGlobal  ["30Rnd_556x45_Stanag_Tracer_Red",30];
    _this addMagazineCargoGlobal  ["200Rnd_556x45_Box_F",10];
    _this addMagazineCargoGlobal  ["200Rnd_556x45_Box_Red_F",5];
    _this addMagazineCargoGlobal  ["1Rnd_HE_Grenade_shell",20];
    _this addMagazineCargoGlobal  ["3Rnd_HE_Grenade_shell",10];
    _this addMagazineCargoGlobal  ["30Rnd_65x39_caseless_mag",30];
    _this addMagazineCargoGlobal  ["30Rnd_65x39_caseless_mag_Tracer",30];
    _this addMagazineCargoGlobal  ["NLAW_F",5];
    _this addMagazineCargoGlobal  ["Titan_AT",5];
    _this addMagazineCargoGlobal  ["Titan_AA",5];
};

// Repair Truck
if (typeOf _this in ["B_Truck_01_Repair_F"]) then {
    _this addItemCargoGlobal ["ToolKit",10];
};
	
// Medical truck
if (typeOf _this in ["B_Truck_01_medical_F"]) then {
    waitUntil {!isNil "m_ace"};
    if (m_ace) then {
        // Ace medical items
        _this addItemCargoGlobal ["ACE_fieldDressing",100];
        _this addItemCargoGlobal ["ACE_elasticBandage",50];
        _this addItemCargoGlobal ["ACE_morphine",100];
        _this addItemCargoGlobal ["ACE_epinephrine",100];
        _this addItemCargoGlobal ["ACE_bloodIV",25];
        _this addItemCargoGlobal ["ACE_bloodIV_500",25];

        // Advanced medical system
        if (!isNil "ace_medical_level") then {    
            if (ace_medical_level == 2) then {
                _this addItemCargoGlobal ["ACE_personalAidKit",25];
                _this addItemCargoGlobal ["ACE_tourniquet",25];
                _this addItemCargoGlobal ["ACE_plasmaIV",20];
                _this addItemCargoGlobal ["ACE_plasmaIV_500",20];
                _this addItemCargoGlobal ["ACE_salineIV",20];
                _this addItemCargoGlobal ["ACE_salineIV_500",20];
            };
        };
    } else {
        _this addItemCargoGlobal ["FirstAidKit",100];
        _this addItemCargoGlobal ["Medikit",10];
    };		
};