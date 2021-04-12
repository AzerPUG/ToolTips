local GlobalAddonName, AZPToolTips = ...

local ToolTipsVersion = 25
local EventFrame, UpdateFrame = nil, nil
local HaveShowedUpdateNotification = false
local ItemUpgrades = AZPToolTips.ItemUpgrades
local OptionsCorePanel

function AZPToolTips:OnLoad()
    EventFrame = CreateFrame("FRAME", nil)
    EventFrame:RegisterEvent("CHAT_MSG_ADDON")
    EventFrame:RegisterEvent("GROUP_ROSTER_UPDATE")
    EventFrame:RegisterEvent("ADDON_LOADED")
    EventFrame:SetScript("OnEvent", AZPToolTips.OnEvent)
    C_ChatInfo.RegisterAddonMessagePrefix("AZPTT_VERSION")

    UpdateFrame = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
    UpdateFrame:SetPoint("CENTER", 0, 250)
    UpdateFrame:SetSize(400, 200)
    UpdateFrame:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        edgeSize = 12,
        insets = { left = 1, right = 1, top = 1, bottom = 1 },
    })
    UpdateFrame:SetBackdropColor(0.25, 0.25, 0.25, 0.80)
    UpdateFrame.header = UpdateFrame:CreateFontString("UpdateFrame", "ARTWORK", "GameFontNormalHuge")
    UpdateFrame.header:SetPoint("TOP", 0, -10)
    UpdateFrame.header:SetText("|cFFFF0000AzerPUG ToolTips is out of date!|r")

    UpdateFrame.text = UpdateFrame:CreateFontString("UpdateFrame", "ARTWORK", "GameFontNormalLarge")
    UpdateFrame.text:SetPoint("TOP", 0, -40)
    UpdateFrame.text:SetText("Error!")

    UpdateFrame.discord = CreateFrame("EditBox", nil, UpdateFrame, "InputBoxTemplate")
    UpdateFrame.discord:SetSize(175, 35)
    UpdateFrame.discord:SetPoint("TOP", 0, -155)
    UpdateFrame.discord:SetAutoFocus(false)
    UpdateFrame.discord:SetFrameStrata("DIALOG")
    UpdateFrame.discord:SetMaxLetters(100)
    UpdateFrame.discord:SetFontObject("ChatFontNormal")
    UpdateFrame.discord:SetText("http://www.azerpug.com/discord")

    UpdateFrame:Hide()

    local UpdateFrameCloseButton = CreateFrame("Button", nil, UpdateFrame, "UIPanelCloseButton")
    UpdateFrameCloseButton:SetWidth(25)
    UpdateFrameCloseButton:SetHeight(25)
    UpdateFrameCloseButton:SetPoint("TOPRIGHT", UpdateFrame, "TOPRIGHT", 2, 2)
    UpdateFrameCloseButton:SetScript("OnClick", function() UpdateFrame:Hide() end )

    OptionsCorePanel = CreateFrame("FRAME", nil)
    OptionsCorePanel.name = "|cFF00FFFFAzerPUG's ToolTips|r"
    InterfaceOptions_AddCategory(OptionsCorePanel)

    OptionsCorePanel.header = OptionsCorePanel:CreateFontString("OptionsCorePanel", "ARTWORK", "GameFontNormalHuge")
    OptionsCorePanel.header:SetPoint("TOP", 0, -10)
    OptionsCorePanel.header:SetText("|cFF00FFFFAzerPUG ToolTips Options!|r")

    OptionsCorePanel.footer = OptionsCorePanel:CreateFontString("OptionsCorePanel", "ARTWORK", "GameFontNormalLarge")
    OptionsCorePanel.footer:SetPoint("TOP", 0, -300)
    OptionsCorePanel.footer:SetText(
        "|cFF00FFFFAzerPUG Links:\n" ..
        "Website: www.azerpug.com\n" ..
        "Discord: www.azerpug.com/discord\n" ..
        "Twitch: www.twitch.tv/azerpug\n|r"
    )

    OptionsCorePanel.SeparatorEdit = CreateFrame("EditBox", nil, OptionsCorePanel, "InputBoxTemplate")
    OptionsCorePanel.SeparatorEdit:SetSize(100, 25)
    OptionsCorePanel.SeparatorEdit:SetPoint("TOPLEFT", 100, -100)
    OptionsCorePanel.SeparatorEdit:SetAutoFocus(false)
    OptionsCorePanel.SeparatorText = OptionsCorePanel:CreateFontString("OptionsCorePanel", "ARTWORK", "GameFontNormalLarge")
    OptionsCorePanel.SeparatorText:SetSize(100, 25)
    OptionsCorePanel.SeparatorText:SetPoint("TOPLEFT", 0, -100)
    OptionsCorePanel.SeparatorText:SetText("Separator: ")
    OptionsCorePanel.SeparatorEdit:SetScript("OnEditFocusLost", function() AZPTTSeparator = OptionsCorePanel.SeparatorEdit:GetText() end)
    OptionsCorePanel.SeparatorEdit:SetFrameStrata("DIALOG")
    OptionsCorePanel.SeparatorEdit:SetFontObject("ChatFontNormal")
    OptionsCorePanel.SeparatorEdit:SetMaxLetters(100)

    OptionsCorePanel:Hide()

    AZPToolTips:ShareVersion()

    GameTooltip:HookScript("OnTooltipSetItem", function (...)
        AZPToolTips:SearchGenericUpgradeableItem()
        AZPToolTips:SearchShadowlandsLegendaryItem()
    end)
