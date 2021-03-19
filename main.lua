local GlobalAddonName, AZPToolTips = ...

local ValorToolTipsVersion = 10
local EventFrame, UpdateFrame = nil, nil
local HaveShowedUpdateNotification = false
local ValorItems = AZPToolTips.ValorItems

function AZPToolTips:OnLoad()
    EventFrame = CreateFrame("FRAME", nil)
    EventFrame:RegisterEvent("CHAT_MSG_ADDON")
    EventFrame:RegisterEvent("GROUP_ROSTER_UPDATE")
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
    UpdateFrame.header:SetText("|cFFFF0000AzerPUG Valor ToolTips is out of date!|r")

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

    AZPToolTips:ShareVersion()

    local clipAfter = string.find(ITEM_UPGRADE_TOOLTIP_FORMAT, "%%d") -1
    local searchValue = string.sub(ITEM_UPGRADE_TOOLTIP_FORMAT, 1, clipAfter)
    local valorIcon = "\124T463447:12\124t"

    GameTooltip:HookScript("OnTooltipSetItem", function (...) 
        local ttname = GameTooltip:GetName()
        for i = 1, GameTooltip:NumLines() do
            local left = _G[ttname .. "TextLeft" .. i]
            local text = left:GetText()
            local cost
            local cur, max = text:match(searchValue .. "(%d+)/(%d+)")
            if cur ~= nil then
                if cur ~= max then
                    if max == "12" then 
                        local _, itemLink = GameTooltip:GetItem()
                        local itemString = itemLink:gsub("|", "-")
                        local v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, NumBonusIDs, BonusID1, BonusID2, BonusID3, BonusID4, BonusID5, BonusID6 = strsplit(":", itemString)
                        local bonusIDList = {tonumber(BonusID1), tonumber(BonusID2), tonumber(BonusID3), tonumber(BonusID4), tonumber(BonusID5), tonumber(BonusID6)}
                        for i = 1, tonumber(NumBonusIDs) do
                            if ValorItems[bonusIDList[i]] ~= nil then
                                cost = ValorItems[bonusIDList[i]][1]
                                cur = ValorItems[bonusIDList[i]][2]
                                max = ValorItems[bonusIDList[i]][3]
                            end
                        end
                        local levelsToMax = max - cur
                        local priceToMax = levelsToMax * cost
                        left:SetText(text .. "  |cFF00FFFF(" .. cost .. valorIcon .. " /" .. priceToMax .. valorIcon .. ")|r")
                    else
                        left:SetText(text .. "  |cFF00FFFF(Coming Soon!)|r")
                    end
                end
            end
        end
    end)

    DelayedExecution(10,
    function()
        if AZPPopUpMessageShown ~= true then
            local RenameFrame = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
            RenameFrame:SetPoint("CENTER", 0, 250)
            RenameFrame:SetSize(500, 200)
            RenameFrame:SetBackdrop({
                bgFile = "Interface/Tooltips/UI-Tooltip-Background",
                edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
                edgeSize = 12,
                insets = { left = 1, right = 1, top = 1, bottom = 1 },
            })
            RenameFrame:SetBackdropColor(0.25, 0.25, 0.25, 0.80)
            
            RenameFrame.header = RenameFrame:CreateFontString("RenameFrame", "ARTWORK", "GameFontNormalHuge")
            RenameFrame.header:SetPoint("TOP", 0, -10)
            RenameFrame.header:SetText("|cFFFF0000AzerPUG's Valor ToolTips is getting renamed!|r")

            RenameFrame.text = RenameFrame:CreateFontString("RenameFrame", "ARTWORK", "GameFontNormalLarge")
            RenameFrame.text:SetPoint("TOP", 0, -40)
            RenameFrame.text:SetText(
                "Due to popularity and and requests, this addon will be renamed soon!\n\n" ..
                "Instead of only focusing on Valor upgardable items,\n" ..
                "it will also work for Conquest, Honor and Anima items!\n" ..
                "(Did you noticed a 'Coming Soon!' message?\n\n" ..
                "AzerPUG's ToolTips will be the new name of the addon,\n" .. 
                "and slowly we will start adding more and more and more ToolTip features..."
            )
            local RenameFrameCloseButton = CreateFrame("Button", nil, RenameFrame, "UIPanelCloseButton")
            RenameFrameCloseButton:SetWidth(25)
            RenameFrameCloseButton:SetHeight(25)
            RenameFrameCloseButton:SetPoint("TOPRIGHT", RenameFrame, "TOPRIGHT", 2, 2)
            RenameFrameCloseButton:SetScript("OnClick", function() RenameFrame:Hide() end )

            local NoShowAgainButton = CreateFrame("Button", nil, RenameFrame, "UIPanelButtonTemplate")
            NoShowAgainButton:SetWidth(200)
            NoShowAgainButton:SetHeight(25)
            NoShowAgainButton:SetPoint("CENTER", 0, -80)
            NoShowAgainButton:SetScript("OnClick", function() AZPPopUpMessageShown = true RenameFrame:Hide() end )
            NoShowAgainButton.text = NoShowAgainButton:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
            NoShowAgainButton.text:SetText("Close and do not show again!")
            NoShowAgainButton.text:SetWidth("200")
            NoShowAgainButton.text:SetHeight("15")
            NoShowAgainButton.text:SetPoint("CENTER", 0, -1)
        end
    end)
    
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
            C_ChatInfo.SendAddonMessage("AZPTT_VERSION", ValorToolTipsVersion ,"RAID", 1)
        end
        if IsInGroup() then
            C_ChatInfo.SendAddonMessage("AZPTT_VERSION", ValorToolTipsVersion ,"PARTY", 1)
        end
        if IsInGuild() then
            C_ChatInfo.SendAddonMessage("AZPTT_VERSION", ValorToolTipsVersion ,"GUILD", 1)
        end
    end)
end

function AZPToolTips:ReceiveVersion(version)
    if version > ValorToolTipsVersion then
        if (not HaveShowedUpdateNotification) then
            HaveShowedUpdateNotification = true
            UpdateFrame:Show()
            UpdateFrame.text:SetText(
                "Please download the new version through the CurseForge app.\n" ..
                "Or use the CurseForge website to download it manually!\n\n" .. 
                "Newer Version: v" .. version .. "\n" .. 
                "Your version: v" .. ValorToolTipsVersion .. "\n\n\n" ..
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
        ValorToolTips:ShareVersion()
    end
end

AZPToolTips:OnLoad()
