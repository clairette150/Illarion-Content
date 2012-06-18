-- Long Time Effect Script: Newbie Island
-- Effect ID: 13
-- Values: newbiePosX, newbiePosY, newbiePosZ, itemid_1, itemnumber_1, itemdata_1, itemquality_1 (1-18)
-- reworked by Merung for Rincewinds new-noobia

require("base.common")
module("lte.newbieisland", package.seeall)

-- cycle messages 
	ListCycleMessageGerman = {}
	ListCycleMessageGerman = {
	"@Rince: zyklusnachricht 1 deutsch",
	"@Rince: zyklusnachricht 2 deutsch",
	"@Rince: zyklusnachricht 3 deutsch",
	"@Rince: zyklusnachricht 4 deutsch",
	"@Rince: zyklusnachricht 5 deutsch",
	"@Rince: zyklusnachricht 6 deutsch",
	"@Rince: zyklusnachricht 7 deutsch",
	"@Rince: zyklusnachricht 8 deutsch",
	"@Rince: zyklusnachricht 9 deutsch"}

	ListCycleMessageEnglish = {}
	ListCycleMessageEnglish = {
	"@Rince: zyklusnachricht 1 englisch",
	"@Rince: zyklusnachricht 2 englisch",
	"@Rince: zyklusnachricht 3 englisch",
	"@Rince: zyklusnachricht 4 englisch",
	"@Rince: zyklusnachricht 5 englisch",
	"@Rince: zyklusnachricht 6 englisch",
	"@Rince: zyklusnachricht 7 englisch",
	"@Rince: zyklusnachricht 8 englisch",
	"@Rince: zyklusnachricht 9 englisch"}
	-- cycle messages end

function addEffect(newbieEffect, Character)
end

function callEffect(newbieEffect,Character)
    
	if (Character.pos.z ~= 100) and (Character.pos.z ~= 101) then
	    return false --removing the effect
	end	
	
	if Character:getQuestProgress(309) < 1 and Character:isInRangeToPosition(position(38, 21, 100),15) then -- the char should walk to a specific postion (see: triggerfield/noobia_henry)
		base.common.InformNLS(Character,
		"�BERSETZEN.",
		"[Tutorial] To start the tutorial, please walk to the human at the end of the pier. Click and hold with the right mouse button on a spot close to the human. You can also walk using the num pad, the arrow keys or WASD.");
	end 
	
	if (Character:getQuestProgress(13) == 2) or (Character:getQuestProgress(13) == 3) then
		base.common.InformNLS(Character,
		"@Rince: text Schweine t�ten DE",
		"@Rince: text Schweine t�ten EN");
	end
	
	if (Character:getQuestProgress(12) == 2) then
		base.common.InformNLS(Character,
		"@Rince: text Kohle Erz DE",
		"@Rince: text Kohle Erz EN");
	end

	foundRoundCount, roundCount = newbieEffect:findValue("roundCount")
	if foundRoundCount then
		if (roundCount/2) == math.floor(roundCount/2) then -- every second call the cycle message is given out
			foundMessageCount, messageCount = newbieEffect:findValue("messageCount")
			if not foundMessageCount then
				messageCount = 1
			end	
			base.common.InformNLS(Character,
			""..ListCycleMessageGerman[messageCount],
			""..ListCycleMessageEnglish[messageCount]);   
			
			messageCount = messageCount + 1
			if messageCount > #ListCycleMessageGerman then 
				messageCount = 1
			end	
			
			newbieEffect:addValue("messageCount",messageCount)
		end
		
		roundCount = roundCount + 1
	else
	   roundCount = 1
	end
	
	newbieEffect:addValue("roundCount",roundCount) 
	newbieEffect.nextCalled=100
	
	return true
end

function removeEffect(newbieEffect, Character)
end