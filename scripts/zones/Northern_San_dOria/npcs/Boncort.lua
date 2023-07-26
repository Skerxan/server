-----------------------------------
-- Area: Northern San d'Oria
--  NPC: Boncort
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Northern_San_dOria/IDs")
require("scripts/quests/flyers_for_regine")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    quests.ffr.onTrade(player, npc, trade, 7) -- FLYERS FOR REGINE
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        4364, 124, 3,    -- Black Bread
        4356, 208, 2,    -- White Bread
        4376, 124, 3,    -- Meat Jerky
        4380, 228, 2,    -- Smoked Salmon
        4509,  12, 3,    -- Distilled Water
        4441, 967, 1,    -- Grape Juice
        4423, 312, 2,    -- Apple Juice
        5007, 189, 3,    -- Scroll of Sword Madrigal
    }

    player:showText(npc, ID.text.BONCORT_SHOP_DIALOG)
    xi.shop.nation(player, stock, xi.nation.SANDORIA)
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
