private ["_box", "_ammo"];
_box = _this select 0;

[position _box] execVM "clearItems.sqf";

waitUntil {!isNil "PARAMS_Limited_Arsenal"};
if (PARAMS_Limited_Arsenal == 1) then {
    _ammo = [_box] execVM "Arsenal\VA_Main.sqf";
} else {
    _box addAction ["Gear", "[""Open"",true] spawn BIS_fnc_arsenal;", nil, 6, true, true, "", "vehicle player == player"];
};