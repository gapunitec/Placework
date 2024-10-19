from roblox import Client
import asyncio
import random
import subprocess

async def Main():
    control = True
    token = str(input(".ROBLOSECURITY token: "))

    try:
        client = Client(token)
        user = await client.get_authenticated_user()
    except:
        print("Invalid .ROBLOSECURITY token!")
        control = False

    if control:
        try:
            placeId = int(input(f"Hello {user.name}! Place id: "))
            place = await client.get_place(placeId)
        except:
            print("Invalid place id!")
            control = False

    if control:
        try:
            response = await client.requests.session.post("https://friends.roblox.com/v1/users/1/request-friendship")
            client.requests.session.headers["x-csrf-token"] = response.headers["x-csrf-token"]
        except Exception as ex:
            print(f"Invalid x-csrf-token! Exception: {ex}")
            control = False
    
    if control:
        try:
            response = await client.requests.session.post("https://auth.roblox.com/v1/authentication-ticket", headers={"referer": f"https://www.roblox.com/games/{placeId}"})
            xsrfToken = response.headers["rbx-authentication-ticket"]
        except Exception as ex:
            print(f"Invalid xsrfToken! Exception: {ex}")
            control = False
    
    if control:
        try:
            browserId = random.randint(1000000, 10000000)
            launchCommand = f"start roblox-player:1+launchmode:play+gameinfo:{xsrfToken}+launchtime:{browserId}+placelauncherurl:https%3A%2F%2Fassetgame.roblox.com%2Fgame%2FPlaceLauncher.ashx:%3Frequest%3DRequestGame%26browserTrackerId%3D{browserId}%26placeId%3D{placeId}%26isPlayTogetherGame%3Dfalse+browsertrackerid:{browserId}+robloxLocale:en_us+gameLocale:en_us+channel:"
            subprocess.run(launchCommand, shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        except Exception as ex:
            print(f"Error running Roblox! Exception: {ex}")

asyncio.get_event_loop().run_until_complete(Main())