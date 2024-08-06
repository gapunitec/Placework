game:GetService("ReplicatedStorage"):WaitForChild("Placework").OnServerInvoke = function()
	local HttpService = game:GetService("HttpService")
	
	local ring = HttpService:GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/main/PublicRing.txt"):split(",")
	local whitelist = HttpService:GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/main/PublicWhitelist.txt"):split(",")
	local speed = HttpService:GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/main/PlaceworkSpeed.txt")

	for g, id in ipairs(ring) do
		ring[g] = tonumber(id)
	end
	for g, id in ipairs(whitelist) do
		whitelist[g] = tonumber(id)
	end
	
	return {ring, whitelist, speed}
end