end

function AZPToolTips:SearchShadowlandsLegendaryItem()
    local searchValue = ITEM_UNIQUE_EQUIPPABLE
    local ttname = GameTooltip:GetName()
    local numLines = GameTooltip:NumLines()
    for i = 1, numLines do
        local left = _G[ttname .. "TextLeft" .. i]
        local text = left:GetText()

        if text:find(searchValue, 1, true)  then
            local legendaryString = AZPToolTips:GetLegendaryString()
            if legendaryString then 
                GameTooltip:AddLine(legendaryString)
                GameTooltip:AddLine(" ")
                _G[ttname .. "TextLeft" .. (numLines + 1)]:SetPoint("TOP", left, "BOTTOM", 0, -2)
                _G[ttname .. "TextLeft" .. (numLines + 2)]:SetPoint("TOP", _G[ttname .. "TextLeft" .. numLines], "BOTTOM", 0, -2)
                _G[ttname .. "TextLeft" .. (i + 1)]:SetPoint("TOP", _G[ttname .. "TextLeft" .. (numLines + 1)], "BOTTOM", 0, -2)
            end
        end
    end
end

function AZPToolTips:GetLegendaryString()
    local _, itemLink = GameTooltip:GetItem()
    local cost, cur, max, currency, nextUpgrade, priceToMax
    local NumBonusIDs, BonusID1, BonusID2, BonusID3, BonusID4, BonusID5, BonusID6 = select(13, strsplit(":", itemLink))
    local bonusIDList = {tonumber(BonusID1), tonumber(BonusID2), tonumber(BonusID3), tonumber(BonusID4), tonumber(BonusID5), tonumber(BonusID6)}
    if NumBonusIDs ~= nil and NumBonusIDs ~= "" then
        for j = 1, tonumber(NumBonusIDs) do
            local CurrentItem = AZPToolTips.LegendaryItemUpgrades[bonusIDList[j]]
            if CurrentItem ~= nil then
                cost, cur, max, currency, _ = unpack(CurrentItem)
                priceToMax = AZPToolTips:StackUpgradeCosts(AZPToolTips.LegendaryItemUpgrades, bonusIDList[j])
            end
        end
    end
    if cost == nil then 
        return nil
    else
        return string.format("|cFF00FFFFUpgrade: %d, total: %d|r", cost, priceToMax)
    end
