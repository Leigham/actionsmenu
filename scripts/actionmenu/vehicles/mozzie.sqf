
    //Script created by Leigham
 
cutText [format["Checking if you have a Large Corrugated for the Mozzie"], "PLAIN DOWN"];
 
sleep 3;
 
    if ("ItemCorrugatedLg" in magazines player) then{
player playActionNow "Medic";
sleep 3;
_spawn = "mosquito_epoch";
    _posplr = [((getPos player) select 0) + 2, ((getPos player) select 1) + 2, 0];
_saveVehicle call EPOCH_server_save_vehicle;
    _dirplr = getDir player;
    _spwnveh = _spawn createVehicle (_posplr);
    _spwnveh setVariable ["Sarge",1,true];
    _spwnveh call EPOCH_server_setVToken;
    
sleep 3;
 
cutText [format["You've used your Large Corrugated to build a Mozzie."], "PLAIN DOWN"];
} else {
SystemChat "You need one Large Corrugated to build a Mozzie"; 
};
