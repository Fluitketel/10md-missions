waitUntil {!isNil "dep_ready"};

private ["_missionlocations", "_safe", "_inrange", "_buildings", "_spawnpositions", "_alive", "_canbealive"];

m_missionstatus = "inactive";
m_missionlocations = [];
m_mission = locationNull;
m_missionid = 0;
m_missiontask = "";
m_missionradius = 300;
m_mission_groups = [];
m_mission_objects = [];

m_missionmarker = createMarker ["MissionMarker", [0, 0 ,0]];
m_missionmarker setMarkerShape "ELLIPSE";
m_missionmarker setMarkerSize [m_missionradius, m_missionradius];
m_missionmarker setMarkerBrush "DiagGrid";
m_missionmarker setMarkerColor "ColorRed";
m_missionmarker setMarkerAlpha 0;

m_fnc_alive_units = {
	private ["_group", "_alive"];
	_alive = 0;
	{
		_group = _x;
		{
			if (alive _x) then { 
				_alive = _alive + 1; 
			};
		} foreach (units _group);
	} forEach m_mission_groups;
	_alive;
};

m_fnc_killall = {
	{
		_group = _x;
		{
			_x setDamage 1;
		} foreach (units _group);
	} forEach m_mission_groups;
};

// Gather possible mission locations
_missionlocations = nearestLocations [dep_map_center, ["NameVillage","NameCity","NameCityCapital"], dep_map_radius];
{
	_safe = [getPos _x, dep_safe_rad + m_missionradius] call dep_fnc_outsidesafezone;
	if (_safe) then {
		m_missionlocations = m_missionlocations + [_x];
	};
} forEach _missionlocations;

while {true} do {
	waitUntil {m_missionstatus == "inactive"};
	waitUntil {(!dep_exceeded_group_limit && !dep_exceeded_ai_limit)};
	
	m_missionid = m_missionid + 1;
	
	// Select a new mission location
	_safe = false;
	while {!_safe} do {
		m_mission = m_missionlocations call BIS_fnc_selectRandom;
		_inrange = [getPos m_mission, dep_act_dist] call dep_fnc_players_within_range;
		if (!_inrange) then {
			_safe = true;
		};
		sleep 1;
	};
	
	// Find building spawn positions
	_buildings = [getPos m_mission, m_missionradius] call dep_fnc_enterablehouses;
	_spawnpositions = [];
    {
        _spawnpositions = _spawnpositions + (_x call dep_fnc_buildingpositions);
    } forEach _buildings;
	
	// Garrison units in buildings
	if ((count _spawnpositions) > 0) then {
		_group = createGroup dep_side;
		m_mission_groups = m_mission_groups + [_group];
		while {((count _spawnpositions) > 0) && ((count units _group) < dep_max_ai_loc)} do {
			_spawnpos = _spawnpositions call BIS_fnc_selectRandom;
			_spawnpositions = _spawnpositions - [_spawnpos];
			_soldiername = dep_mil_units call BIS_fnc_selectRandom;
			_soldier = [_group, _soldiername, _spawnpos] call dep_fnc_createunit;
			_soldier setDir (random 360);
		};
		doStop (units _group);
		[_group] spawn dep_fnc_enemyspawnprotect;
	};
	sleep 5;
	
	// Patrolling units
	_group = createGroup dep_side;
	m_mission_groups = m_mission_groups + [_group];
	_spawnpos = (getPos m_mission) findEmptyPosition [0, m_missionradius];
	while {(count units _group) < dep_max_ai_loc} do {
		_soldiername = dep_mil_units call BIS_fnc_selectRandom;
		_soldier = [_group, _soldiername, _spawnpos] call dep_fnc_createunit;
	};
	[_group] spawn dep_fnc_enemyspawnprotect;
	[_group, m_missionradius, getPos m_mission] spawn dep_fnc_unitpatrol;
	sleep 5;
	
	// Patrolling vehicles
	_patrolradius = m_missionradius * 1.3;
    _roads = [getPos m_mission, _patrolradius] call dep_fnc_findroads;
    if ((count _roads) > 10) then {
        _numvehicles = round random (dep_veh_chance * 3);
        for "_z" from 1 to _numvehicles do {
            _road = _roads call BIS_fnc_selectRandom;
            _dir = [_road] call dep_fnc_roaddir;
            _vehname = dep_ground_vehicles call BIS_fnc_selectRandom;
            _veh = _vehname createVehicle (getPos _road);
			[_veh] spawn dep_fnc_delete_vehicle;
            _veh setDir _dir;
            [_veh] spawn dep_fnc_vehicledamage;
            _group = [_veh] call dep_fnc_vehicle_fill;
			m_mission_groups = m_mission_groups + [_group];
            nill = [getPos m_mission, _group, _patrolradius] call dep_fnc_vehiclepatrol;
        };
    };
	sleep 5;
	
	m_missionmarker setMarkerPos (getPos m_mission);
	m_missionmarker setMarkerAlpha 1;
	
	m_missiontask = format["Task_%1", m_missionid];
	_taskname = format["Attack %1", (text m_mission)];
	[dep_own_side, m_missiontask, [_taskname, _taskname], getPos m_mission, true, 1, true, "attack"] call BIS_fnc_taskCreate;
	
	m_missionstatus = "active";
	
	// Start monitoring mission status
	_alive = [] call m_fnc_alive_units;
	_canbealive = round (_alive * 0.1);
	while {m_missionstatus == "active"} do {
		_alive = [] call m_fnc_alive_units;
		if (_alive <= _canbealive) then {
			[m_missiontask, "SUCCEEDED", true] call BIS_fnc_taskSetState;
			m_missionmarker setMarkerAlpha 0;
			sleep 120;
			
			// Cleanup groups
			{
				_group = _x;
				{
					deleteVehicle _x;
				} foreach (units _group);
				deleteGroup _group;
			} forEach m_mission_groups;
			
			m_missionstatus = "inactive";
		};
		sleep 10;
	};
};