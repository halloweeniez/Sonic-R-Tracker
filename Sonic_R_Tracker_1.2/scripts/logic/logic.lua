function HasEnoughToken(target)
	local token = target .. "Token"
	local count = Tracker:ProviderCountForCode(token)
    return count > 4
end