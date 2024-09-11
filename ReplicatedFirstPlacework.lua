local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local replicatedStoragePlacework = ReplicatedStorage:WaitForChild("ReplicatedStoragePlacework")
local placeworkRing, placeworkWhitelist, placeworkSpeed = replicatedStoragePlacework:InvokeServer()
local playerFound = false
local actualExperience = game.PlaceId
local targetExperience
local experienceFound = false

for i, placeworkWhitelistData in ipairs(placeworkWhitelist) do
	if placeworkWhitelistData == player.UserId then
		playerFound = true
		break
	end
end

if playerFound then
	while experienceFound == false do
		local index = math.random(1, #placeworkRing)
		if placeworkRing[index] ~= actualExperience then
			experienceFound = true
			targetExperience = placeworkRing[index]
		end
	end
end

if experienceFound then
	wait(placeworkSpeed)
	TeleportService:Teleport(targetExperience, player)
end