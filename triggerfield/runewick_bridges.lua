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
--Flames on the Runewick bridges

local common = require("base.common")

local M = {}

function M.MoveToField( User )
    local displacement, xpos,ypos
    --North Bridge
    for displacement = 1, 28, 3 do
        for xpos = 909, 911, 1 do
            for ypos = 760, 765, 1 do
                if User.pos == position(xpos+displacement,ypos,1) then
                    local flametype

                    if displacement%2 == 0 then
                        flametype = 359
                    else
                        flametype = 360
                    end

                    local testthing = 910+displacement
                    local pillar1 = world:getField(position(testthing, 760,1))
                    local flame1 = pillar1:getStackItem(pillar1:countItems()-1)
                    local pillar2 = world:getField(position(testthing, 764,1))
                    local flame2 = pillar2:getStackItem(pillar2:countItems()-1)
                    if flame1.id == 2805 then
                        local newflame = world:createItemFromId(flametype,1,position(testthing,760,1),true,333,nil)
                        newflame.wear = 1
                        world:changeItem(newflame)
                    end
                    if flame2.id == 2805 then
                        local newflame = world:createItemFromId(flametype,1,position(testthing,764,1),true,333,nil)
                        newflame.wear = 1
                        world:changeItem(newflame)
                    end
                end
            end
        end
    end

    --South Bridge
    for displacement = 0, 33, 3 do
        for xpos = 910, 912, 1 do
            for ypos = 830, 835, 1 do
                if User.pos == position(xpos+displacement,ypos,1) then
                    local flametype

                    if displacement%2 == 0 then
                        flametype = 359
                    else
                        flametype = 360
                    end

                    local testthing = 911+displacement
                    local pillar1 = world:getField(position(testthing, 830,1))
                    local flame1 = pillar1:getStackItem(pillar1:countItems()-1)
                    local pillar2 = world:getField(position(testthing, 834,1))
                    local flame2 = pillar2:getStackItem(pillar2:countItems()-1)
                    if flame1.id == 2805 then
                        local newflame = world:createItemFromId(flametype,1,position(testthing,830,1),true,333,nil)
                        newflame.wear = 1
                        world:changeItem(newflame)
                    end
                    if flame2.id == 2805 then
                        local newflame = world:createItemFromId(flametype,1,position(testthing,834,1),true,333,nil)
                        newflame.wear = 1
                        world:changeItem(newflame)
                    end
                end
            end
        end
    end

    --East Bridge
    for displacement = 0, 48, 3 do
        for xpos = 943, 948, 1 do
            for ypos = 770, 772, 1 do
                if User.pos == position(xpos,ypos+displacement,1) then
                    local flametype

                    if displacement%2 == 0 then
                        flametype = 359
                    else
                        flametype = 360
                    end
                    local testthing = 771+displacement
                    local pillar1 = world:getField(position(944, testthing,1))
                    local flame1 = pillar1:getStackItem(pillar1:countItems()-1)
                    local pillar2 = world:getField(position(948, testthing,1))
                    local flame2 = pillar2:getStackItem(pillar2:countItems()-1)
                    if flame1.id == 2805 then
                        local newflame = world:createItemFromId(flametype,1,position(944, testthing,1),true,333,nil)
                        newflame.wear = 1
                        world:changeItem(newflame)
                    end
                    if flame2.id == 2805 then
                        local newflame = world:createItemFromId(flametype,1,position(948, testthing,1),true,333,nil)
                        newflame.wear = 1
                        world:changeItem(newflame)
                    end
                end
            end
        end
    end
end

-- North Bridge Triggers
-- INSERT INTO triggerfields VALUES (909,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (909,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (909,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (909,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (909,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (909,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,765,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,760,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,761,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,762,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,763,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,764,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,765,1,'triggerfield.runewick_bridges');

-- East Bridge Triggers
-- INSERT INTO triggerfields VALUES (943,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,770,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,771,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,772,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,773,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,774,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,775,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,776,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,777,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,778,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,779,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,780,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,781,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,782,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,783,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,784,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,785,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,786,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,787,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,788,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,789,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,790,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,791,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,792,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,793,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,794,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,795,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,796,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,797,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,798,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,799,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,799,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,799,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,799,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,799,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,799,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (910,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (911,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (912,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (913,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (914,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (915,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (916,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (917,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (918,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (919,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (920,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (921,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (922,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (923,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (924,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (925,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (926,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (927,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (928,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (929,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (930,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (931,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (932,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (933,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (934,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (935,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (936,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (937,835,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,830,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,831,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,832,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,833,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,834,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (938,835,1,'triggerfield.runewick_bridges');

--South Bridge Triggers
-- INSERT INTO triggerfields VALUES (943,800,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,800,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,800,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,800,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,800,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,800,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,801,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,801,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,801,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,801,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,801,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,801,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,802,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,802,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,802,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,802,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,802,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,802,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,803,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,803,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,803,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,803,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,803,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,803,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,804,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,804,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,804,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,804,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,804,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,804,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,805,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,805,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,805,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,805,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,805,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,805,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,806,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,806,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,806,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,806,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,806,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,806,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,807,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,807,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,807,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,807,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,807,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,807,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,808,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,808,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,808,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,808,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,808,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,808,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,809,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,809,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,809,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,809,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,809,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,809,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,810,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,810,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,810,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,810,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,810,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,810,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,811,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,811,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,811,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,811,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,811,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,811,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,812,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,812,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,812,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,812,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,812,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,812,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,813,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,813,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,813,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,813,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,813,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,813,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,814,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,814,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,814,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,814,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,814,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,814,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,815,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,815,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,815,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,815,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,815,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,815,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,816,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,816,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,816,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,816,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,816,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,816,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,817,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,817,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,817,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,817,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,817,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,817,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (943,818,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (944,818,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (945,818,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (946,818,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (947,818,1,'triggerfield.runewick_bridges');
-- INSERT INTO triggerfields VALUES (948,818,1,'triggerfield.runewick_bridges');
return M

