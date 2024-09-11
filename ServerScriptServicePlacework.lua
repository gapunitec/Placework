game:GetService("ReplicatedStorage"):WaitForChild("ReplicatedStoragePlacework").OnServerInvoke = function()
	local HttpService = game:GetService("HttpService")
	
	local placeworkRing = HttpService:GetAsync(""):split(",")
	local placeworkWhitelist = HttpService:GetAsync(""):split(",")
	local placeworkSpeed = HttpService:GetAsync(""):split(",")
	
	for i, placeworkRingData in ipairs(placeworkRing) do
		placeworkRing[i] = tonumber(placeworkRingData)
	end
	
	for i, placeworkWhitelistData in ipairs(placeworkWhitelist) do
		placeworkWhitelist[i] = tonumber(placeworkWhitelistData)
	end
	
	return {placeworkRing, placeworkWhitelist, placeworkSpeed}
end