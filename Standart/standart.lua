local source = loadstring(game:HttpGet("https://raw.githubusercontent.com/CoriMyp/ParadoxHub/main/Standart/source.lua"))()

function run(tab)
	local MoveSec = tab:Section("Movement")

	MoveSec:Slider("Walk speed", 16, 300, 0, 1, "WalkSpeed Slider", function(value)
		source.walkspeed_value = value
	end)

	MoveSec:Button("Change walk speed", function()
		source:walk_speed()
	end)

	MoveSec:Slider("Jump power", 50, 300, 0, 1, "JumpPower Slider", function(value)
		source.jumppower_value = value
	end)

	MoveSec:Button("Change JumpPower", function()
		source:jump_power()
	end)

	MoveSec:Toggle("Infinity jump", false, "InfJump Toggle", function(bool)
		
	end)

	
	local FlySec = tab:Section("Fly")

	FlySec:Toggle("Fly", false, "Fly Toggle", function(bool) 
		source:fly(bool)
	end)

	FlySec:Bind("Fly button", Enum.KeyCode.F, false, "Fly Bind", function (keycode)
		source.fly_keycode = keycode
	end)

	FlySec:Slider("Fly speed", 50, 500, 50, 1, "FlySpeed Slider", function(value)
		source.fly_speed = value
	end)

end
