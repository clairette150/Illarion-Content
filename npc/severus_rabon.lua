--------------------------------------------------------------------------------
-- NPC Name: Severus Rabon                                            Cadomyr --
-- NPC Job:  Waiter                                                           --
--                                                                            --
-- NPC Race: human                      NPC Position:  113, 574, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Authors:  Regallo                                                          --
--           Estralis Seborian                                                --
--                                                                            --
-- Last parsing: September 03, 2012                       easyNPC Parser v1.2 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (0, 113, 574, 0, 4, 'Severus Rabon', 'npc.severus_rabon', 0, 1, 1, 205, 102, 29, 139, 90, 43);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.language")
require("npc.base.consequence.inform")
require("npc.base.consequence.trade")
require("npc.base.talk")
require("npc.base.trade")
module("npc.severus_rabon", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
local tradingNPC = npc.base.trade.tradeNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Severus Rabon the Waiter. Keywords: Good day, tavern, Linda, trade."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Severus Rabon der Ober. Schl�sselw�rter: Guten Tag, Taverne, Linda, Handel."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addTrigger("Good night");
talkEntry:addResponse("Please talk to my daughter. She will seat you and then I will take your order.");
talkEntry:addResponse("If you're a regular please seat yourself. My tavern is your home.");
talkEntry:addResponse("If I may be of service I would recommend the stew. It's our signature dish.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Guten Morgen");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Gute Nacht");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addResponse("Redet doch bitte mit meiner Tochter. Sie wird euch einen Platz zeigen und ich nehme dann eure Bestellung entgegen.");
talkEntry:addResponse("Als Stammgast d�rft ihr euch nat�rlich einen Platz aussuchen. F�hlt euch wie zuhause.");
talkEntry:addResponse("Wenn ich euch etwas empfehlen d�rfte, der Eintopf ist heute vorz�glich. Er ist das Stammessen hier.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Please talk to my daughter. She will seat you and then I will take your order.");
talkEntry:addResponse("If you're a regular please seat yourself. My business is your home.");
talkEntry:addResponse("If I may be of service I would recommend the stew. It's our signature dish.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Redet doch bitte mit meiner Tochter. Sie wird euch einen Platz zeigen und ich nehme dann eure Bestellung entgegen.");
talkEntry:addResponse("Als Stammgast d�rft ihr euch nat�rlich einen Platz aussuchen. F�hlt euch wie zuhause.");
talkEntry:addResponse("Wenn ich euch etwas empfehlen d�rfte, der Eintopf ist heute vorz�glich. Er ist das Stammessen hier.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Thank you, please come again.");
talkEntry:addResponse("I would be most grateful if you would bless this institution with your presence once more.");
talkEntry:addResponse("I hope you enjoyed your meal. Remember you can come back any time. The food is good here and the prices are so low the homeless can afford to it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Danke, kommt doch gerne wieder.");
talkEntry:addResponse("Ich w�re euch zu Dank verpflichtet, wenn ihr dieser Einrichtung erneut mit eurer Anwesenheit erfreuen w�rdet.");
talkEntry:addResponse("Ich hoffe, es hat geschmeckt. Denkt daran, ihr seid hier immer willkommen. Das Essen ist lecker und die Preise k�nnen sich selbst Obdachlose leisten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Thank you please come again.");
talkEntry:addResponse("I would be most grateful if you would bless this institution with your presence once more.");
talkEntry:addResponse("I hope you enjoyed your meal. Remember you can come back any time. The food is good here and the prices are so low the homeless can afford to it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Danke, kommt doch gerne wieder.");
talkEntry:addResponse("Ich w�re euch zu Dank verpflichtet, wenn ihr dieser Einrichtung erneut mit eurer Anwesenheit erfreuen w�rdet.");
talkEntry:addResponse("Ich hoffe, es hat geschmeckt. Denkt daran, ihr seid hier immer willkommen. Das Essen ist lecker und die Preise k�nnen sich selbst Obdachlose leisten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addResponse("I wish Linda would take a break more often. She looks so tired.");
talkEntry:addResponse("I feel Linda is working too hard. Maybe I should hire an extra hostess.");
talkEntry:addResponse("May I take your order?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Ich w�nschte, Linda w�rde �fter mal eine Pause machen. Sie sieht so m�de aus.");
talkEntry:addResponse("Linda arbeitet eindach zu hart. Ich sollte noch eine Kellnerin einstellen.");
talkEntry:addResponse("Ihre Bestellung, bitte?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Severus Rabon, father and tavern owner extrodinaire.");
talkEntry:addResponse("I am Severus Rabon, father of the Cadomyr's most famous cook Linda Rabon.");
talkEntry:addResponse("I am Severus. This is my tavern the Unicorn Lion. Me and my wife built this place from scratch along with our first home. Please have a seat, a meal and become part of the family.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Severus Rabon, Vater und Tavernenbesitzer.");
talkEntry:addResponse("Ich bin Severus Rabon, Vater von Cadomyrs ber�hmtester K�chin, Linda Rabon.");
talkEntry:addResponse("Ich bin Severus. Dies hier ist meine Tavern, der Einh�rnige L�we. Ich und meine Frau haben sie aus dem Nichts aufgebaut, sie ist unsere Heimat. Setzt euch, esst was und werdet Teil der Familie.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("sell");
talkEntry:addTrigger("buy");
talkEntry:addTrigger("wares");
talkEntry:addTrigger("price");
talkEntry:addTrigger("trade");
talkEntry:addTrigger("purchase");
talkEntry:addResponse("Your order, please?");
talkEntry:addResponse("What can I serve you today?");
talkEntry:addResponse("Yes?");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("kauf");
talkEntry:addTrigger("waren");
talkEntry:addTrigger("preis");
talkEntry:addTrigger("Handel");
talkEntry:addTrigger("ver�u�er");
talkEntry:addTrigger("erwerb");
talkEntry:addResponse("Ihre Bestellung, bitte.");
talkEntry:addResponse("Was kann ich ihnen bringen?");
talkEntry:addResponse("Jawohl?");
talkEntry:addConsequence(npc.base.consequence.trade.trade(tradingNPC));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I own this place here. So what would I call myself? Bartender, waiter? I don't know, just call me Severus.");
talkEntry:addResponse("Right now I am the waiter and I used to be the cook, but my beautiful and talented daughter has been given a gift from the gods. She is now the cook.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Mir geh�rt diese Taverne. Was bin ich also - ein Barmann, ein Ober? Eigentlich auch egal, nennt mich Severus.");
talkEntry:addResponse("Ich bin hier der Ober, ich war auch mal der Koch, aber meine sch�ne und talentierte Tochter ist von den G�ttern gesegnet. Sie ist nun die K�chin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I own this place here. So what would I call myself. Bartender, waiter? I don't know, just call me Severus.");
talkEntry:addResponse("Right now I am the waiter and I used to be the cook, but my beautiful and talented daughter has been given a gift from the gods. She is now the cook.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Mir geh�rt diese Taverne. Was bin ich also - ein Barmann, ein Ober? Eigentlich auch egal, nennt mich Severus.");
talkEntry:addResponse("Ich bin hier der Ober, ich war auch mal der Koch, aber meine sch�ne und talentierte Tochter ist von den G�ttern gesegnet. Sie ist nun die K�chin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Lion");
talkEntry:addTrigger("Unicorn");
talkEntry:addResponse("It started out as a stand. I only sold stew back then. After I got married I opened up this place. Now it is run by me and my beautiful daughter alone...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("L�we");
talkEntry:addTrigger("Einhorn");
talkEntry:addTrigger("Einh�rnig");
talkEntry:addResponse("All dies hat mal als kleiner Markstand angefangen, damals gab es nur Eintopf. Nach meiner Hochzeit habe ich diese Taverne er�ffnet. Nun f�hren sie nur noch meine sch�ne Tochter und ich...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Daughter");
talkEntry:addResponse("Linda is all that remains for me. After my wife passed away, I realised that Rose continues to life through Linda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tochter");
talkEntry:addResponse("Linda ist alles, was mir geblieben ist. Nachdem meine Frau gestorben war, habe ich realisiert, dass sie durch Linda weiterlebt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Linda");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Linda is all that remains for me. After my wife passed away, I realised that Rose continues to life through Linda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Linda");
talkEntry:addResponse("Linda ist alles, was mir geblieben ist. Nachdem meine Frau gestorben war, habe ich realisiert, dass sie durch Linda weiterlebt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("wife");
talkEntry:addResponse("She went from wife, to lover to part of my soul. My wife Rose is no more, but I have my daughter Linda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Frau");
talkEntry:addResponse("Aus einer Ehefrau wurde eine Geliebte und aus ihr ein Teil meiner Seele. Meine Frau Rose ist nicht mehr, aber ich habe ja meine Tochter Linda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rose");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("She went from wife, to lover to part of my soul. My wife Rose is no more, but I have my daughter Linda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Rose");
talkEntry:addResponse("Aus einer Ehefrau wurde eine Geliebte und aus ihr ein Teil meiner Seele. Meine Frau Rose ist nicht mehr, aber ich habe ja meine Tochter Linda.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hassan");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("This fellow brings life to this place. He's so quiet himself though. Maybe he will open up someday.");
talkEntry:addResponse("Hassan is too nice. Too nice to be a fan waiver. He's big though, and each of us have our place.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hassan");
talkEntry:addResponse("Der Kerl bring Leben in die Bude. Er ist zwar etwas schweigsam, aber vielleicht �ffnet er sich ja doch noch.");
talkEntry:addResponse("Hassan ist wirklich nett. Eigentlich viel zu nett, um ein F�chelwedler zu sein. Er ist recht gro� und wir alle haben unsere Bestimmung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("I await the day when the queen graces our tavern with a visit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Ich kann es kaum erwarten, dass die K�nigin meiner Taverne ihre Anwesenheit schenkt und ihr einen Besuch abstattet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("I await the day when the queen graces our tavern with a visit.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Ich kann es kaum erwarten, dass die K�nigin meiner Taverne ihre Anwesenheit schenkt und ihr einen Besuch abstattet.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Haha. I guess since I'm a business man now, I should look at things like maps. Someday.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Haha, nun, da ich ein Gesch�ftsmann bin, sollte ich wohl mal auf sowas wie Landkarten gucken. Oder auch nicht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gods");
talkEntry:addResponse("Irmorom. I respect Irmorom, only.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("G�tter");
talkEntry:addTrigger("Gott");
talkEntry:addResponse("Irmorom. Ich ehre nur Irmorom.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("He's the only one that ever cared about me. I give him ten percent of my all the money I make.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Irmorom");
talkEntry:addResponse("Er ist der einzige, der sich um mich scherte. Daher gebe ich ihm zehn Prozent aller Einnahmen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("secret");
talkEntry:addResponse("I'm too bland of a person to have any.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Geheimnis");
talkEntry:addResponse("Ich bin nur ein einfacher Mann und habe keine Geheimnisse.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Severus");
talkEntry:addTrigger("Rabon");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addResponse("Oh, do you need something?");
talkEntry:addResponse("That is me.");
talkEntry:addResponse("Hello. I am Severus Rabon. I would be glad to help you with anything that you need.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Severus");
talkEntry:addTrigger("Rabon");
talkEntry:addResponse("Oh, braucht ihr etwas?");
talkEntry:addResponse("Das bin ich.");
talkEntry:addResponse("Hallo. Ich bin Severus Rabon. Ich bin euch gerne behilflich, wenn ihr etwas ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("I did not say anything.");
talkEntry:addResponse("I don't believe I asked a yes or no question.");
talkEntry:addResponse("Wait, what?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Hab ich was gesagt?");
talkEntry:addResponse("Ich glaube nicht, dass ich recht verstehe, um was es geht.");
talkEntry:addResponse("Wie bitte?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("I did not say anything.");
talkEntry:addResponse("I don't believe I asked a yes or no question.");
talkEntry:addResponse("Wait, what?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Hab ich was gesagt?");
talkEntry:addResponse("Ich glaube nicht, dass ich recht verstehe, um was es geht.");
talkEntry:addResponse("Wie bitte?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addResponse("This discussion is not relevant to me.");
talkEntry:addResponse("Maybe talk about something like adventures or missions. People respond well to those words.");
talkEntry:addResponse("I have no intention of buying your chicken.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger(".*");
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addResponse("Irgendwie interessiert mich das nicht.");
talkEntry:addResponse("Redet doch �ber Aufgaben oder Abenteuer. Die Leute reden gerne �ber sowas.");
talkEntry:addResponse("Ich kaufe keine H�hner.");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Eintopf ist genau das richtige nach einem Ritt durch die W�ste. Er macht satt und bet�ubt erfreut auch den Gaumen.", "Stew is the perfect way to fill a stomach emptied from a trek across the desert. It is both fulfilling and tantalizing to the tongue.");
talkingNPC:addCycleText("Was darf es denn heute sein? Ich empfehle etwas kaltes zu trinken und etwas warmes zu essen.", "What will you be having today? I suggest a cool drink followed by a hot meal.");
talkingNPC:addCycleText("Balance ist alles im Leben! Insbesondere, wenn es um das Servieren geht.", "Balance is the key to dining as it is in any other aspect of life.");
talkingNPC:addCycleText("Das sieht hier ja wieder aus... Hoffentlich zwingt mich Linda nicht zum Wischen.", "This place is a mess. I hope Linda doesn't make me mop.");
talkingNPC:addCycleText("Ich sollte mal nach Linda sehen. Ich hoffe, sie ist nicht allzu m�de.", "I should check up on Linda. I hope she's not too tired.");
talkingNPC:addCycleText("Vielleicht sollte ich einen Gaukler anheuern. Ich denke, dass die Kundschaft auch einen Geschichtenerz�hler guthei�en w�rde.", "Maybe I should hire a gleeman. I bet the customers would enjoy a story teller as well.");
talkingNPC:addCycleText("Wahre M�nner fassen es in Worte, wie viel ihnen eine Frau bedeutet. Wahre M�nner lieben!", "Real men tell the women in their lives how much they mean to them. Real men love.");
talkingNPC:addCycleText("Das schwerste am Arbeiten ist die Arbeit.", "The hardest part of work is working.");
talkingNPC:addCycleText("Schaut doch gerne mal wieder rein. Es gibt f�r uns nichts besseres als euch ein zweites mal zu bedienen.", "Please come again. We would like nothing better than to serve you another meal.");
talkingNPC:addCycleText("Entschuldigt, dass es so warm hier drinnen ist. Meine Tochter w�rde es nicht gut finden, wenn ich eine Horde F�chelwedlerinnen einstellen w�rde. Sie meint, ich k�nnte doch Kerle einstellen, aber das w�re mir wieder nicht recht.", "I'm sorry it's so hot in here. My daughter won't let me hire a bunch of girls to fan everyone. She said I could hire guys, but I would never allow that.");
talkingNPC:addCycleText("Linda! Ist alles in Ordnung?", "Linda! Is everything alright over there?");
talkingNPC:addCycleText("#me seufzt: 'Rose, oh Rose...'", "#me sighs: 'Rose, O Rose...'");
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1908,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1909,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2055,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2056,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2057,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2058,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2059,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(518,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(517,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2923,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2935,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(454,"sell"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1908,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(1909,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2055,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2056,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2057,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2058,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2059,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(518,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(517,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2923,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(2935,"buySecondary"));
tradingNPC:addItem(npc.base.trade.tradeNPCItem(454,"buySecondary"));
mainNPC:addLanguage(0);
mainNPC:addLanguage(1);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Severus Rabon der Ober.", "This NPC is Severus Rabon the Waiter.");
mainNPC:setUseMessage("Fass mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut dich verwirrt an.", "#me looks at you confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 808);
mainNPC:setEquipment(11, 0);
mainNPC:setEquipment(5, 0);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 0);
mainNPC:setEquipment(9, 367);
mainNPC:setEquipment(10, 369);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(npcChar, texttype, message, speaker) mainNPC:receiveText(npcChar, speaker, message); end;
function nextCycle(npcChar) mainNPC:nextCycle(npcChar); end;
function lookAtNpc(npcChar, char, mode) mainNPC:lookAt(npcChar, char, mode); end;
function useNPC(npcChar, char, counter, param) mainNPC:use(npcChar, char); end;
initNpc();
initNpc = nil;
-- END