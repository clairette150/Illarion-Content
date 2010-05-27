-- I_335 Laute spielen

-- UPDATE common SET com_script='items.335_lute' WHERE com_itemid=335;

require("items.base.music")
require("items.general.wood")

module("items.335_lute", package.seeall(), package.seeall(items.general.wood))

items.base.music.addTalkText("#me makes a terrible noise on the lute","#me macht ein furchtbares Ger�usch mit der Laute");
items.base.music.addTalkText("#me plays some halting tunes","#me spielt einige unsichere T�ne auf der Laute");
items.base.music.addTalkText("#me plays some nice tunes on the lute","#me spielt einige sch�ne T�ne auf der Laute");
items.base.music.addTalkText("#me plays some nice sounding tunes on a lute","#me spielt einige gute klingende T�ne auf der Laute");
items.base.music.addTalkText("#me plays a lilting melody on a lute","#me spielt eine tr�llernde Melodie auf der Laute");

function UseItem(User,SourceItem,TargetItem,Counter,Param)
    items.base.music.PlayInstrument(User,SourceItem,"lute");
end