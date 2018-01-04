private ["_unit", "_pos", "_newpos"];
_unit = _this select 1;
_pos = _this select 3;

if (typeName _pos == "ARRAY") then {
    _newpos = _pos findEmptyPosition[0, 15, (typeOf _unit)];
    if ((count _newpos) == 3) then {
		cutText ["", "BLACK FADED", 999];
		0 fadeSound 0;
	
        _unit setPosATL _newpos;
		
		"dynamicBlur" ppEffectEnable true;   
		"dynamicBlur" ppEffectAdjust [5];   
		"dynamicBlur" ppEffectCommit 0;     
		"dynamicBlur" ppEffectAdjust [0.0];  
		"dynamicBlur" ppEffectCommit 3;
		5 fadeSound 1;
		cutText ["", "BLACK IN", 5];
    } else {
        hint "Unable to teleport";
    };
};