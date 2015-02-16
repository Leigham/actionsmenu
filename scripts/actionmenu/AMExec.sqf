_adminlist = "adminlist.sqf"
_pathtobuds = "scripts\Actionmenu\earbuds\";
//_pathtovehicles = "scripts\Actionmenu\vehicles\";//disabled due to cleanup 
//_pathtobasekits = "scripts\actionmenu\basekits\";
_EXECscript1 = 'player execVM "'+_pathtobuds+'%1"';
//_EXECscript2 = 'player execVM "'+_pathtovehicles+'%1"';//disabled due to cleanup 
_EXECscript3 = 'player execVM "'+_pathtobasekits+'%1"';
//MainActionMenu
if ((getPlayerUID player) in _adminlist) then {
ActionMenu =
        [
		["",true],
			["EarBud Menu", [2], "#USER:earMenu", -5, [["expression", ""]], "1", "1"],
			//["Craft Menu", [3], "#USER:craftMenu", -5, [["expression", ""]], "1", "1"],
			["Base Kits", [4], "#USER:BasekitMenu", -5, [["expression", ""]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];
}else{
ActionMenu =
        [
		["",true],
			["EarBud Menu", [2], "#USER:earMenu", -5, [["expression", ""]], "1", "1"],
			//["Craft Menu", [3], "#USER:craftMenu", -5, [["expression", ""]], "1", "1"],
			["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];
};
//earbudmenu
earMenu =
[
	["",true],
		["Put Earbuds In", [2], "", -5, [["expression", format[_EXECscript1, "earbudsin.sqf"]]], "1", "1"],
		["Remove Earbuds", [3], "", -5, [["expression", format[_EXECscript1, "earbudsout.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
//Craft Menu
/*craftMenu =
[
	["",true],
		["Craft Bike", [2], "", -5, [["expression", format[_EXECscript2, "bike.sqf"]]], "1", "1"],
		["Craft Mozzie", [3], "", -5, [["expression", format[_EXECscript2, "mozzie.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];*/
//basekitmenu
Basekitmenu = 
[
	["",true],
		["Small Base Kit", [2], "", -5, [["expression", format[_EXECscript3, "smallbasekit.sqf"]]], "1", "1"],
		["Medium Base Kit", [3], "", -5, [["expression", format[_EXECscript3, "medbasekit.sqf"]]], "1", "1"],
		["Large Base Kit", [3], "", -5, [["expression", format[_EXECscript3, "largebasekit.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
showCommandingMenu "#USER:ActionMenu";
