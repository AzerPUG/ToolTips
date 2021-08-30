if AZP == nil then AZP = {} end
if AZP.VersionControl == nil then AZP.VersionControl = {} end
if AZP.OnLoad == nil then AZP.OnLoad = {} end

AZP.VersionControl["ToolTips"] = 42
if AZP.ToolTips == nil then AZP.ToolTips = {} end
if AZP.ToolTips.Events == nil then AZP.ToolTips.Events = {} end

local EventFrame, UpdateFrame = nil, nil
local HaveShowedUpdateNotification = false
local AZPTTSelfOptionPanel = nil

function AZP.ToolTips:OnLoadBoth()
    GameTooltip:HookScript("OnTooltipSetItem", function(...)
        AZP.ToolTips:SearchGenericUpgradeableItem()
        AZP.ToolTips:CheckShadowlandsLegendaryItem()
        AZP.ToolTips:CheckDominationShardItem()
    end)
end

function AZP.ToolTips:OnLoadCore()
    AZP.Core:RegisterEvents("ADDON_LOADED", function(...) AZP.ToolTips.Events:AddonLoaded(...) end)
    AZP.ToolTips:OnLoadBoth()

    AZP.OptionsPanels:RemovePanel("ToolTips")
    AZP.OptionsPanels:Generic("ToolTips", "|cFF00FFFFToolTips|r", function(frame)
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
    AZPTTSelfOptionPanel.header:SetText(AZPTTSelfOptionPanel.name)

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

function AZP.ToolTips:CheckShadowlandsLegendaryItem()
    local searchValue = ITEM_UNIQUE_EQUIPPABLE
    local ttname = GameTooltip:GetName()
    for i = 1, GameTooltip:NumLines() do
        local left = _G[ttname .. "TextLeft" .. i]
        local text = left:GetText()

        if text:find(searchValue, 1, true)  then
            local upgradeInfo = AZP.ToolTips:GetLegendaryUpgradeInfo()
            if upgradeInfo ~= nil then
                if upgradeInfo.NextRankID ~= nil then
                    AZP.ToolTips:SetLegendaryToolTip(upgradeInfo)
                end
            end
        end
    end
end

function AZP.ToolTips:GetLegendaryUpgradeInfo()
    local _, itemLink = GameTooltip:GetItem()
    local NumBonusIDs, BonusID1, BonusID2, BonusID3, BonusID4, BonusID5, BonusID6 = select(13, strsplit(":", itemLink))
    local bonusIDList = {tonumber(BonusID1), tonumber(BonusID2), tonumber(BonusID3), tonumber(BonusID4), tonumber(BonusID5), tonumber(BonusID6)}
    if NumBonusIDs ~= nil and NumBonusIDs ~= "" then
        for j = 1, tonumber(NumBonusIDs) do
            local CurrentItem = AZP.ToolTips.LegendaryItemUpgrades[bonusIDList[j]]
            if CurrentItem ~= nil then
                return CurrentItem
            end
        end
    end
    return nil
end

function AZP.ToolTips:SearchGenericUpgradeableItem()
    local clipAfter = string.find(ITEM_UPGRADE_TOOLTIP_FORMAT, "%%d") -1
    local searchValue = string.sub(ITEM_UPGRADE_TOOLTIP_FORMAT, 1, clipAfter)
    local ttname = GameTooltip:GetName()
    for i = 1, GameTooltip:NumLines() do
        local left = _G[ttname .. "TextLeft" .. i]
        local text = left:GetText()
        if text:find(searchValue) then
            local priceToMax, curToolTipItem = nil, nil
            local _, itemLink = GameTooltip:GetItem()
            local itemString = itemLink:gsub("|", "-")

            local _, _, _, _, _, _, _, _, _, _, _, _, _, NumBonusIDs, BonusID1, BonusID2, BonusID3, BonusID4, BonusID5, BonusID6 = strsplit(":", itemString)
            local bonusIDList = {tonumber(BonusID1), tonumber(BonusID2), tonumber(BonusID3), tonumber(BonusID4), tonumber(BonusID5), tonumber(BonusID6)}
            if NumBonusIDs ~= nil and NumBonusIDs ~= "" then
                for j = 1, tonumber(NumBonusIDs) do
                    local curLoopItem = AZP.ToolTips.ItemUpgrades[bonusIDList[j]]
                    if curLoopItem ~= nil then
                        curToolTipItem = curLoopItem
                        priceToMax = AZP.ToolTips:StackUpgradeCosts(AZP.ToolTips.ItemUpgrades, bonusIDList[j])
                    end
                end
            end

            local displayIcon = ""
            if curToolTipItem.Icon ~= nil then
                displayIcon = curToolTipItem.Icon
            end

            local separator = AZPTTSeparator
            if curToolTipItem.Amount ~= nil then
                left:SetText(text .. "  |cFF00FFFF(" .. curToolTipItem.Amount .. displayIcon .. " " .. separator .. " " .. priceToMax .. displayIcon .. ")|r")
            elseif curToolTipItem.MaxRank == nil then
                left:SetText(text .. "  |cFF00FFFF(Coming Soon™!)|r")
            end
        end
    end
end

function AZP.ToolTips:SetLegendaryToolTip(inputValue)   -- InputValue was called UpgradeInfo but that was used later in the function as well as local.
    local currentLevel = inputValue
    local currencies = {}
    currencies[1] = {Icon = inputValue.Icon, Amount = inputValue.Amount}
    local NextRank = nil

    local nextBonusID = inputValue.NextRankID
    while nextBonusID ~= nil do
        local upgradeInfo = AZP.ToolTips.LegendaryItemUpgrades[nextBonusID]
        if upgradeInfo == nil then return nil end
        nextBonusID = upgradeInfo.NextRankID
        if NextRank == nil then
            NextRank = upgradeInfo.CurRank
        end
        if upgradeInfo.Amount == nil then
            break
        end
        if currencies[1].Icon == upgradeInfo.Icon then
            currencies[1].Amount = currencies[1].Amount + upgradeInfo.Amount
        else
            if currencies[2] == nil then
                currencies[2] = {Icon = upgradeInfo.Icon, Amount = upgradeInfo.Amount}
            else
                currencies[2].Amount = currencies[2].Amount + upgradeInfo.Amount
            end
        end
    end

    local totalCostString = string.format("%d %s", currencies[1].Amount, inputValue.Icon)
    if #currencies > 1 then
        totalCostString = string.format("%s, %d %s", totalCostString, currencies[2].Amount, currencies[2].Icon)
    end

    GameTooltip:AddLine(" ")
    GameTooltip:AddLine(string.format("Rank %d: %d %s (Next)", currentLevel.CurRank + 1, currentLevel.Amount, currentLevel.Icon))
    GameTooltip:AddLine(string.format("Rank %d: %s (Max)", currentLevel.MaxRank, totalCostString))
end

function AZP.ToolTips:CheckDominationShardItem()
    local _, itemLink = GameTooltip:GetItem()
    local itemString = itemLink:gsub("|", "-")
    local _, itemID = strsplit(":", itemString)
    itemID = tonumber(itemID)

    local shardInfo = AZP.ToolTips.ShardUpgrades[itemID]
    if shardInfo ~= nil then
        local curRank = shardInfo.CurRank
        local maxRank = shardInfo.MaxRank

        local ttname = GameTooltip:GetName()
        for i = 1, GameTooltip:NumLines() do
            if i == 2 then
                local left = _G[ttname .. "TextLeft" .. i]
                local text = left:GetText()
                left:SetText(text .. "  |cFF00FFFFUpgrade Level: " .. curRank .. "/" .. maxRank .. "|r")
            end
        end

        local Icon = AZP.ToolTips.ShardUpgrades[itemID].Icon

        if curRank < maxRank then
            local upgradeAmount = shardInfo.Amount
            local totalAmount = AZP.ToolTips:StackUpgradeCosts(AZP.ToolTips.ShardUpgrades, itemID)
            GameTooltip:AddLine(" ")
            if maxRank - curRank > 0 then
                GameTooltip:AddLine(string.format("Rank %d: %d %s (Max)", maxRank, totalAmount, Icon))
                if maxRank - curRank > 1 then
                    GameTooltip:AddLine(string.format("Rank %d: %d %s (Next)", curRank + 1, upgradeAmount, Icon))
                end
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
        currentBonusID = entry.NextRankID

        if entry.Amount ~= nil then
            totalCost = totalCost + entry.Amount
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
        if UnitInBattleground("player") ~= nil then
            -- BG stuff?
        else
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

function AZP.ToolTips.Events:AddonLoaded(addonName)
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
        AZP.ToolTips.Events:AddonLoaded(...)
    end
end

if not IsAddOnLoaded("AzerPUGsCore") then
    AZP.ToolTips:OnLoadSelf()
end