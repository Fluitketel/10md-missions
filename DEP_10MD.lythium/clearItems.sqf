if (!isServer) exitWith {};
private ["_itemsToClear","_pos","_rad","_delay"];
_pos    = _this select 0;
_rad    = 100;              // radius outwards from center point to clear items.
_delay  = 1200;             // amount of time in-between clean-ups
 
while {true} do {
	sleep _delay;
	_itemsToClear = nearestObjects [_pos,["WeaponHolder","GroundWeaponHolder","WeaponHolderSimulated"],_rad];
	{
		deleteVehicle _x;
	} forEach _itemsToClear;
};