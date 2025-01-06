local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Norsik01/prost/refs/heads/main/Editing')))()

local Window = OrionLib:MakeWindow({Name = "HELIX Hub | V2 (Best Version)", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]


game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Helix Hub";
	Text = "By Helix. Удачи!";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 10;

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]

local Tab = Window:MakeTab({
	Name = "Infa🎅",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Created by one genius doll🎅")

Tab:AddButton({
	Name = "Bro please go to our cart @HelixScripts",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Tab = Window:MakeTab({
	Name = "Main🎅",
	Icon = "rbxassetid://12470707556",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Basics Bro🎅"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Print to console🎅",
	Callback = function()
      		print("Ну типооо юзайте хеликс хаб:)")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddBind({
	Name = "Удалить меню🎅",
	Default = Enum.KeyCode.H,
	Hold = false,
	Callback = function()
		OrionLib:Destroy()
	end    
})

--[[
Name = <string> - The name of the bind.
Default = <keycode> - The default value of the bind.
Hold = <bool> - Makes the bind work like: Holding the key > The bind returns true, Not holding the key > Bind returns false.
Callback = <function> - The function of the bind.
]]

Tab:AddButton({
	Name = "Helix Hub V1🎅",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/Norsik01/HelixHub/refs/heads/main/Helix/HelixScripts/ScriptHub.lua"))()
  	end    
})


Tab:AddSlider({
	Name = "Скорость🎅",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(201, 2, 22),
	Increment = 1,
	ValueName = "Ставь скорость уже гений",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab:AddSlider({
	Name = "Сила прыжка🎅",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(201, 2, 22),
	Increment = 1,
	ValueName = "Ставь силу прыжка уже гений",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

Tab:AddSlider({
	Name = "Твое хп XP🎅",
	Min = 100,
	Max = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999,
	Default = 50,
	Color = Color3.fromRGB(201, 2, 22),
	Increment = 1,
	ValueName = "Ставь себе уже хп гений",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
	end    
})

local Section = Tab:AddSection({
	Name = "Основные скрипты Бро🎅"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Fly GUI V3 Бро🎅",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
  	end    
})

Tab:AddButton({
	Name = "Infinity Yield Бро🎅",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

Tab:AddButton({
	Name = "Teleport Any Player Бро🎅",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Teleport%20Gui.lua'))("https://t.me/RHOSCRIPTS")
  	end    
})

Tab:AddButton({
	Name = "UNC Cheaker Бро🎅(Результат в консоле)",
	Callback = function()
      		loadstring(game:HttpGet("https://pastebin.com/raw/LFeRsUn6", true))()
  	end    
})

Tab:AddButton({
	Name = "Шифровка скриптов Бро🎅",
	Callback = function()
      		loadstring(game:HttpGet('https://pastefy.app/S7xNJSXX/raw'))()execute("Script20")
  	end    
})

Tab:AddButton({
	Name = "Перикидывает на маленкий сервер Бро🎅",
	Callback = function()
      		local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
  local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
  return Http:JSONDecode(Raw)
end

local Server, Next; repeat
  local Servers = ListServers(Next)
  Server = Servers.data[1]
  Next = Servers.nextPageCursor
until Server

TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
  	end    
})

local Section = Tab:AddSection({
	Name = "Конец вкладки бро🎅"
})

local Tab = Window:MakeTab({
	Name = "Game Scripts🎅",
	Icon = "",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Скрипты на игры бро🎅"
})

Tab:AddButton({
	Name = "Blox Fruits🎅",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/main/AnDepZaiHubBeta.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Blox Fruits 2🎅",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
  	end    
})

Tab:AddButton({
	Name = "Blox Fruits 3🎅",
	Callback = function()
      		_G.Mode = "Eng" loadstring(game:HttpGet("https://raw.githubusercontent.com/AAwful/VectorHub/main/Loader.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Mm2🎅",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/ThatSick/ArrayField/main/SymphonyHub.lua'))()
  	end    
})

Tab:AddButton({
	Name = "Blade Ball🎅",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Fsploit/Frostware/refs/heads/main/F-R-O-S-T-W-A-R-E%20BY%20FSPLOIT-BLADE%20BALL.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Blade Ball 2🎅",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Fsploit/Flux-Z-Beta/refs/heads/main/Flux-Z-Beta-Blade-Ball.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Fisch (Key)🎅",
	Callback = function()
      		loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
  	end    
})

Tab:AddButton({
	Name = "Fisch 2 (Key)🎅",
	Callback = function()
      		script_key="";
(loadstring or load)(game:HttpGet("https://raw.githubusercontent.com/Native-lab/Native/main/loader.lua"))()
  	end    
})

Tab:AddButton({
	Name = "Fisch 3🎅",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
  	end    
})

Tab:AddButton({
	Name = "Slap Battles🎅",
	Callback = function()
      		loadstring(game:HttpGet(("https://raw.githubusercontent.com/Dusty1234567890/Loader/main/GHUBV0.2.")))()
  	end    
})

Tab:AddButton({
	Name = "Brookhaven🎅",
	Callback = function()
      		loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-ZEKROM-HUB-Zkm-23568"))()
  	end    
})


Tab:AddButton({
	Name = "Doors🎅",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
  	end    
})

Tab:AddButton({
	Name = "Doors 2🎅",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"))()
  	end    
})
