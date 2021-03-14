local GlobalAddonName, ValorToolTips = ...

local ValorToolTipsVersion = 5
local EventFrame
local HaveShowedUpdateNotification = false
function ValorToolTips:OnLoad()
    EventFrame = CreateFrame("FRAME", nil)
    EventFrame:RegisterEvent("CHAT_MSG_ADDON")
    EventFrame:SetScript("OnEvent", ValorToolTips.OnEvent)
    C_ChatInfo.RegisterAddonMessagePrefix("AZPTT_VERSION")
    ValorToolTips:ShareVersion()

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

function ValorToolTips:ShareVersion()
    C_ChatInfo.SendAddonMessage("AZPTT_VERSION", ValorToolTipsVersion ,"PARTY", 1)
end

function ValorToolTips:ReceiveVersion( version )
    if version > ValorToolTipsVersion then
        if (not HaveShowedUpdateNotification) then
            HaveShowedUpdateNotification = true
            print("A new version of AzerPUG's Valor Tooltips is available.")
        end
    end
end

function ValorToolTips:OnEvent(event, ...)
    if event == "CHAT_MSG_ADDON" then
        local prefix, payload, _, sender = ...
        
        if prefix == "AZPTT_VERSION" then
            ValorToolTips:ReceiveVersion(tonumber(payload))
        end
    end
end



ValorToolTips:OnLoad()