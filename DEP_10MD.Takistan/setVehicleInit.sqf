if (!isServer) exitWith {};
private ["_vehicle","_delay","_deserted","_transports","_armored","_utility"];
_vehicle = _this select 0;

_vehicle lock 0;

// Set the vehicle cargo items
_vehicle execVM "setVehicleCargo.sqf";

// Set the vehicle respawn settings
_delay = 300; // 5 minutes
_deserted = 7200; // 2 hours

if (_vehicle isKindOf "Tank") then {
    _delay = 600; // 10 minutes
    _deserted = 7200; // 2 hours
};
if (_vehicle isKindOf "Plane") then {
    _delay = 900; // 15 minutes
    _deserted = 3600; // 1 hour
};
if (_vehicle isKindOf "Helicopter") then {
    _delay = 600; // 10 minutes
    _deserted = 7200; // 2 hours
};
_nil = [_vehicle, _delay, _deserted, 0, false, false, "setVehicleCargo.sqf"] execVM "setVehicleRespawn.sqf";