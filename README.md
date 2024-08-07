# Placework

Placework is a free tool for generating visits. Neither a powerful PC nor downloading executables is required. All you need is 1 Roblox account and 1 public experience.

## Installation

- Place PlaceworkClient.rbxm in ReplicatedFirst
- Place Placework.rbxm in ReplicatedStorage
- Place PlaceworkServer.lua in ServerScriptService
- Save to Roblox
- Game Settings -> Security -> Allow HTTP Requests
- Game Settings -> Security -> Allow Third Party Teleports
- Publish to Roblox (Alt+P)
- Connect to the Public Ring (https://discord.gg/t5k4jnABBj)

![Logo](https://cdn.discordapp.com/attachments/1270179168663109703/1270323792631304355/image.png?ex=66b348b9&is=66b1f739&hm=1d138a1339fdc7bfa1a7b8bd32b699b8a2b9cffcac47a2875a76c0fb7fb78a5a&)

## Placework.rbxm (Remote Function)

#### Ring

```lua
  return {**ring**, whitelist, speed}
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `ring` | `table` | **Required**. Default: Public Ring (you can create one too!). Contains the Experience IDs. |

#### Whitelist

```lua
  return {ring, **whitelist**, speed}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `whitelist` | `table` | **Required**. Default: Public Whitelist (you can create one too!) Contains the User IDs. |

#### Speed

```lua
  return {ring, whitelist, **speed**}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `speed` | `number` | **Required**. Default: Placework Speed (you can only change it if you are not in the Public Ring) |

## Run Locally (Private Ring)

Replace the contents of PlaceworkServer.lua like this:

```lua
game:GetService("ReplicatedStorage"):WaitForChild("Placework").OnServerInvoke = function()
	local HttpService = game:GetService("HttpService")
	
	local ringRaw = "ExperienceId0,ExperienceId1"
	local whitelistRaw = "UserId0,UserId1"
	local ring = ringRaw:split(",")
	local whitelist = whitelistRaw:split(",")
	local speed = 5

	for g, id in ipairs(ring) do
		ring[g] = tonumber(id)
	end
	for g, id in ipairs(whitelist) do
		whitelist[g] = tonumber(id)
	end
	
	return {ring, whitelist, speed}
end
```
