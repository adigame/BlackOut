/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Poloshirt_blue","Poloshirt Blue",250],
			["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275],
			["U_C_Poloshirt_redwhite","Poloshirt Red/White",150],
			["U_C_Poloshirt_salmon","Poloshirt Salmon",175],
			["U_C_Poloshirt_stripped","Poloshirt stripped",125],
			["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350],
			["U_C_Poor_2","Rag tagged clothes",250],
			["U_IG_Guerilla2_2","Green stripped shirt & Pants",650],
			["U_IG_Guerilla3_1","Brown Jacket & Pants",735],
			["U_IG_Guerilla2_3","The Outback Rangler",1200],
			["U_C_HunterBody_grn","The Hunters Look",1500],
			["U_C_WorkerCoveralls","Mechanic Coveralls",2500],
			["U_OrestesBody","Surfing On Land",1100],
			["U_NikosAgedBody","Casual Wears",5000],
			["U_PMC_CombatUniformLS_BSGPBB",nil,500],
			["U_PMC_CombatUniformLS_SSGPSB",nil,500],
			["U_PMC_CombatUniformLS_ChckDBS_GPSB",nil,500],
			["U_PMC_CombatUniformLS_ChckLB_GPBB",nil,500],
			["U_PMC_CombatUniformLS_ChckLR_SPBB",nil,500],
			["U_PMC_CombatUniformLS_ChckP_BPBB",nil,500],
			["U_PMC_CombatUniformLS_BSGPSB",nil,500],
			["U_PMC_CombatUniformLS_BSSPBB",nil,500],
			["U_PMC_CombatUniformLS_BSSPSB",nil,500],
			["U_PMC_CombatUniformLS_GSBPBB",nil,500],
			["U_PMC_CombatUniformLS_GSSPBB",nil,500],
			["U_PMC_CombatUniformLS_IndPBSBB",nil,500],
			["U_PMC_CombatUniformLS_SSBPBB",nil,500],
			["U_PMC_CombatUniformLS_SSGPBB",nil,500],
			["U_PMC_CombatUniformRS_BSGPBB",nil,500],
			["U_PMC_CombatUniformRS_SSGPSB",nil,500],
			["U_PMC_CombatUniformRS_ChckDBS_GPSB",nil,500],
			["U_PMC_CombatUniformRS_ChckLB_GPBB",nil,500],
			["U_PMC_CombatUniformRS_ChckLR_SPBB",nil,500],
			["U_PMC_CombatUniformRS_ChckP_BPBB",nil,500],
			["U_PMC_CombatUniformRS_BSGPSB",nil,500],
			["U_PMC_CombatUniformRS_BSSPBB",nil,500],
			["U_PMC_CombatUniformRS_BSSPSB",nil,500],
			["U_PMC_CombatUniformRS_GSBPBB",nil,500],
			["U_PMC_CombatUniformRS_GSSPBB",nil,500],
			["U_PMC_CombatUniformRS_IndPBSBB",nil,500],
			["U_PMC_CombatUniformRS_SSBPBB",nil,500],
			["U_PMC_CombatUniformRS_SSGPBB",nil,500],
			["U_PMC_BluePlaidShirt_BeigeCords",nil,500],
			["U_PMC_BluPolo_BgPants",nil,500],
			["U_PMC_WhtPolo_BluPants",nil,500],
			["U_PMC_WhtPolo_GrnPants",nil,500],
			["U_PMC_RedPlaidShirt_DenimCords",nil,500],
			["U_PMC_BgPolo_GrnPants",nil,500],
			["U_PMC_BlackPoloShirt_BeigeCords",nil,500],
			["U_PMC_BlckPolo_BgPants",nil,500],
			["U_PMC_BlckPolo_BluPants",nil,500],
			["U_PMC_BluPolo_GrnPants",nil,500],
			["U_PMC_BrnPolo_BgPants",nil,500],
			["U_PMC_BrnPolo_BluPants",nil,500],
			["U_PMC_GrnPolo_BgPants",nil,500],
			["U_PMC_WhtPolo_BgPants",nil,500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};