-- UPDATE common SET com_script='item.id_66_markerstone' WHERE com_itemid IN (66);


require("quest.explorersguild")
require("base.common")
require("base.ranklist")
require("quest.explorerguild_320_questlog")

module("item.id_66_markerstone", package.seeall)

function UseItem(User, SourceItem, ltstate)  -- DONT EDIT THIS LINE!
	local stonedata=SourceItem:getData("markerstone");
	if tonumber(stonedata) then
		if not quest.explorersguild.CheckStone(User,tonumber(stonedata)) then
			--debug("Stone used. stonedata: "..stonedata)
			DisplayText = base.common.GetNLS( User, "Du hast einen Markierungsstein der Abenteurergilde entdeckt; er tr�gt die Nummer "..stonedata,"You found a marker stone of the Explorers' Guild; it has the number "..stonedata);
			quest.explorersguild.WriteStone(User,tonumber(stonedata));
			quest.explorersguild.getReward(User);
			base.ranklist.setRanklist(User, "explorerRanklist", quest.explorersguild.CountStones(User));
			User:setQuestProgress(320,1)
		else
			DisplayText = base.common.GetNLS( User, "Du hast diesen Markierungsstein der Abenteurergilde bereits fr�her gefunden; er tr�gt die Nummer "..stonedata..". Du hast bereits "..quest.explorersguild.CountStones(User).." dieser Steine gefunden.","You have already found that marker stone of the Explorers' Guild earlier; it has the number "..stonedata..". You have already found "..quest.explorersguild.CountStones(User).." of these stones.");
		end
		User:inform(DisplayText);
    end
end

function LookAtItem(User,Item)
	local stonedata=Item:getData("markerstone");
	if tonumber(stonedata) then
		if not quest.explorersguild.CheckStone(User,tonumber(stonedata)) then
			base.lookat.SetSpecialDescription( Item, "Ein Markierungsstein der Abenteurergilde.","A marker stone of the Explorers' Guild.");
		else
			base.lookat.SetSpecialDescription( Item, "Du hast diesen Markierungsstein der Abenteurergilde bereits fr�her gefunden; er tr�gt die Nummer "..stonedata,"You have already found that marker stone of the Explorers' Guild earlier; it has the number "..stonedata);
		end
    end
	world:itemInform(User,Item, base.lookat.GenerateLookAt(User, Item, base.lookat.NONE) );    
end
