if AZP == nil then AZP = {} end
if AZP.VersionControl == nil then AZP.VersionControl = {} end
if AZP.OnLoad == nil then AZP.OnLoad = {} end

AZP.VersionControl["ToolTips"] = 26
if AZP.ToolTips == nil then AZP.ToolTips = {} end

local EventFrame, UpdateFrame = nil, nil
local HaveShowedUpdateNotification = false
local AZPTTSelfOptionPanel = nil
local optionHeader = "|cFF00FFFFToolTips|r"

function AZP.ToolTips:OnLoadBoth()
    GameTooltip:HookScript("OnTooltipSetItem", function (...)
        AZP.ToolTips:SearchGenericUpgradeableItem()
        AZP.ToolTips:SearchShadowlandsLegendaryItem()
    end)
end

function AZP.ToolTips:OnLoadCore()
    AZP.Core:RegisterEvents("ADDON_LOADED", AZP.ToolTips.eventAddonLoaded)
    AZP.ToolTips:OnLoadBoth()

    AZP.OptionsPanels:RemovePanel("ToolTips")
    AZP.OptionsPanels:Generic("ToolTips", optionHeader, function (frame)
        AZP.ToolTips:FillOptionsPanel(frame)
    end)
end

function AZP.ToolTips:OnLoadSelf()
    C_ChatInfo.RegisterAddonMessagePrefix("AZPVERSIONS")

    EventFrame = CreateFrame("FRAME", nil)
    EventFrame:RegisterEvent("CHAT_MSG_ADDON")
    EventFrame:RegisterEvent("GROUP_ROSTER_UPDATE")
    EventFrame:RegisterEvent("ADDON_LOADED")
    EventFrame:SetScript("OnEvent", function(...) AZP.ToolTips:OnEvent(...) end)

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
    UpdateFrame.header:SetText("|cFFFF0000AzerPUG's ToolTips is out of date!|r")

    UpdateFrame.text = UpdateFrame:CreateFontString("UpdateFrame", "ARTWORK", "GameFontNormalLarge")
    UpdateFrame.text:SetPoint("TOP", 0, -40)
    UpdateFrame.text:SetText("Error!")

    UpdateFrame:Hide()

    local UpdateFrameCloseButton = CreateFrame("Button", nil, UpdateFrame, "UIPanelCloseButton")
    UpdateFrameCloseButton:SetWidth(25)
    UpdateFrameCloseButton:SetHeight(25)
    UpdateFrameCloseButton:SetPoint("TOPRIGHT", UpdateFrame, "TOPRIGHT", 2, 2)
    UpdateFrameCloseButton:SetScript("OnClick", function() UpdateFrame:Hide() end )

    AZPTTSelfOptionPanel = CreateFrame("FRAME", nil)
    AZPTTSelfOptionPanel.name = "|cFF00FFFFAzerPUG's ToolTips|r"
    InterfaceOptions_AddCategory(AZPTTSelfOptionPanel)
    AZPTTSelfOptionPanel.header = AZPTTSelfOptionPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalHuge")
    AZPTTSelfOptionPanel.header:SetPoint("TOP", 0, -10)
    AZPTTSelfOptionPanel.header:SetText("|cFF00FFFFAzerPUG's ToolTips Options!|r")

    AZPTTSelfOptionPanel.footer = AZPTTSelfOptionPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    AZPTTSelfOptionPanel.footer:SetPoint("TOP", 0, -300)
    AZPTTSelfOptionPanel.footer:SetText(
        "|cFF00FFFFAzerPUG Links:\n" ..
        "Website: www.azerpug.com\n" ..
        "Discord: www.azerpug.com/discord\n" ..
        "Twitch: www.twitch.tv/azerpug\n|r"
    )
    AZP.ToolTips:FillOptionsPanel(AZPTTSelfOptionPanel)
    AZP.ToolTips:OnLoadBoth()
end

function AZP.ToolTips:FillOptionsPanel(frameToFill)
    frameToFill.SeparatorEdit = CreateFrame("EditBox", nil, frameToFill, "InputBoxTemplate")
    frameToFill.SeparatorEdit:SetSize(100, 25)
    frameToFill.SeparatorEdit:SetPoint("TOPLEFT", 100, -100)
    frameToFill.SeparatorEdit:SetAutoFocus(false)
    frameToFill.SeparatorEdit:SetScript("OnShow", function ()
        frameToFill.SeparatorEdit:SetText(AZPTTSeparator)
    end)
    frameToFill.SeparatorText = frameToFill:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    frameToFill.SeparatorText:SetSize(100, 25)
    frameToFill.SeparatorText:SetPoint("TOPLEFT", 0, -100)
    frameToFill.SeparatorText:SetText("Separator: ")
    frameToFill.SeparatorEdit:SetScript("OnEditFocusLost", function() AZPTTSeparator = frameToFill.SeparatorEdit:GetText() end)
    frameToFill.SeparatorEdit:SetFrameStrata("DIALOG")
    frameToFill.SeparatorEdit:SetFontObject("ChatFontNormal")
    frameToFill.SeparatorEdit:SetMaxLetters(100)

    frameToFill:Hide()
end

