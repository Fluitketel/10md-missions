if !(hasInterface) exitWith {};

private ["_obj", "_name", "_spawnpositions"];
_obj = _this select 0;

waitUntil {count ([west] call BIS_fnc_getRespawnPositions) > 0};

while {true} do {
    removeAllActions _obj;
	_spawnpositions = [west] call BIS_fnc_getRespawnPositions;
	{
		_name = _x getVariable "Respawn_name";
		_obj addAction [_name, "teleport.sqf", getPosATL _x, 6, false, true, "", "vehicle _this == _this", 6];
	} foreach _spawnpositions;
    sleep 60;
};