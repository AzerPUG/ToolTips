if AZP == nil then AZP = {} end
if AZP.VersionControl == nil then AZP.VersionControl = {} end
if AZP.OnLoad == nil then AZP.OnLoad = {} end

AZP.VersionControl["ToolTips"] = 60
if AZP.ToolTips == nil then AZP.ToolTips = {} end
if AZP.ToolTips.Events == nil then AZP.ToolTips.Events = {} end

local EventFrame, UpdateFrame = nil, nil
local HaveShowedUpdateNotification = false
local AZPTTSelfOptionPanel = nil
local FoundMissingYet = false

function AZP.ToolTips:OnLoadBoth()
    TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(...) AZP.ToolTips:IsPrimordialStone() end)
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

    frameToFill.OBracketEdit = CreateFrame("EditBox", nil, frameToFill, "InputBoxTemplate")
    frameToFill.OBracketEdit:SetSize(100, 25)
    frameToFill.OBracketEdit:SetPoint("TOPLEFT", 100, -200)
    frameToFill.OBracketEdit:SetAutoFocus(false)
    frameToFill.OBracketEdit:SetScript("OnShow", function ()
        frameToFill.OBracketEdit:SetText(AZPTTBrackets[1])
    end)
    frameToFill.OBracketText = frameToFill:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    frameToFill.OBracketText:SetSize(100, 25)
    frameToFill.OBracketText:SetPoint("TOPLEFT", 0, -200)
    frameToFill.OBracketText:SetText("Opening Bracket: ")
    frameToFill.OBracketEdit:SetScript("OnEditFocusLost", function() AZPTTBrackets[1] = frameToFill.OBracketEdit:GetText() end)
    frameToFill.OBracketEdit:SetFrameStrata("DIALOG")
    frameToFill.OBracketEdit:SetFontObject("ChatFontNormal")
    frameToFill.OBracketEdit:SetMaxLetters(100)

    frameToFill.CBracketEdit = CreateFrame("EditBox", nil, frameToFill, "InputBoxTemplate")
    frameToFill.CBracketEdit:SetSize(100, 25)
    frameToFill.CBracketEdit:SetPoint("TOPLEFT", 100, -300)
    frameToFill.CBracketEdit:SetAutoFocus(false)
    frameToFill.CBracketEdit:SetScript("OnShow", function ()
        frameToFill.CBracketEdit:SetText(AZPTTBrackets[2])
    end)
    frameToFill.CBracketText = frameToFill:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    frameToFill.CBracketText:SetSize(100, 25)
    frameToFill.CBracketText:SetPoint("TOPLEFT", 0, -300)
    frameToFill.CBracketText:SetText("Closing Bracket: ")
    frameToFill.CBracketEdit:SetScript("OnEditFocusLost", function() AZPTTBrackets[2] = frameToFill.CBracketEdit:GetText() end)
    frameToFill.CBracketEdit:SetFrameStrata("DIALOG")
    frameToFill.CBracketEdit:SetFontObject("ChatFontNormal")
    frameToFill.CBracketEdit:SetMaxLetters(100)

    frameToFill.hideCreatedByBox = CreateFrame("CheckButton", nil, frameToFill, "ChatConfigCheckButtonTemplate")
    frameToFill.hideCreatedByBox:SetPoint("TOPLEFT", 0, -400)
    frameToFill.hideCreatedByBox:SetScript("OnClick", function()
        AZPTTHideCreatedBy = frameToFill.hideCreatedByBox:GetChecked()
    end)
    frameToFill.hideCreatedByBox:SetScript("OnShow", function()
        frameToFill.hideCreatedByBox:SetChecked(AZPTTHideCreatedBy)
    end)
    frameToFill.hideCreatedByBox:SetScript("OnClick", function() if AZPTTHideCreatedBy == true then AZPTTHideCreatedBy = false elseif AZPTTHideCreatedBy == false then AZPTTHideCreatedBy = true end end)

    frameToFill.hideCreatedByText = frameToFill:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    frameToFill.hideCreatedByText:SetSize(100, 25)
    frameToFill.hideCreatedByText:SetPoint("TOPLEFT", 0, -400)
    frameToFill.hideCreatedByText:SetText("Hide \"Created By:\"")
    -- frameToFill.hideCreatedByText:SetFrameStrata("DIALOG")
    frameToFill.hideCreatedByText:SetFontObject("ChatFontNormal")
    -- frameToFill.hideCreatedByText:SetMaxLetters(100)

    if AZPTTHideCreatedBy == true then
        ITEM_CREATED_BY= ""
    end

    frameToFill:Hide()
end