function AZP.ToolTips:SearchShadowlandsLegendaryItem()
    local searchValue = ITEM_UNIQUE_EQUIPPABLE
    local ttname = GameTooltip:GetName()
    for i = 1, GameTooltip:NumLines() do
        local left = _G[ttname .. "TextLeft" .. i]
        local text = left:GetText()

        if text:find(searchValue, 1, true)  then
            local legendaryString = AZP.ToolTips:GetLegendaryString()
            if legendaryString then 
                GameTooltip:AddLine(legendaryString)
            end
        end
    end
end

function AZP.ToolTips:GetLegendaryString()
    local _, itemLink = GameTooltip:GetItem()
    local cost, cur, max, currency, nextUpgrade, priceToMax
    local NumBonusIDs, BonusID1, BonusID2, BonusID3, BonusID4, BonusID5, BonusID6 = select(13, strsplit(":", itemLink))
    local bonusIDList = {tonumber(BonusID1), tonumber(BonusID2), tonumber(BonusID3), tonumber(BonusID4), tonumber(BonusID5), tonumber(BonusID6)}
    if NumBonusIDs ~= nil and NumBonusIDs ~= "" then
        for j = 1, tonumber(NumBonusIDs) do
            local CurrentItem = AZP.ToolTips.LegendaryItemUpgrades[bonusIDList[j]]
            if CurrentItem ~= nil then
                cost, cur, max, currency, _ = unpack(CurrentItem)
                priceToMax = AZP.ToolTips:StackUpgradeCosts(AZP.ToolTips.LegendaryItemUpgrades, bonusIDList[j])
            end
        end
    end
    if cost == nil then 
        return nil
    else
        return string.format("|cFF00FFFFUpgrade: %d%s, total: %d%s|r", cost, currency.Icon, priceToMax, currency.Icon)
    end
end

function AZP.ToolTips:SearchGenericUpgradeableItem()
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
                    local CurrentItem = AZP.ToolTips.ItemUpgrades[bonusIDList[j]]
                    if CurrentItem ~= nil then
                        cost, cur, max, currency, _ = unpack(CurrentItem)
                        priceToMax = AZP.ToolTips:StackUpgradeCosts(AZP.ToolTips.ItemUpgrades, bonusIDList[j])
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

function AZP.ToolTips:StackUpgradeCosts(itemTable, startID)
    local totalCost = 0
    local currentBonusID = startID

    while currentBonusID ~= nil do
        local entry = itemTable[currentBonusID]
        if entry == nil then return nil end
        local cost, _, _, _, nextUpgrade = unpack(entry)
        currentBonusID = nextUpgrade

        if cost ~= nil then
            totalCost = totalCost + cost
        end
    end

    return totalCost
end

function AZP.ToolTips:DelayedExecution(delayTime, delayedFunction)
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

function AZP.ToolTips:ShareVersion()    -- Change DelayedExecution to native WoW Function.
    local versionString = string.format("|TT:%d|", AZP.VersionControl["ToolTips"])
    AZP.ToolTips:DelayedExecution(10, function() 
        if IsInGroup() then
            if IsInRaid() then
                C_ChatInfo.SendAddonMessage("AZPVERSIONS", versionString ,"RAID", 1)
            else
                C_ChatInfo.SendAddonMessage("AZPVERSIONS", versionString ,"PARTY", 1)
            end
        end
        if IsInGuild() then
            C_ChatInfo.SendAddonMessage("AZPVERSIONS", versionString ,"GUILD", 1)
        end
    end)
end

function AZP.ToolTips:ReceiveVersion(version)
    if version > AZP.VersionControl["ToolTips"] then
        if (not HaveShowedUpdateNotification) then
            HaveShowedUpdateNotification = true
            UpdateFrame:Show()
            UpdateFrame.text:SetText(
                "Please download the new version through the CurseForge app.\n" ..
                "Or use the CurseForge website to download it manually!\n\n" ..
                "Newer Version: v" .. version .. "\n" ..
                "Your version: v" .. AZP.VersionControl["ToolTips"]
            )
        end
    end
end

function AZP.ToolTips:GetSpecificAddonVersion(versionString, addonWanted)
    local pattern = "|([A-Z]+):([0-9]+)|"
    local index = 1
    while index < #versionString do
        local _, endPos = string.find(versionString, pattern, index)
        local addon, version = string.match(versionString, pattern, index)
        index = endPos + 1
        if addon == addonWanted then
            return tonumber(version)
        end
    end
end

function AZP.ToolTips:eventAddonLoaded(addonName)
    if addonName == "AzerPUGsToolTips" then
        if AZPTTSeparator == nil then
            AZPTTSeparator = "/"
        end
    end
end

function AZP.ToolTips:OnEvent(self, event, ...)
    if event == "CHAT_MSG_ADDON" then
        local prefix, payload, _, sender = ...
        if prefix == "AZPVERSIONS" then
            local version = AZP.ToolTips:GetSpecificAddonVersion(payload, "TT")
            if version ~= nil then
                AZP.ToolTips:ReceiveVersion(version)
            end
        end
    elseif event == "GROUP_ROSTER_UPDATE" then
        AZP.ToolTips:ShareVersion()
    elseif event == "ADDON_LOADED" then
        AZP.ToolTips.eventAddonLoaded(...)
    end
end

if not IsAddOnLoaded("AzerPUGsCore") then
    AZP.ToolTips:OnLoadSelf()
end