AccessRules = {
	["RI"] = function() return HasEnoughToken("RIToken") end,
    ["RC"] = function() return HasEnoughToken("RCToken") end,
    ["RR"] = function() return HasEnoughToken("RRToken") end,
    ["RF"] = function() return HasEnoughToken("RFToken") end,
}