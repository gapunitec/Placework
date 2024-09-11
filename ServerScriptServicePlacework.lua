game:GetService("ReplicatedStorage"):WaitForChild("ReplicatedStoragePlacework").OnServerInvoke = function()
	local HttpService = game:GetService("HttpService")
	
	local placeworkRing = HttpService:GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/%231/Rings/PlaceworkRing1.txt"):split(",")
	local placeworkWhitelist = HttpService:GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/%231/PlaceworkWhitelist.txt"):split(",")
	local placeworkSpeed = HttpService:GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/%231/PlaceworkSpeed.txt"):split(",")
	
	for i, placeworkRingData in ipairs(placeworkRing) do
		placeworkRing[i] = tonumber(placeworkRingData)
	end
	
	for i, placeworkWhitelistData in ipairs(placeworkWhitelist) do
		placeworkWhitelist[i] = tonumber(placeworkWhitelistData)
	end
	
	return {placeworkRing, placeworkWhitelist, placeworkSpeed}
end