end
function AZPToolTips:SearchGenericUpgradeableItem()
    local clipAfter = string.find(ITEM_UPGRADE_TOOLTIP_FORMAT, "%%d") -1
    local searchValue = string.sub(ITEM_UPGRADE_TOOLTIP_FORMAT, 1, clipAfter)
    local ttname = GameTooltip:GetName()
    for i = 1, GameTooltip:NumLines() do
        local left = _G[ttname .. "TextLeft" .. i]
        local text = left:GetText()
        if text:find(searchValue) then
            local cost, cur, max, currency, nextUpgrade, priceToMax
            local _, itemLink = GameTooltip:GetItem()
            local itemString = itemLink:gsub("|", "-")

            local v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, NumBonusIDs, BonusID1, BonusID2, BonusID3, BonusID4, BonusID5, BonusID6 = strsplit(":", itemString)
            local bonusIDList = {tonumber(BonusID1), tonumber(BonusID2), tonumber(BonusID3), tonumber(BonusID4), tonumber(BonusID5), tonumber(BonusID6)}
            if NumBonusIDs ~= nil and NumBonusIDs ~= "" then
                for j = 1, tonumber(NumBonusIDs) do
                    local CurrentItem = ItemUpgrades[bonusIDList[j]]
                    if CurrentItem ~= nil then
                        cost, cur, max, currency, _ = unpack(CurrentItem)
                        priceToMax = AZPToolTips:StackUpgradeCosts(AZPToolTips.ItemUpgrades, bonusIDList[j])
                    end
                end
            end

            local displayIcon = ""
            if currency ~= nil then
                displayIcon = currency.Icon
            end

            local separator = AZPTTSeparator
            if cost ~= nil then
                left:SetText(text .. "  |cFF00FFFF(" .. cost .. displayIcon .. " " .. separator .. " " .. priceToMax .. displayIcon .. ")|r")
            elseif max == nil then
                left:SetText(text .. "  |cFF00FFFF(Coming Soon™!)|r")
            end
        end
    end
end

function AZPToolTips:StackUpgradeCosts(itemTable, startID)
    local totalCost = 0
    local currentBonusID = startID

    while currentBonusID ~= nil do
        local entry = itemTable[currentBonusID]
        if entry == nil then return nil end
        local cost, _cur, _max, _currency, nextUpgrade = unpack(entry)
        currentBonusID = nextUpgrade
        
        if cost ~= nil then
            totalCost = totalCost + cost
        end
    end

    return totalCost
end


function DelayedExecution(delayTime, delayedFunction)
    local frame = CreateFrame("Frame")
    frame.start_time = GetServerTime()
    frame:SetScript("OnUpdate",
        function(self)
            if GetServerTime() - self.start_time > delayTime then
                delayedFunction()
                self:SetScript("OnUpdate", nil)
                self:Hide()
            end
        end
    )
    frame:Show()
end

function AZPToolTips:ShareVersion()
    DelayedExecution(10, function() 
        if IsInRaid() then
            C_ChatInfo.SendAddonMessage("AZPTT_VERSION", ToolTipsVersion ,"RAID", 1)
        end
        if IsInGroup() then
            C_ChatInfo.SendAddonMessage("AZPTT_VERSION", ToolTipsVersion ,"PARTY", 1)
        end
        if IsInGuild() then
            C_ChatInfo.SendAddonMessage("AZPTT_VERSION", ToolTipsVersion ,"GUILD", 1)
        end
    end)
end

function AZPToolTips:ReceiveVersion(version)
    if version > ToolTipsVersion then
        if (not HaveShowedUpdateNotification) then
            HaveShowedUpdateNotification = true
            UpdateFrame:Show()
            UpdateFrame.text:SetText(
                "Please download the new version through the CurseForge app.\n" ..
                "Or use the CurseForge website to download it manually!\n\n" .. 
                "Newer Version: v" .. version .. "\n" .. 
                "Your version: v" .. ToolTipsVersion .. "\n\n\n" ..
                "Discord:"
            )
        end
    end
end

function AZPToolTips:OnEvent(event, ...)
    if event == "CHAT_MSG_ADDON" then
        local prefix, payload, _, sender = ...
        if prefix == "AZPTT_VERSION" then
            AZPToolTips:ReceiveVersion(tonumber(payload))
        end
    elseif event == "GROUP_ROSTER_UPDATE" then
        AZPToolTips:ShareVersion()
    elseif event == "ADDON_LOADED" then
        local addonName = ...
        if addonName == "AzerPUG's ToolTips" then
            if AZPTTSeparator == nil then
                AZPTTSeparator = "/"
            end
            OptionsCorePanel:SetScript("OnShow", function()
                OptionsCorePanel.SeparatorEdit:SetText(AZPTTSeparator)
            end)
        end
    end
end

AZPToolTips:OnLoad()
