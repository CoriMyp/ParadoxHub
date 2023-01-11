--WALK SP
local walkspeed_value = 16

function walk_speed()
	game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):connect(function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed_value
	end)

	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed_value
end

--JUMP POWER
local jump_power = 50

function jump_power()
	game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("JumpPower"):connect(function()
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump_power
	end)

	game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump_power
end

-- INFINITY JUMP
function infinity_jump(state)
	game:GetService("UserInputService").JumpRequest:connect(function()
		if state then
			game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
		end
	end)
end

-- FLY
local fly_keycode = Enum.KeyCode.F
local fly_speed = 100

function fly(state)
	local mouse = game.Players.LocalPlayer:GetMouse()

	repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid')
	repeat wait() until mouse

	local T = game.Players.LocalPlayer.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0
	local FLYING = false

	local function FlyOn()
		FLYING = true

		local BG = Instance.new('BodyGyro', T)
		local BV = Instance.new('BodyVelocity', T)
		BG.P = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)

		spawn(function()
			repeat wait()
				if not vfly and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end

				if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Health == 0 then
					game.Players.LocalPlayer.CharacterAdded:Wait()
					game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart')
					T = game.Players.LocalPlayer.Character.HumanoidRootPart
					BG = Instance.new('BodyGyro', T)
					BV = Instance.new('BodyVelocity', T)
					BG.P = 9e4
					BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
					BG.cframe = T.CFrame
					BV.velocity = Vector3.new(0, 0, 0)
					BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
				end
						
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end

				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end

				BG.cframe = game.Workspace.CurrentCamera.CoordinateFrame

			until not FLYING
				
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:destroy()
			BV:destroy()

			if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end

		end)
	end

	local function FlyOff()
		FLYING = false
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end


	local dofly = false
	mouse.KeyDown:connect(function(KEY)
		if state then
			if KEY:lower() == fly_keycode.Name:lower() then
				if not dofly then
					dofly = not dofly
					FlyOn()
				else
					dofly = not dofly
					FlyOff()
				end
			end

			if KEY:lower() == 'w' then
				CONTROL.F = fly_speed / 100
			elseif KEY:lower() == 's' then
				CONTROL.B = -fly_speed / 100
			elseif KEY:lower() == 'a' then
				CONTROL.L = -fly_speed / 100
			elseif KEY:lower() == 'd' then
				CONTROL.R = fly_speed / 100
			end
		else
			dofly = false
			FlyOff()
		end
	end)

	mouse.KeyUp:connect(function(KEY)
		if state then
			if KEY:lower() == 'w' then
				CONTROL.F = 0
			elseif KEY:lower() == 's' then
				CONTROL.B = 0
			elseif KEY:lower() == 'a' then
				CONTROL.L = 0
			elseif KEY:lower() == 'd' then
				CONTROL.R = 0
			end
		end
	end)
end

-- NOCLIP
local noclip_keycode = Enum.KeyCode.Z

function noclip(state)
	local UserInputService = game:GetService("UserInputService")

	local donoclip = false
	local noclip = false

	function noclipfunc(input, _gameProcessed)
		if state then
			if (input.KeyCode == noclip_keycode) then
				if noclip == false then
					donoclip = true

					noclip = true
				elseif noclip == true then
					donoclip = false

					noclip = false
				end
			end
		end
	end

	UserInputService.InputBegan:Connect(noclipfunc)

	game:GetService("Players").LocalPlayer.Character.Head.Touched:connect(function(obj)
		if obj ~= workspace.Terrain then
			if donoclip == true then
				obj.CanCollide = false
			else
				obj.CanCollide = true
			end
		end
	end)
end
