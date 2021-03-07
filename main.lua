local GlobalAddonName, AGU = ...

local initialConfig = AGU.initialConfig

local AZPGUToolTipsVersion = 3
local dash = " - "
local name = "GameUtility" .. dash .. "ToolTips"
local nameFull = ("AzerPUG " .. name)
local promo = (nameFull .. dash ..  AZPGUToolTipsVersion)

local addonMain = LibStub("AceAddon-3.0"):NewAddon("GameUtility-ToolTips", "AceConsole-3.0")


function AZP.GU.VersionControl:ToolTips()
    return AZPGUToolTipsVersion
end

function AZP.GU.OnLoad:ToolTips()
    print("Hoooi")

    -- local oldOnShow = GameTooltip:GetScript("OnShow")
    GameTooltip:HookScript("OnTooltipSetItem", function (...) 
        -- oldOnShow(...)

        local ttname = GameTooltip:GetName()
        for i = 1, GameTooltip:NumLines() do
            local left = _G[ttname .. "TextLeft" .. i]
            local text = left:GetText()
            local cur, max =  text:match("Upgrade Level: (%d+)/(%d+)")
            if cur ~= nil then
                -- cur = 5
                if cur ~= max then
                    local _, itemLink = GameTooltip:GetItem()
                    local itemEquipLocation = C_Item.GetItemInventoryTypeByID(itemLink)
                    local price = AGU.ValorData.ItemEquipLocation[itemEquipLocation]
                    local levelsToMax = max - cur
                    local priceToMax = levelsToMax * price
                    left:SetText(text .. string.format(" |cFF00FFFF%d/%d|r", price, priceToMax))
                end
            end
        end
    end)
    -- ModuleStats["Frames"]["ToolTips"]:SetSize(250, 200)
    -- GameTooltip:SetOwner(UIParent, "ANCHOR_NONE")
    -- GameTooltip:SetInventoryItem("player", 5)
    -- GameTooltip:Show()
    

end

function AZP.GU.OnEvent:ToolTips(self, event, ...)

end