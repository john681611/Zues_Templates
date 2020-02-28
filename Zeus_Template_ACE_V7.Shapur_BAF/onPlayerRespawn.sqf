 _player =  _this select 0;
 _player setpos (getMarkerpos "perg");
 _Time = (60*(paramsArray select 0));
 if((paramsArray select 0) !=999) then {
   while {_Time > 0} do {
     _Time = _Time -1;
     sleep 1;
   hintSilent format ["Respawn in %1", _Time];
  };
    hint format ["Respawning", _Time];
    ["Terminate"] call BIS_fnc_EGSpectator;
    switch (side player) do {
      case west: { _player setpos (getMarkerpos "respawn_west"); };
      case east: { _player setpos (getMarkerpos "respawn_east"); };
      case independent: {_player setpos (getMarkerpos "respawn_guerrila");}
  };
} else {
  //hint "You are here forever get comfortable";
  ["Initialize", [player, [], true]] call BIS_fnc_EGSpectator;
};
