
## Installation

### Method 1 (recommended): Official Roblox Model

 + [Take a copy](https://create.roblox.com/store/asset/89620544219193/Placework) of the Placework loader model from the Roblox Library.
 + Insert the model into Studio using the Toolbox, and place it under `ServerScriptService`.

### Method 2: GitHub Releases

 + Download the `rbxm` file snapshot from the [latest release](https://github.com/gapunitec/Placework/releases/latest).
 + Import the model file into Studio.

## Configuration

 + Open `Game Settings`
 + Open `Security`
 + Enable `Allow HTTP Requests` and `Allow Third Party Teleports`
 + Click `Save`

## Whitelist

 + [Join](discord.gg/teZh5QSM9N)
 + Open a ticket

## HttpService Reference

#### Get placeworkRing

```http
  GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/%231/Rings/PlaceworkRing1.txt"):split(",")
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `placeworkRing` | `List<string>` | **Required**. List of experience ids |

#### Get placeworkWhitelist

```http
  GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/%231/PlaceworkWhitelist.txt"):split(",")
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `placeworkWhitelist` | `List<string>` | **Required**. List of player ids |

#### Get placeworkSpeed

```http
  GetAsync("https://raw.githubusercontent.com/gapunitec/Placework/%231/PlaceworkSpeed.txt"):split(",")
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `placeworkSpeed` | `int` | **Required**. Teleport speed |
