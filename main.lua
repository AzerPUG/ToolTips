if AZP == nil then AZP = {} end
if AZP.VersionControl == nil then AZP.VersionControl = {} end
if AZP.OnLoad == nil then AZP.OnLoad = {} end
if AZP.OnEvent == nil then AZP.OnEvent = {} end
if AZP.OnEvent == nil then AZP.OnEvent = {} end

AZP.VersionControl.ToolTips = 23
if AZP.ToolTips == nil then AZP.ToolTips = {} end

local EventFrame, UpdateFrame = nil, nil
local HaveShowedUpdateNotification = false
local ATTSelfOptionPanel
local optionHeader = "|cFF00FFFFAzerPUG's ToolTips|r"

function AZP.ToolTips:OnLoadBoth(optionsFrame)
    -- AZP.ToolTips:FillOptionsPanel(optionsFrame)

    local clipAfter = string.find(ITEM_UPGRADE_TOOLTIP_FORMAT, "%%d") -1
    local searchValue = string.sub(ITEM_UPGRADE_TOOLTIP_FORMAT, 1, clipAfter)

    GameTooltip:HookScript("OnTooltipSetItem", function (...)
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
                        local CurrentItem = AZP.ItemUpgrades[bonusIDList[j]]
                        if CurrentItem ~= nil then
                            cost, cur, max, currency, _ = unpack(CurrentItem)
                            priceToMax = AZP.ToolTips:StackUpgradeCosts(bonusIDList[j])
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
    end)
end

function AZP.ToolTips:OnLoadCore(optionsFrame)
    AZP.ToolTips:OnLoadBoth(optionsFrame)
    AZP.OptionsPanels:Generic("ToolTips", optionHeader, function (frame)
        AZP.ToolTips:FillOptionsPanel(frame)
    end)
end

function AZP.ToolTips:OnLoadSelf()
    C_ChatInfo.RegisterAddonMessagePrefix("AZPTT_VERSION")

    EventFrame = CreateFrame("FRAME", nil)
    EventFrame:RegisterEvent("CHAT_MSG_ADDON")
    EventFrame:RegisterEvent("GROUP_ROSTER_UPDATE")
    EventFrame:RegisterEvent("ADDON_LOADED")
    EventFrame:SetScript("OnEvent", AZP.ToolTips.OnEvent)

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

    UpdateFrame:Hide()

    local UpdateFrameCloseButton = CreateFrame("Button", nil, UpdateFrame, "UIPanelCloseButton")
    UpdateFrameCloseButton:SetWidth(25)
    UpdateFrameCloseButton:SetHeight(25)
    UpdateFrameCloseButton:SetPoint("TOPRIGHT", UpdateFrame, "TOPRIGHT", 2, 2)
    UpdateFrameCloseButton:SetScript("OnClick", function() UpdateFrame:Hide() end )

    ATTSelfOptionPanel = CreateFrame("FRAME", nil)
    ATTSelfOptionPanel.name = optionHeader
    InterfaceOptions_AddCategory(ATTSelfOptionPanel)
    ATTSelfOptionPanel.header = ATTSelfOptionPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalHuge")
    ATTSelfOptionPanel.header:SetPoint("TOP", 0, -10)
    ATTSelfOptionPanel.header:SetText("|cFF00FFFFAzerPUG ToolTips Options!|r")

    ATTSelfOptionPanel.footer = ATTSelfOptionPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
    ATTSelfOptionPanel.footer:SetPoint("TOP", 0, -300)
    ATTSelfOptionPanel.footer:SetText(
        "|cFF00FFFFAzerPUG Links:\n" ..
        "Website: www.azerpug.com\n" ..
        "Discord: www.azerpug.com/discord\n" ..
        "Twitch: www.twitch.tv/azerpug\n|r"
    )
    AZP.ToolTips:FillOptionsPanel(ATTSelfOptionPanel)
    AZP.ToolTips:OnLoadBoth(ATTSelfOptionPanel)
    AZP.ToolTips:ShareVersion()
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

function AZP.ToolTips:StackUpgradeCosts(startID)
    local totalCost = 0
    local currentBonusID = startID

    while currentBonusID ~= nil do
        local cost, _cur, _max, _currency, nextUpgrade = unpack(AZP.ItemUpgrades[currentBonusID])
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

-- For Stand-Alone usage.
function AZP.ToolTips:ShareVersion()    -- Change DelayedExecution to native WoW Function.
    local versionString = string.format("|TT:%d|", AZP.VersionControl.ToolTips)
    DelayedExecution(10, function() 
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

-- For Stand-Alone usage.
function AZP.ToolTips:ReceiveVersion(version)
    if version > AZP.VersionControl.ToolTips then
        if (not HaveShowedUpdateNotification) then
            HaveShowedUpdateNotification = true
            UpdateFrame:Show()
            UpdateFrame.text:SetText(
                "Please download the new version through the CurseForge app.\n" ..
                "Or use the CurseForge website to download it manually!\n\n" .. 
                "Newer Version: v" .. version .. "\n" .. 
                "Your version: v" .. AZP.VersionControl.ToolTips
            )
        end
    end
end

function AZP.ToolTips:GetSpecificAddonVersion(versionString, addonWanted)
    local pattern = "|([A-Z]+):([0-9]+)|"
    local index
    while index < #payload do
        local _, endPos = string.find(payload, pattern, index)
        local addon, version = string.match(payload, pattern, index)
        index = endPos + 1
        if addon == addonWanted then
            return version
        end
    end
end

-- For Stand-alone usage
function AZP.ToolTips:OnEvent(event, ...)
    if event == "CHAT_MSG_ADDON" then
        local prefix, payload, _, sender = ...
        if prefix == "AZPVERSIONS" then
            AZP.ToolTips:ReceiveVersion(AZP.ToolTips:GetSpecificAddonVersion(payload, "TT"))
        end
    elseif event == "GROUP_ROSTER_UPDATE" then
        AZP.ToolTips:ShareVersion()
    elseif event == "ADDON_LOADED" then
        local addonName = ...
        if addonName == "AzerPUG's ToolTips" then
            if AZPTTSeparator == nil then
                AZPTTSeparator = "/"
            end
            -- ATTSelfOptionPanel:SetScript("OnShow", function()
            --     ATTSelfOptionPanel.SeparatorEdit:SetText(AZPTTSeparator)
            -- end)
        end
    end
end

if not IsAddOnLoaded("AzerPUG's Core") then
    AZP.ToolTips:OnLoadSelf()
end
