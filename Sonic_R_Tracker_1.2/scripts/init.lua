-- entry point for all lua code of the pack
-- more info on the lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
ENABLE_DEBUG_LOG = true
-- get current variant
local variant = Tracker.ActiveVariantUID
-- check variant info
IS_ITEMS_ONLY = variant:find("itemsonly")

print("-- Example Tracker --")
print("Loaded variant: ", variant)
if ENABLE_DEBUG_LOG then
    print("Debug logging is enabled!")
end

-- Utility Script for helper functions etc.
ScriptHost:LoadScript("scripts/utils.lua")

-- Custom Items
ScriptHost:LoadScript("scripts/custom_items/class.lua")
ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlus.lua")
ScriptHost:LoadScript("scripts/custom_items/progressiveTogglePlusWrapper.lua")

-- Items
Tracker:AddItems("items/items.json")

if not IS_ITEMS_ONLY then -- <--- use variant info to optimize loading
    -- Maps
    Tracker:AddMaps("maps/maps.json")    
    -- Locations
    Tracker:AddLocations("locations/ResortIsland.json")
	Tracker:AddLocations("locations/RadicalCity.json")
	Tracker:AddLocations("locations/RegalRuin.json")
	Tracker:AddLocations("locations/ReactiveFactory.json")
	Tracker:AddLocations("locations/RadiantEmerald.json")
	Tracker:AddLocations("locations/ResortIslandBS.json")
	Tracker:AddLocations("locations/RadicalCityBS.json")
	Tracker:AddLocations("locations/RegalRuinBS.json")
	Tracker:AddLocations("locations/ReactiveFactoryBS.json")
	Tracker:AddLocations("locations/RadiantEmeraldBS.json")
end

-- Layout
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/layout.json")
Tracker:AddLayouts("layouts/broadcast.json")

ScriptHost:LoadScript("scripts/accessRules.lua")
ScriptHost:LoadScript("scripts/logic/logic.lua")
-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.18.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end
