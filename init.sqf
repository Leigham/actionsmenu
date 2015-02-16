[] spawn {
			waitUntil{vehicle player == player && time > 5};
			systemChat format["Loading Action Menu"];
			sleep 5;
			[] ExecVM "scripts\actionmenu\actionmenu_main.sqf";
			sleep 5;
			systemChat format["Action Menu Loaded"];
			};
