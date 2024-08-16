--[[ Constants ]]
local _
local assert = _G.assert
local ADDON, P = ...
local GetAddOnMetadata = _G.C_AddOns.GetAddOnMetadataa; assert(C_AddOns.GetAddOnMetadata ~= nil,'GetAddOnMetadata')
local LibStub = _G.LibStub; assert(LibStub ~= nil,'LibStub')
P.L = LibStub("AceLocale-3.0"):GetLocale(ADDON, false) -- don't print error if no locale
P.TITLE = P.L["TITLE"]
P.VERSION = (C_AddOns.GetAddOnMetadata(ADDON, "Version") or "") .. " " .. (C_AddOns.GetAddOnMetadata(ADDON, "X-Date") or "")

P.TIMER = 0.5 -- check pop-ups twice every second
--P.TIMER = 2.0 -- check pop-ups every two seconds