-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-02-02 14:48:58
-- Luau version 6, Types version 3
-- Time taken: 0.011050 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Character_upvr = LocalPlayer_upvr.Character
local Humanoid_upvr = Character_upvr:WaitForChild("Humanoid")
local Combat_upvr = ReplicatedStorage_upvr:WaitForChild("Remotes"):WaitForChild("Combat")
local MobileGui_upvr = LocalPlayer_upvr.PlayerGui:WaitForChild("MobileGui")
local var8_upvw = false
local var9_upvw = 1
local var10_upvw = false
local var11_upvw = false
local var12_upvw = false
local var13_upvw = false
local function _() -- Line 27, Named "ChangeSpeed"
	--[[ Upvalues[3]:
		[1]: Character_upvr (readonly)
		[2]: Humanoid_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
	]]
	if not Character_upvr:FindFirstChild("Stun") then
		Humanoid_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
		Humanoid_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
	end
end
local var14_upvw = true
local var15_upvw = true
local var16_upvw = true
local function _(arg1) -- Line 64, Named "specialChecker"
	local tbl = {"nave_12345678", "Glitchyy_Red", "RMFMDP", "ypnl6", "OvercastMassed", "GraceTheFox1342", "DotoDoya42", "APixelatedUniverse", "Aessxe", "wellworks", "illeniaI"}
	local var20
	for i = 1, #tbl do
		if arg1.Name == tbl[i] and var20 == false then
			var20 = true
		end
	end
	return var20
end
local function state_upvr() -- Line 89, Named "state"
	--[[ Upvalues[1]:
		[1]: Character_upvr (readonly)
	]]
	if not Character_upvr:FindFirstChild("Block") and not Character_upvr:FindFirstChild("Gobal") and not Character_upvr:FindFirstChild("DashGobal") and not Character_upvr:FindFirstChild("Stun") and not Character_upvr:FindFirstChild("HoldingTrash") and not Character_upvr:FindFirstChild("Talking") then
		return true
	end
