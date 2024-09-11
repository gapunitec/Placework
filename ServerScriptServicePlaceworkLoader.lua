local ReplicatedFirst = game:GetService("ReplicatedFirst")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local replicatedFirstPlacework = script.Parent:WaitForChild("ReplicatedFirstPlacework")
local replicatedStoragePlacework = script.Parent:WaitForChild("ReplicatedStoragePlacework")

replicatedStoragePlacework.Parent = ReplicatedStorage
replicatedFirstPlacework.Parent = ReplicatedFirst
replicatedFirstPlacework.Enabled = true