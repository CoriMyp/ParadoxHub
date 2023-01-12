local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/CoriMyp/ParadoxHub/main/SolarisUI.lua"))()

local SupportedGames = {
}
local code

for k, v in pairs(SupportedGames) do
	if v == game.placeId then
		code = loadstring("https://raw.githubusercontent.com/CoriMyp/ParadoxHub/main/" .. k .. "/ui.lua")
		break
	end

	code = loadstring(game:HttpGet("https://raw.githubusercontent.com/CoriMyp/ParadoxHub/main/Standart/standart.lua"))()
end

local win = lib:New({
	Name = "Paradox Hub",
	FolderToSave = "ParadoxHub"
})

local PlayerTab = win:Tab("Player")


code:run(PlayerTab)

