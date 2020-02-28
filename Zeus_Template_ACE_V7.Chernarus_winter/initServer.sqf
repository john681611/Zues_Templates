call {while {true} do
        {
        "respawn_west" setMarkerPos [(getPos B_Ammo select 0) +5,(getPos B_Ammo select 1)];
		"respawn_east" setMarkerPos [(getPos O_Ammo select 0) +5,(getPos O_Ammo select 1)];
		"respawn_guerrila" setMarkerPos [(getPos I_Ammo select 0) +5,(getPos I_Ammo select 1)];
        sleep 5;
        }
    };
