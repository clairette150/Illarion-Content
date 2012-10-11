-- UPDATE common SET com_script='item.id_456_snowball' WHERE com_itemid IN (456);
require("base.common")

module("item.id_456_snowball", package.seeall)

function MoveItemAfterMove(User, SourceItem, TargetItem)
	if Round==nil then
		Round=1;
	end
	if Round==1 then
        User:talkLanguage(Character.say,Player.german,"#me wirft einen Schneeball.");
        User:talkLanguage(Character.say,Player.english,"#me throws a snowball.");
		Round=2;
	else
		Round=nil;
	end
end

function UseItem( User, SourceItem, TargetItem, Counter, Param, ltstate )
	-- merung's test land -- 
	if (string.find(User.lastSpokenText,"distribution")~=nil) then
		local myValue = base.common.NormalRnd2(1, 9, 3)
		User:inform(""..myValue)
    end
end