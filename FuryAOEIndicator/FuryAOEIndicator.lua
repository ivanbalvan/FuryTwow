-- FuryAOEIndicator.lua
local f = CreateFrame("Frame", nil, UIParent)
f:SetWidth(48)
f:SetHeight(48)
f:SetPoint("CENTER", 0, -150)

local t = f:CreateTexture(nil, "BACKGROUND")
t:SetAllPoints()
t:SetTexture("Interface\\Icons\\Ability_Rogue_Ambush")

f:SetScript("OnUpdate", function()
    if FuryAOEStatus == "enabled" then
        t:SetTexture("Interface\\Icons\\Ability_Warrior_Cleave")
    else
        t:SetTexture("Interface\\Icons\\Ability_Rogue_Ambush")
    end
end)