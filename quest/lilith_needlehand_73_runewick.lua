--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>. 
]]
-- INSERT INTO "quests" ("qst_id", "qst_script") VALUES (73, 'quest.lilith_needlehand_73_runewick');
     
local common = require("base.common")
local factions = require("base.factions")
local M = {}
     
	 
	 
local GERMAN = Player.german
local ENGLISH = Player.english
     
-- Insert the quest title here, in both languages
local Title = {}
Title[GERMAN] = "Das faule Schneiderlein"
Title[ENGLISH] = "The Lazy Tailoress"
     
-- Insert an extensive description of each status here, in both languages
-- Make sure that the player knows exactly where to go and what to do
local Description = {}
Description[GERMAN] = {}
Description[ENGLISH] = {}
Description[GERMAN][1] = "Sammel zwanzig Wollballen und bringe sie zur�ck zu Lilith. Wenn du Schafe mit einer Schere scherst, bekommst du Wolle."
Description[ENGLISH][1] = "Collect twenty bundles of wool and bring them back to Lilith. You can shear a sheep with scissors to get wool."
Description[GERMAN][2] = "Kehre zur�ck zu Lilith Needlehand und frage, ob sie noch eine Aufgabe f�r dich hat."
Description[ENGLISH][2] = "Go back to Lilith Needlehand, she is sure to have another task for you." 
Description[GERMAN][3] = "Besorge f�nfzehn Spulen Garn und bringe sie zur�ck zu Lilith. Garn kannst du mit einer Schere am Spinnrad aus Wolle herstellen."
Description[ENGLISH][3] = "Produce fifteen bobbins of thread and bring them back to Lilith. You can produce thread from wool by using a spinning wheel whilst holding scissors." 
Description[GERMAN][4] = "Kehre zur�ck zu Lilith Needlehand und frage, ob sie noch eine Aufgabe f�r dich hat."
Description[ENGLISH][4] = "Go back to Lilith Needlehand, she is sure to have another task for you."  
Description[GERMAN][5] = "Besorge f�nf Bahnen roten Stoff und bringe sie zur�ck zu Lilith. Du kannst wei�en oder grauen Stoff mit einen Farbeimer und einen F�rbestab an einen Fass einf�rben."
Description[ENGLISH][5] = "Produce five bolts of red cloth and bring them back to Lilith. You can dye white or grey cloth with a dyeing rod and a bucket red dye, when you stand in front of a barrel." 
Description[GERMAN][6] = "Du hast alle Aufgaben von Lilith Needlehand erf�llt."
Description[ENGLISH][6] = "You have fulfilled all the tasks for Lilith Needlehand." 


-- Insert the position of the quest start here (probably the position of an NPC or item)
Start = {943, 817, 0}


    
-- For each status insert a list of positions where the quest will continue, i.e. a new status can be reached there
local QuestTarget = {}
QuestTarget[1] = {position(852, 792, 0), position(943, 817, 0)} -- Sheep
QuestTarget[2] = {position(940, 817, 0)} -- Lilith Needlehand 
QuestTarget[3] = {position(943, 817, 0), position(948, 816, 0)} -- spinning wheel
QuestTarget[4] = {position(940, 817, 0)} -- Lilith Needlehand 
QuestTarget[5] = {position(943, 817, 0), position(953, 813, 0)} -- barrel
QuestTarget[6] = {position(940, 817, 0)} -- Lilith Needlehand 
     
-- Insert the quest status which is reached at the end of the quest
local FINAL_QUEST_STATUS = 6
     
     
function M.QuestTitle(user)
    return common.GetNLS(user, Title[GERMAN], Title[ENGLISH])
end
     
function M.QuestDescription(user, status)
    local german = Description[GERMAN][status] or ""
    local english = Description[ENGLISH][status] or ""
     
    return common.GetNLS(user, german, english)
end

function M.QuestStart()
    return Start
end
     
function M.QuestTargets(user, status)
    return QuestTarget[status]
end
     
function M.QuestFinalStatus()
    return FINAL_QUEST_STATUS
end

function M.QuestAvailability(user, status)
    if factions.isRunewickCitizen(user) and status == 0 then
        return Player.questAvailable
    else
        return Player.questNotAvailable
    end
end

return M
