-- UPDATE common SET com_script='item.id_1272_markerstone' WHERE com_itemid IN (1272);

require("quest.explorersguild")
require("base.common")

module("item.id_66_markerstone", package.seeall)

function UseItem( User, SourceItem, TargetItem, Counter, Param, ltstate )  -- DONT EDIT THIS LINE!
    User:talk(CCharacter.say,"Using");
    User:talk(CCharacter.say,"You have seen "..quest.explorersguild.CountStones(User).." different stones in your lifetime.");
end

function LookAtItem(User,Item)
    if (Item.data~=0) then
        DisplayText = base.common.GetNLS( User, "Ein Markierungsstein der Abenteurer Gilde; er tr�gt die Nummer "..Item.data,"A marker stone of the Explorers Guild; it has the number "..Item.data);
        quest.explorersguild.WriteStone(User,Item.data);
    else
        DisplayText = base.common.GetNLS( User, "Stein", "stone");
    end
    world:itemInform(User,Item, DisplayText );
    
end