end
local CdGui_upvr = LocalPlayer_upvr.PlayerGui.CdGui
local TweenService_upvr = game:GetService("TweenService")
local function CDGUI_upvr(arg1, arg2, arg3) -- Line 95, Named "CDGUI"
	--[[ Upvalues[3]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: CdGui_upvr (readonly)
		[3]: TweenService_upvr (readonly)
	]]
	local clone_upvr = ReplicatedStorage_upvr.Guis.CDGui:Clone()
	clone_upvr.Parent = CdGui_upvr
	clone_upvr.CdText.Text = arg1..' '..'/'..' '..arg2
	clone_upvr.CDFrame.CurCD.Size = UDim2.fromScale(1, 1)
	TweenService_upvr:Create(clone_upvr.CDFrame.CurCD, TweenInfo.new(arg3 - 0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {
		Size = UDim2.fromScale(0, 1);
	}):Play()
	task.spawn(function() -- Line 101
		--[[ Upvalues[2]:
			[1]: arg3 (readonly)
			[2]: clone_upvr (readonly)
		]]
		wait(arg3 - 0.1)
		clone_upvr:Destroy()
	end)
end
local function M1ing_upvr() -- Line 107, Named "M1ing"
	--[[ Upvalues[9]:
		[1]: state_upvr (readonly)
		[2]: var14_upvw (read and write)
		[3]: var9_upvw (read and write)
		[4]: Character_upvr (readonly)
		[5]: Combat_upvr (readonly)
		[6]: Humanoid_upvr (readonly)
		[7]: LocalPlayer_upvr (readonly)
		[8]: var11_upvw (read and write)
		[9]: CDGUI_upvr (readonly)
	]]
	if state_upvr() and var14_upvw == true then
		if var9_upvw < 4 then
			var14_upvw = false
			local IntValue_4_upvr = Instance.new("IntValue", Character_upvr)
			IntValue_4_upvr.Name = "Gobal"
			local IntValue = Instance.new("IntValue", Character_upvr)
			IntValue.Name = "Punching"
			game.Debris:AddItem(IntValue, 1.4)
			Combat_upvr:FireServer("YutaSlash", var9_upvw)
			task.spawn(function() -- Line 118
				--[[ Upvalues[1]:
					[1]: Combat_upvr (copied, readonly)
				]]
				task.wait(0.1)
				Combat_upvr:FireServer("OpenTrails")
				task.wait(0.25)
				Combat_upvr:FireServer("CloseTrails")
			end)
			var9_upvw += 1
			Humanoid_upvr.WalkSpeed = 6
			Humanoid_upvr.JumpPower = 0
			task.spawn(function() -- Line 127
				--[[ Upvalues[2]:
					[1]: Character_upvr (copied, readonly)
					[2]: var9_upvw (copied, read and write)
				]]
				task.wait(1.5)
				if not Character_upvr:FindFirstChild("Punching") then
					var9_upvw = 1
				end
			end)
			task.spawn(function() -- Line 133
				--[[ Upvalues[5]:
					[1]: IntValue_4_upvr (readonly)
					[2]: Character_upvr (copied, readonly)
					[3]: Humanoid_upvr (copied, readonly)
					[4]: LocalPlayer_upvr (copied, readonly)
					[5]: var14_upvw (copied, read and write)
				]]
				task.wait(0.45)
				IntValue_4_upvr:Destroy()
				if not Character_upvr:FindFirstChild("Stun") then
					Humanoid_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
					Humanoid_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
				end
				var14_upvw = true
			end)
			return
		end
		IntValue_4_upvr = var9_upvw
		if IntValue_4_upvr == 4 then
			IntValue_4_upvr = Humanoid_upvr.FloorMaterial
			if IntValue_4_upvr ~= Enum.Material.Air then
				IntValue_4_upvr = var11_upvw
				if IntValue_4_upvr == false then
					IntValue_4_upvr = false
					var14_upvw = IntValue_4_upvr
					IntValue_4_upvr = Instance.new("IntValue", Character_upvr)
					local var46_upvr = IntValue_4_upvr
					var46_upvr.Name = "Gobal"
					Combat_upvr:FireServer("YutaSlash", var9_upvw)
					task.spawn(function() -- Line 145
						--[[ Upvalues[1]:
							[1]: Combat_upvr (copied, readonly)
						]]
						task.wait(0.1)
						Combat_upvr:FireServer("OpenTrails")
						task.wait(0.25)
						Combat_upvr:FireServer("CloseTrails")
					end)
					var9_upvw = 1
					Humanoid_upvr.WalkSpeed = 6
					Humanoid_upvr.JumpPower = 0
					task.spawn(function() -- Line 154
						--[[ Upvalues[6]:
							[1]: var46_upvr (readonly)
							[2]: Character_upvr (copied, readonly)
							[3]: Humanoid_upvr (copied, readonly)
							[4]: LocalPlayer_upvr (copied, readonly)
							[5]: CDGUI_upvr (copied, readonly)
							[6]: var14_upvw (copied, read and write)
						]]
						task.wait(0.45)
						var46_upvr:Destroy()
						if not Character_upvr:FindFirstChild("Stun") then
							Humanoid_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
							Humanoid_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
						end
						task.spawn(function() -- Line 158
							--[[ Upvalues[1]:
								[1]: CDGUI_upvr (copied, readonly)
							]]
							CDGUI_upvr("M1", "Punch", 3)
						end)
						task.wait(3)
						var14_upvw = true
					end)
				end
			end
			var46_upvr = Humanoid_upvr.FloorMaterial
			if var46_upvr == Enum.Material.Air then
				var46_upvr = var11_upvw
				if var46_upvr == false then
					var46_upvr = false
					var14_upvw = var46_upvr
					var46_upvr = Instance.new("IntValue", Character_upvr)
					local var50_upvr = var46_upvr
					var50_upvr.Name = "Gobal"
					Combat_upvr:FireServer("SlamDown")
					var9_upvw = 1
					Humanoid_upvr.WalkSpeed = 6
					Humanoid_upvr.JumpPower = 0
					task.spawn(function() -- Line 173
						--[[ Upvalues[6]:
							[1]: var50_upvr (readonly)
							[2]: Character_upvr (copied, readonly)
							[3]: Humanoid_upvr (copied, readonly)
							[4]: LocalPlayer_upvr (copied, readonly)
							[5]: CDGUI_upvr (copied, readonly)
							[6]: var14_upvw (copied, read and write)
						]]
						task.wait(0.45)
						var50_upvr:Destroy()
						if not Character_upvr:FindFirstChild("Stun") then
							Humanoid_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
							Humanoid_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
						end
						task.spawn(function() -- Line 177
							--[[ Upvalues[1]:
								[1]: CDGUI_upvr (copied, readonly)
							]]
							CDGUI_upvr("M1", "Punch", 3)
						end)
						task.wait(3)
						var14_upvw = true
					end)
				end
			end
			var50_upvr = var11_upvw
			if var50_upvr == true then
				var50_upvr = false
				var14_upvw = var50_upvr
				var50_upvr = Instance.new("IntValue", Character_upvr)
				local var53_upvr = var50_upvr
				var53_upvr.Name = "Gobal"
				Combat_upvr:FireServer("UppercutWeapon")
				var9_upvw = 1
				Humanoid_upvr.WalkSpeed = 6
				Humanoid_upvr.JumpPower = 0
				task.spawn(function() -- Line 192
					--[[ Upvalues[6]:
						[1]: var53_upvr (readonly)
						[2]: Character_upvr (copied, readonly)
						[3]: Humanoid_upvr (copied, readonly)
						[4]: LocalPlayer_upvr (copied, readonly)
						[5]: CDGUI_upvr (copied, readonly)
						[6]: var14_upvw (copied, read and write)
					]]
					task.wait(0.5)
					var53_upvr:Destroy()
					if not Character_upvr:FindFirstChild("Stun") then
						Humanoid_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
						Humanoid_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
					end
					task.spawn(function() -- Line 196
						--[[ Upvalues[1]:
							[1]: CDGUI_upvr (copied, readonly)
						]]
						CDGUI_upvr("M1", "Punch", 3)
					end)
					task.wait(3)
					var14_upvw = true
				end)
			end
		end
	end
end
UserInputService.InputBegan:Connect(function(arg1, arg2) -- Line 209
	--[[ Upvalues[12]:
		[1]: var8_upvw (read and write)
		[2]: Character_upvr (readonly)
		[3]: var16_upvw (read and write)
		[4]: Humanoid_upvr (readonly)
		[5]: Combat_upvr (readonly)
		[6]: var13_upvw (read and write)
		[7]: state_upvr (readonly)
		[8]: var15_upvw (read and write)
		[9]: var10_upvw (read and write)
		[10]: var12_upvw (read and write)
		[11]: CDGUI_upvr (readonly)
		[12]: var11_upvw (read and write)
	]]
	if arg2 then
	else
		if var8_upvw == true then return end
		if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
			if Character_upvr:FindFirstChild("HoldingTrash") then
				if var16_upvw == true then
					var16_upvw = false
					Instance.new("IntValue", Character_upvr).Name = "Gobal"
					Humanoid_upvr.WalkSpeed = 0
					Humanoid_upvr.JumpPower = 0
					Combat_upvr:FireServer("ThrowTrash")
					-- KONSTANTWARNING: GOTO [50] #39
				end
			elseif var13_upvw == false then
				var13_upvw = true
			end
		end
		if arg1.KeyCode == Enum.KeyCode.F then
			if state_upvr() then
				if var15_upvw == true then
					var15_upvw = false
					var10_upvw = true
					Combat_upvr:FireServer("BlockWeapon")
					-- KONSTANTWARNING: GOTO [84] #67
				end
			else
				var12_upvw = true
				task.spawn(function() -- Line 237
					--[[ Upvalues[6]:
						[1]: state_upvr (copied, readonly)
						[2]: var12_upvw (copied, read and write)
						[3]: var15_upvw (copied, read and write)
						[4]: var10_upvw (copied, read and write)
						[5]: Combat_upvr (copied, readonly)
						[6]: CDGUI_upvr (copied, readonly)
					]]
					repeat
						task.wait()
					until not state_upvr() or var12_upvw == true
					if var15_upvw == true then
						var15_upvw = false
						var10_upvw = true
						Combat_upvr:FireServer("Block")
						repeat
							task.wait()
						until var12_upvw == false
						if var10_upvw == true then
							var10_upvw = false
							Combat_upvr:FireServer("Unblock")
							task.spawn(function() -- Line 251
								--[[ Upvalues[1]:
									[1]: CDGUI_upvr (copied, readonly)
								]]
								CDGUI_upvr('F', "Block", 0.5)
							end)
							wait(0.5)
							var15_upvw = true
						end
					end
				end)
			end
		end
		if arg1.KeyCode == Enum.KeyCode.Space and var11_upvw == false then
			var11_upvw = true
		end
	end
end)
UserInputService.InputEnded:Connect(function(arg1, arg2) -- Line 269
	--[[ Upvalues[7]:
		[1]: var13_upvw (read and write)
		[2]: var12_upvw (read and write)
		[3]: var10_upvw (read and write)
		[4]: Combat_upvr (readonly)
		[5]: CDGUI_upvr (readonly)
		[6]: var15_upvw (read and write)
		[7]: var11_upvw (read and write)
	]]
	if arg2 then
	else
		if arg1.UserInputType == Enum.UserInputType.MouseButton1 and var13_upvw == true then
			var13_upvw = false
		end
		if arg1.KeyCode == Enum.KeyCode.F then
			if var12_upvw == true then
				var12_upvw = false
			end
			if var10_upvw == true then
				var10_upvw = false
				Combat_upvr:FireServer("Unblock")
				task.spawn(function() -- Line 283
					--[[ Upvalues[1]:
						[1]: CDGUI_upvr (copied, readonly)
					]]
					CDGUI_upvr('F', "Block", 0.5)
				end)
				wait(0.5)
				var15_upvw = true
			end
		end
		if arg1.KeyCode == Enum.KeyCode.Space and var11_upvw == true then
			var11_upvw = false
		end
	end
end)
Character_upvr.ChildAdded:Connect(function(arg1) -- Line 297
	--[[ Upvalues[2]:
		[1]: var8_upvw (read and write)
		[2]: Character_upvr (readonly)
	]]
	if arg1:IsA("Tool") and var8_upvw == false then
		var8_upvw = true
	end
	if Character_upvr:FindFirstChild("Gobal") then
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
		repeat
			wait()
		until not Character_upvr:FindFirstChild("Gobal")
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
	end
end)
local var63_upvw = false
game:GetService("RunService").Heartbeat:Connect(function() -- Line 312
	--[[ Upvalues[6]:
		[1]: Character_upvr (readonly)
		[2]: var63_upvw (read and write)
		[3]: var9_upvw (read and write)
		[4]: MobileGui_upvr (readonly)
		[5]: var13_upvw (read and write)
		[6]: M1ing_upvr (readonly)
	]]
	if Character_upvr:FindFirstChild("Gobal") and var63_upvw == false then
		var63_upvw = true
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
		repeat
			wait()
		until not Character_upvr:FindFirstChild("Gobal")
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
		var63_upvw = false
	end
	if var9_upvw == 4 then
		if MobileGui_upvr.UpperButton.Visible == false then
			MobileGui_upvr.UpperButton.Visible = true
			-- KONSTANTWARNING: GOTO [73] #51
		end
	elseif MobileGui_upvr.UpperButton.Visible == true then
		MobileGui_upvr.UpperButton.Visible = false
	end
	if var13_upvw == true then
		M1ing_upvr()
	end
end)
Character_upvr.ChildRemoved:Connect(function(arg1) -- Line 337
	--[[ Upvalues[4]:
		[1]: var10_upvw (read and write)
		[2]: CDGUI_upvr (readonly)
		[3]: var15_upvw (read and write)
		[4]: var8_upvw (read and write)
	]]
	if arg1.Name == "Block" and var10_upvw == true then
		var10_upvw = false
		task.spawn(function() -- Line 340
			--[[ Upvalues[1]:
				[1]: CDGUI_upvr (copied, readonly)
			]]
			CDGUI_upvr('F', "Block", 0.5)
		end)
		wait(0.5)
		var15_upvw = true
	end
	if arg1:IsA("Tool") and var8_upvw == true then
		var8_upvw = false
	end
end)
MobileGui_upvr.PunchButton.Activated:Connect(function() -- Line 354
	--[[ Upvalues[5]:
		[1]: Character_upvr (readonly)
		[2]: var16_upvw (read and write)
		[3]: Humanoid_upvr (readonly)
		[4]: Combat_upvr (readonly)
		[5]: M1ing_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 3 start (CF ANALYSIS FAILED)
	var16_upvw = false
	Instance.new("IntValue", Character_upvr).Name = "Gobal"
	Humanoid_upvr.WalkSpeed = 0
	Humanoid_upvr.JumpPower = 0
	Combat_upvr:FireServer("ThrowTrash")
	do
		return
	end
	-- KONSTANTERROR: [9] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 27. Error Block 4 start (CF ANALYSIS FAILED)
	M1ing_upvr()
	-- KONSTANTERROR: [33] 27. Error Block 4 end (CF ANALYSIS FAILED)
end)
MobileGui_upvr.UpperButton.Activated:Connect(function() -- Line 369
	--[[ Upvalues[7]:
		[1]: var9_upvw (read and write)
		[2]: var14_upvw (read and write)
		[3]: Character_upvr (readonly)
		[4]: Combat_upvr (readonly)
		[5]: Humanoid_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: CDGUI_upvr (readonly)
	]]
	if var9_upvw == 4 and var14_upvw then
		var14_upvw = false
		local IntValue_3_upvr = Instance.new("IntValue", Character_upvr)
		IntValue_3_upvr.Name = "Gobal"
		Combat_upvr:FireServer("UppercutWeapon")
		var9_upvw = 1
		Humanoid_upvr.WalkSpeed = 6
		Humanoid_upvr.JumpPower = 0
		task.spawn(function() -- Line 379
			--[[ Upvalues[6]:
				[1]: IntValue_3_upvr (readonly)
				[2]: Character_upvr (copied, readonly)
				[3]: Humanoid_upvr (copied, readonly)
				[4]: LocalPlayer_upvr (copied, readonly)
				[5]: CDGUI_upvr (copied, readonly)
				[6]: var14_upvw (copied, read and write)
			]]
			task.wait(0.5)
			IntValue_3_upvr:Destroy()
			if not Character_upvr:FindFirstChild("Stun") then
				Humanoid_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
				Humanoid_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
			end
			task.spawn(function() -- Line 383
				--[[ Upvalues[1]:
					[1]: CDGUI_upvr (copied, readonly)
				]]
				CDGUI_upvr("M1", "Punch", 3)
			end)
			task.wait(3)
			var14_upvw = true
		end)
	end
end)
MobileGui_upvr.BlockButton.Activated:Connect(function() -- Line 393
	--[[ Upvalues[5]:
		[1]: var10_upvw (read and write)
		[2]: state_upvr (readonly)
		[3]: var15_upvw (read and write)
		[4]: Combat_upvr (readonly)
		[5]: CDGUI_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 4 start (CF ANALYSIS FAILED)
	var15_upvw = false
	var10_upvw = true
	Combat_upvr:FireServer("Block")
	do
		return
	end
	-- KONSTANTERROR: [9] 8. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 17. Error Block 5 start (CF ANALYSIS FAILED)
	var10_upvw = false
	Combat_upvr:FireServer("Unblock")
	task.spawn(function() -- Line 405
		--[[ Upvalues[1]:
			[1]: CDGUI_upvr (copied, readonly)
		]]
		CDGUI_upvr('F', "Block", 0.5)
	end)
	wait(0.5)
	var15_upvw = true
	-- KONSTANTERROR: [19] 17. Error Block 5 end (CF ANALYSIS FAILED)
end)
Humanoid_upvr.Died:Connect(function() -- Line 414
	script.Enabled = false
end)
