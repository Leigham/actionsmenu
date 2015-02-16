# actionsmenu
actions menu for arma 3 epoch

Install Insctructions, 


Copy what is in the init.sqf and paste in to yours or if you dont have one just put it in your mission.pbo

copy the scripts folder into the root directory of your mission.pbo 

paste whats below onto the first item in your mission sqm


	 init="if (isServer) then {execVM '\admin.sqf';};"; 
	 
	 so it looks like 
	 
	 
	 items = 1;
    class Item0
    {
     position[] = {1021.3512,5.8308096,2021.0009};
     azimut = 159.84946;
     special = "NONE";
     id = 0;
     side = "CIV";
     vehicle = "VirtualMan_EPOCH";
     player = "PLAY CDG";
     leader = 1;
     skill = 0.6;
	   init="if (isServer) then {execVM '\admin.sqf';};"; 
    };
    
    
    then put the admin.sqf into your server root directory along with @epochhive and whatever else 
    
    
    