function AZP.ToolTips:IsPrimordialStone()
    local _, itemLink = GameTooltip:GetItem()
    if itemLink == nil then return end

    local itemID = GetItemInfoInstant(itemLink)
    if AZP.ToolTips.PrimalStones[itemID] == nil then
        AZP.ToolTips:SearchGenericUpgradeableItem()
    else
        AZP.ToolTips:PrimordialStonesText()
    end
end

function AZP.ToolTips:PrimordialStonesText()
    local _, itemLink = GameTooltip:GetItem()
    local itemID = GetItemInfoInstant(itemLink)
    local ttname = GameTooltip:GetName()
    for i = 1, GameTooltip:NumLines() do
        local left = _G[ttname .. "TextLeft" .. i]
        local text = left:GetText()
        if text:find("Primordial Stone") then text = string.format("%s (%s)", text, AZP.ToolTips.PrimalStones[itemID].Family) end
        -- if text:find("Item Level 411") then text = string.format("%s (1/3)", text)
        -- elseif text:find("Item Level 418") then text = string.format("%s (2/3)", text)
        -- elseif text:find("Item Level 424") then text = string.format("%s (3/3)", text)
        -- end
        left:SetText(text)
    end
end

function AZP.ToolTips:SearchGenericUpgradeableItem()
    local clipAfter = string.find(ITEM_UPGRADE_TOOLTIP_FORMAT, "%%d") -1
    local searchValue = string.sub(ITEM_UPGRADE_TOOLTIP_FORMAT, 1, clipAfter)
    local _, itemLink = GameTooltip:GetItem()
    local ttname = GameTooltip:GetName()
    for i = 1, GameTooltip:NumLines() do
        local left = _G[ttname .. "TextLeft" .. i]
        local text = left:GetText()
        if text:find(searchValue) then
            local perLevelUpgradeCost = AZP.ToolTips:GetUpgradeCostForItem(itemLink)
            local priceToMax, Icon = nil, nil
            _, itemLink = GameTooltip:GetItem()
            AZP.ToolTips:GetUpgradeCostForItem(itemLink)
            local itemString = itemLink:gsub("|", "-")
            local _, _, _, _, _, _, _, _, _, _, _, _, _, NumBonusIDs, BonusID1, BonusID2, BonusID3, BonusID4, BonusID5, BonusID6 = strsplit(":", itemString)
            local bonusIDList = {tonumber(BonusID1), tonumber(BonusID2), tonumber(BonusID3), tonumber(BonusID4), tonumber(BonusID5), tonumber(BonusID6)}

            if NumBonusIDs ~= nil and NumBonusIDs ~= "" then
                for j = 1, tonumber(NumBonusIDs) do
                    for sort, IDs in pairs(AZP.ToolTips.RankBonusID) do
                        local currentRank = IDs.Ranks[bonusIDList[j]]
                        if currentRank ~= nil then
                            local ranksToGo = IDs.MaxRank - currentRank
                            priceToMax = ranksToGo * perLevelUpgradeCost
                        end
                    end
                end
            end
            if priceToMax ~= nil and priceToMax ~= 0 then
                local displayIcon = ""
                if Icon ~= nil then
                    displayIcon = Icon
                end

                local separator = AZPTTSeparator
                local OBracket, CBracker = AZPTTBrackets[1], AZPTTBrackets[2]
                text = string.format("%s |cFF00FFFF%s%d%s %s %d%s%s|r", text, OBracket, perLevelUpgradeCost, displayIcon, separator, priceToMax, displayIcon, CBracker)
                left:SetText(text)
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

function AZP.ToolTips:GetUpgradeCostForItem(itemLink)
    local itemID, _, _, itemEquipLoc = GetItemInfoInstant(itemLink)
    if itemEquipLoc == "INVTYPE_WEAPON" then
        local weaponCost = AZP.ToolTips.WeapValorCostList[itemID]
        if weaponCost ~= nil then
            return weaponCost
        elseif FoundMissingYet == false then
            FoundMissingYet = true
            print("Missing Weapon ID:", itemID, ", For item:", itemLink, ". Please report it to the AzerPUG Discord.")
            return 0
        else
            return 0
        end
    else
        return AZP.ToolTips.StaticSlotValorCost[itemEquipLoc]
    end
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
        if AZPTTSeparator == nil then AZPTTSeparator = "/" end
        if AZPTTBrackets == nil then AZPTTBrackets = {} end
        if AZPTTBrackets[1] == nil then AZPTTBrackets[1] = "(" end
        if AZPTTBrackets[2] == nil then AZPTTBrackets[2] = ")" end
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