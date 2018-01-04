if (!isServer) exitWith {};

private ["_vehicle", "_unit"];

_vehicle = _this select 0;
_vehicle allowDamage false;

sleep random 3;

if (isNil "StaticTurretGroup") then {
	StaticTurretGroup = createGroup west;
};

_vehicle lock 0;
for "_y" from 1 to (_vehicle emptyPositions "Gunner") do {
	_unit = StaticTurretGroup createUnit ["rhsusf_army_ocp_rifleman", (getPos _vehicle), [], 0, "NONE"];
	_unit allowDamage false;
    _unit assignAsGunner _vehicle;
    _unit moveInGunner _vehicle;
};
for "_y" from 1 to (_vehicle emptyPositions "Commander") do {
	_unit = StaticTurretGroup createUnit ["rhsusf_army_ocp_rifleman", (getPos _vehicle), [], 0, "NONE"];
	_unit allowDamage false;
    _unit assignAsCommander _vehicle;
    _unit moveInCommander _vehicle;
};

waitUntil {((_vehicle emptyPositions "Gunner") + (_vehicle emptyPositions "Commander")) == 0};

_vehicle lock 2;
clearBackpackCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearWeaponCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;

{
	doStop _x;
} foreach (crew _vehicle);

while {true} do {
	sleep 1200;
	_vehicle setDamage 0;
	_vehicle setVehicleAmmo 1;
	_vehicle setFuel 1;
};