local GlobalAddonName, ValorToolTips = ...

local ValorToolTipsVersion = 5

function ValorToolTips:OnLoad()
    local clipAfter = string.find(ITEM_UPGRADE_TOOLTIP_FORMAT, "%%d") -1
    local searchValue = string.sub(ITEM_UPGRADE_TOOLTIP_FORMAT, 1, clipAfter)

    GameTooltip:HookScript("OnTooltipSetItem", function (...) 
        local ttname = GameTooltip:GetName()
        for i = 1, GameTooltip:NumLines() do
            local left = _G[ttname .. "TextLeft" .. i]
            local text = left:GetText()
            local cur, max = text:match(searchValue .. "(%d+)/(%d+)")
            if cur ~= nil then
                if cur ~= max then
                    local _, itemLink = GameTooltip:GetItem()
                    local itemEquipLocation = C_Item.GetItemInventoryTypeByID(itemLink)
                    local price = ValorToolTips.ValorData.ItemEquipLocation[itemEquipLocation]
                    local levelsToMax = max - cur
                    local priceToMax = levelsToMax * price
                    left:SetText(text .. string.format("  |cFF00FFFF%d/%d|r", price, priceToMax))
                end
            end
        end
    end)
end

ValorToolTips:OnLoad()