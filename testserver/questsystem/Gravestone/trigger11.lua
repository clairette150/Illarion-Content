require("handler.createeffect")
require("questsystem.base")
module("questsystem.Gravestone.trigger11", package.seeall)

local QUEST_NUMBER = 10000
local PRECONDITION_QUESTSTATE = 58
local POSTCONDITION_QUESTSTATE = 99

local POSITION = position(605, 344, 0)
local RADIUS = 1
local LOOKAT_TEXT_DE = "Die Namen der Liebenden leuchten f�r einen kurzen Moment auf."
local LOOKAT_TEXT_EN = "The names of the lovers brighten up for a brief moment."

function LookAtItem(PLAYER, item)
  if PLAYER:isInRangeToPosition(POSITION,RADIUS)
      and ADDITIONALCONDITIONS(PLAYER)
      and questsystem.base.fulfilsPrecondition(PLAYER, QUEST_NUMBER, PRECONDITION_QUESTSTATE) then

	base.lookat.SetSpecialName(item, LOOKAT_TEXT_DE, LOOKAT_TEXT_EN)
	world:itemInform(PLAYER,item,base.lookat.GenerateLookAt(PLAYER, item, base.lookat.NONE));
    
    HANDLER(PLAYER)
    
    questsystem.base.setPostcondition(PLAYER, QUEST_NUMBER, POSTCONDITION_QUESTSTATE)
    return true
  end

  return false
end

function HANDLER(PLAYER)
    handler.createeffect.createEffect(position(605, 344, 0), 53):execute()
end

function ADDITIONALCONDITIONS(PLAYER)
return true
end