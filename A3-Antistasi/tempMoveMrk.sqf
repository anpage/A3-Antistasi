private ["_marcador","_pos","_forzado"];
waitUntil {!movingMarker};
movingMarker = true;
_marcador = _this select 0;
_pos = getMarkerPos _marcador;
_forzado = false;
if (_marcador in forcedSpawn) then {forcedSpawn = forcedSpawn - [_marcador]; publicVariable "forcedSpawn"; _forzado = true};
_marcador setMarkerPos [0,0,0];
{if (_x distance [0,0,0] < 1000) then {if (!isPlayer _x) then {deleteVehicle _x}}} forEach allUnits;
waitUntil {(spawner getVariable _marcador == 2)};
waitUntil {{_x getVariable [_marcador,false]} count allUnits == 0};
_marcador setMarkerPos _pos;
if (_forzado) then {forcedSpawn pushBackUnique _marcador; publicVariable "forcedSpawn"};
movingMarker = false;