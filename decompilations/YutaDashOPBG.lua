-- Decompiler will be improved soon!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-02-02 14:49:14
-- Luau version 6, Types version 3
-- Time taken: 0.028583 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local UserInputService_upvr_2 = game:GetService("UserInputService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Parent_upvr = script.Parent
if not Parent_upvr then
	Parent_upvr = LocalPlayer_upvr.Character
	if not Parent_upvr then
		Parent_upvr = LocalPlayer_upvr.CharacterAdded:Wait()
	end
end
local RunService_upvr_2 = game:GetService("RunService")
local Dash_upvr = ReplicatedStorage_upvr:WaitForChild("Remotes"):WaitForChild("Dash")
local MobileGui_upvr_2 = LocalPlayer_upvr.PlayerGui:WaitForChild("MobileGui")
local Humanoid_9_upvr = Parent_upvr:WaitForChild("Humanoid")
local HumanoidRootPart_upvr_2 = Parent_upvr:WaitForChild("HumanoidRootPart")
local SOME_upvr_2 = workspace:WaitForChild("Visuals"..LocalPlayer_upvr.UserId)
local function _(arg1) -- Line 15, Named "CheckDown"
	if arg1:FindFirstChild("Ragdolling") then
		return true
	end
	return false
end
local var121_upvw = false
local var122_upvw = false
local var123_upvw = false
local var124_upvw = false
local var125_upvw = true
local var126_upvw = true
local var127_upvw = true
local function state_upvr() -- Line 36, Named "state"
	--[[ Upvalues[1]:
		[1]: Parent_upvr (readonly)
	]]
	if not Parent_upvr:FindFirstChild("Block") then
		if not Parent_upvr:FindFirstChild("Gobal") and not Parent_upvr:FindFirstChild("DashGobal") then
			if not Parent_upvr:FindFirstChild("Stun") then
				if not Parent_upvr:FindFirstChild("HoldingTrash") and not Parent_upvr:FindFirstChild("Talking") then
					return true
				end
			end
		end
	end
end
local function _() -- Line 42, Named "ChangeSpeed"
	--[[ Upvalues[3]:
		[1]: Parent_upvr (readonly)
		[2]: Humanoid_9_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
	]]
	if not Parent_upvr:FindFirstChild("Stun") then
		Humanoid_9_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
		Humanoid_9_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
	end
end
local Katana_upvr_2 = SOME_upvr_2:WaitForChild("Katana")
local function FrontDash_upvr() -- Line 49, Named "FrontDash"
	--[[ Upvalues[10]:
		[1]: var125_upvw (read and write)
		[2]: Humanoid_9_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: Parent_upvr (readonly)
		[5]: HumanoidRootPart_upvr_2 (readonly)
		[6]: SOME_upvr_2 (readonly)
		[7]: Dash_upvr (readonly)
		[8]: RunService_upvr_2 (readonly)
		[9]: Katana_upvr_2 (readonly)
		[10]: LocalPlayer_upvr (readonly)
	]]
	var125_upvw = false
	local var129_upvw = true
	local var130_upvw = true
	task.spawn(function() -- Line 53
		--[[ Upvalues[1]:
			[1]: var130_upvw (read and write)
		]]
		task.wait(0.08)
		var130_upvw = false
	end)
	local var132_upvw = false
	local var133_upvw = false
	local any_LoadAnimation_result1_upvr = Humanoid_9_upvr:LoadAnimation(ReplicatedStorage_upvr.Anims.Yuta.SwordDash)
	any_LoadAnimation_result1_upvr:Play()
	local IntValue_upvr_5 = Instance.new("IntValue", Parent_upvr)
	IntValue_upvr_5.Name = "Gobal"
	Humanoid_9_upvr.WalkSpeed = 75
	Humanoid_9_upvr.JumpPower = 0
	HumanoidRootPart_upvr_2.Velocity = HumanoidRootPart_upvr_2.CFrame.LookVector * 80
	local clone_upvr = ReplicatedStorage_upvr.VFX.Dash.DashBox:Clone()
	clone_upvr.Parent = SOME_upvr_2
	clone_upvr.CFrame = HumanoidRootPart_upvr_2.CFrame * CFrame.new(0, 0, -2.5)
	clone_upvr.Transparency = 1
	local Weld_2 = Instance.new("Weld", clone_upvr)
	Weld_2.Part0 = HumanoidRootPart_upvr_2
	Weld_2.Part1 = clone_upvr
	Weld_2.C0 = CFrame.new(0, 0, -2.5)
	Dash_upvr:FireServer("StartDash")
	Dash_upvr:FireServer("SoundDash", "FrontBack")
	Dash_upvr:FireServer("WaveDash")
	task.spawn(function() -- Line 78
		--[[ Upvalues[3]:
			[1]: var129_upvw (read and write)
			[2]: Parent_upvr (copied, readonly)
			[3]: var133_upvw (read and write)
		]]
		while var129_upvw do
			if Parent_upvr:FindFirstChild("Stun") and var133_upvw == false then
				var133_upvw = true
				var129_upvw = false
			end
			task.wait()
		end
	end)
	task.spawn(function() -- Line 89
		--[[ Upvalues[3]:
			[1]: RunService_upvr_2 (copied, readonly)
			[2]: Parent_upvr (copied, readonly)
			[3]: var129_upvw (read and write)
		]]
		RunService_upvr_2:BindToRenderStep("Front", Enum.RenderPriority.Character.Value + 0.1, function() -- Line 90
			--[[ Upvalues[1]:
				[1]: Parent_upvr (copied, readonly)
			]]
			if Parent_upvr then
				local Humanoid_5 = Parent_upvr:FindFirstChild("Humanoid")
				if Humanoid_5 then
					Humanoid_5:Move(Vector3.new(0, 0, -1), true)
				end
			end
		end)
		spawn(function() -- Line 98
			--[[ Upvalues[2]:
				[1]: var129_upvw (copied, read and write)
				[2]: RunService_upvr_2 (copied, readonly)
			]]
			repeat
				task.wait()
			until var129_upvw == false
			RunService_upvr_2:UnbindFromRenderStep("Front")
		end)
	end)
	task.spawn(function() -- Line 105
		--[[ Upvalues[15]:
			[1]: Parent_upvr (copied, readonly)
			[2]: SOME_upvr_2 (copied, readonly)
			[3]: var132_upvw (read and write)
			[4]: clone_upvr (readonly)
			[5]: var129_upvw (read and write)
			[6]: Dash_upvr (copied, readonly)
			[7]: any_LoadAnimation_result1_upvr (readonly)
			[8]: Katana_upvr_2 (copied, readonly)
			[9]: Humanoid_9_upvr (copied, readonly)
			[10]: ReplicatedStorage_upvr (copied, readonly)
			[11]: var130_upvw (read and write)
			[12]: IntValue_upvr_5 (readonly)
			[13]: LocalPlayer_upvr (copied, readonly)
			[14]: var125_upvw (copied, read and write)
			[15]: HumanoidRootPart_upvr_2 (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local OverlapParams_new_result1 = OverlapParams.new()
		OverlapParams_new_result1.FilterType = Enum.RaycastFilterType.Exclude
		OverlapParams_new_result1.FilterDescendantsInstances = {Parent_upvr, SOME_upvr_2}
		OverlapParams_new_result1.MaxParts = 0
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [268] 200. Error Block 33 start (CF ANALYSIS FAILED)
		task.wait()
		-- KONSTANTERROR: [268] 200. Error Block 33 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 12. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 12. Error Block 2 end (CF ANALYSIS FAILED)
	end)
	task.spawn(function() -- Line 166
		--[[ Upvalues[13]:
			[1]: var132_upvw (read and write)
			[2]: var133_upvw (read and write)
			[3]: Humanoid_9_upvr (copied, readonly)
			[4]: var129_upvw (read and write)
			[5]: Dash_upvr (copied, readonly)
			[6]: any_LoadAnimation_result1_upvr (readonly)
			[7]: Katana_upvr_2 (copied, readonly)
			[8]: ReplicatedStorage_upvr (copied, readonly)
			[9]: clone_upvr (readonly)
			[10]: Parent_upvr (copied, readonly)
			[11]: IntValue_upvr_5 (readonly)
			[12]: LocalPlayer_upvr (copied, readonly)
			[13]: var125_upvw (copied, read and write)
		]]
		task.wait(0.4)
		if var132_upvw == false then
			if not var133_upvw then
				var132_upvw = true
				local var148_upvw = 75
				task.spawn(function() -- Line 172
					--[[ Upvalues[11]:
						[1]: var148_upvw (read and write)
						[2]: Humanoid_9_upvr (copied, readonly)
						[3]: var129_upvw (copied, read and write)
						[4]: Dash_upvr (copied, readonly)
						[5]: any_LoadAnimation_result1_upvr (copied, readonly)
						[6]: Katana_upvr_2 (copied, readonly)
						[7]: ReplicatedStorage_upvr (copied, readonly)
						[8]: clone_upvr (copied, readonly)
						[9]: Parent_upvr (copied, readonly)
						[10]: IntValue_upvr_5 (copied, readonly)
						[11]: LocalPlayer_upvr (copied, readonly)
					]]
					while 0 < var148_upvw do
						task.wait()
						Humanoid_9_upvr.WalkSpeed = var148_upvw
						var148_upvw -= 5
					end
					var129_upvw = false
					Dash_upvr:FireServer("StopDash")
					any_LoadAnimation_result1_upvr:Stop()
					Dash_upvr:FireServer("OpenTrails", nil, nil, Katana_upvr_2)
					task.spawn(function() -- Line 182
						--[[ Upvalues[2]:
							[1]: Dash_upvr (copied, readonly)
							[2]: Katana_upvr_2 (copied, readonly)
						]]
						task.wait(0.2)
						Dash_upvr:FireServer("CloseTrails", nil, nil, Katana_upvr_2)
					end)
					Humanoid_9_upvr:LoadAnimation(ReplicatedStorage_upvr.Anims.Yuta.DashSlash):Play()
					clone_upvr:Destroy()
					Dash_upvr:FireServer("Slash")
					if not Parent_upvr:FindFirstChild("Stun") then
						Humanoid_9_upvr.WalkSpeed = 0
						Humanoid_9_upvr.JumpPower = 0
					end
					task.wait(0.8)
					IntValue_upvr_5:Destroy()
					if not Parent_upvr:FindFirstChild("Stun") then
						Humanoid_9_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
						Humanoid_9_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
					end
				end)
				task.wait(5)
				var125_upvw = true
				return
			end
			var132_upvw = true
			var129_upvw = false
			Dash_upvr:FireServer("StopDash")
			any_LoadAnimation_result1_upvr:Stop()
			clone_upvr:Destroy()
			IntValue_upvr_5:Destroy()
			task.wait(5)
			var125_upvw = true
		end
	end)
end
local function BackDash_upvr() -- Line 214, Named "BackDash"
	--[[ Upvalues[8]:
		[1]: var125_upvw (read and write)
		[2]: Humanoid_9_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: Dash_upvr (readonly)
		[5]: Parent_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: HumanoidRootPart_upvr_2 (readonly)
		[8]: RunService_upvr_2 (readonly)
	]]
	var125_upvw = false
	local var150_upvw = true
	local var151_upvw = false
	Humanoid_9_upvr:LoadAnimation(ReplicatedStorage_upvr.Anims.Dash.Back):Play()
	Dash_upvr:FireServer("StartDash")
	Dash_upvr:FireServer("SoundDash", "FrontBack")
	local IntValue_upvr_11 = Instance.new("IntValue", Parent_upvr)
	IntValue_upvr_11.Name = "Gobal"
	local var153_upvw = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value * 4
	Humanoid_9_upvr.WalkSpeed = var153_upvw
	Humanoid_9_upvr.JumpPower = 0
	HumanoidRootPart_upvr_2.Velocity = (HumanoidRootPart_upvr_2.CFrame.LookVector) * (-LocalPlayer_upvr:WaitForChild("WalkSpeed").Value * 4)
	task.spawn(function() -- Line 227
		--[[ Upvalues[3]:
			[1]: var150_upvw (read and write)
			[2]: Parent_upvr (copied, readonly)
			[3]: var151_upvw (read and write)
		]]
		while var150_upvw do
			if Parent_upvr:FindFirstChild("Stun") and var151_upvw == false then
				var151_upvw = true
			end
			task.wait()
		end
	end)
	task.spawn(function() -- Line 237
		--[[ Upvalues[3]:
			[1]: RunService_upvr_2 (copied, readonly)
			[2]: Parent_upvr (copied, readonly)
			[3]: var150_upvw (read and write)
		]]
		RunService_upvr_2:BindToRenderStep("Back", Enum.RenderPriority.Character.Value + 0.1, function() -- Line 238
			--[[ Upvalues[1]:
				[1]: Parent_upvr (copied, readonly)
			]]
			if Parent_upvr then
				local Humanoid_10 = Parent_upvr:FindFirstChild("Humanoid")
				if Humanoid_10 then
					Humanoid_10:Move(Vector3.new(0, 0, 1), true)
				end
			end
		end)
		spawn(function() -- Line 246
			--[[ Upvalues[2]:
				[1]: var150_upvw (copied, read and write)
				[2]: RunService_upvr_2 (copied, readonly)
			]]
			repeat
				task.wait()
			until var150_upvw == false
			RunService_upvr_2:UnbindFromRenderStep("Back")
		end)
	end)
	task.spawn(function() -- Line 253
		--[[ Upvalues[9]:
			[1]: var151_upvw (read and write)
			[2]: var153_upvw (readonly)
			[3]: Humanoid_9_upvr (copied, readonly)
			[4]: var150_upvw (read and write)
			[5]: IntValue_upvr_11 (readonly)
			[6]: Dash_upvr (copied, readonly)
			[7]: Parent_upvr (copied, readonly)
			[8]: LocalPlayer_upvr (copied, readonly)
			[9]: var125_upvw (copied, read and write)
		]]
		task.wait(0.2)
		if not var151_upvw then
			task.spawn(function() -- Line 257
				--[[ Upvalues[8]:
					[1]: var153_upvw (read and write)
					[2]: Humanoid_9_upvr (copied, readonly)
					[3]: var150_upvw (copied, read and write)
					[4]: IntValue_upvr_11 (copied, readonly)
					[5]: Dash_upvr (copied, readonly)
					[6]: Parent_upvr (copied, readonly)
					[7]: LocalPlayer_upvr (copied, readonly)
					[8]: var125_upvw (copied, read and write)
				]]
				while 0 < var153_upvw do
					task.wait()
					Humanoid_9_upvr.WalkSpeed = var153_upvw
					var153_upvw -= 7.5
				end
				var150_upvw = false
				IntValue_upvr_11:Destroy()
				Dash_upvr:FireServer("StopDash")
				if not Parent_upvr:FindFirstChild("Stun") then
					Humanoid_9_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
					Humanoid_9_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
				end
				task.wait(5)
				var125_upvw = true
			end)
		else
			var150_upvw = false
			IntValue_upvr_11:Destroy()
			Dash_upvr:FireServer("StopDash")
			if not Parent_upvr:FindFirstChild("Stun") then
				Humanoid_9_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
				Humanoid_9_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
			end
			task.wait(5)
			var125_upvw = true
		end
	end)
end
local function RightDash_upvr() -- Line 281, Named "RightDash"
	--[[ Upvalues[8]:
		[1]: var126_upvw (read and write)
		[2]: Humanoid_9_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: Dash_upvr (readonly)
		[5]: Parent_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: HumanoidRootPart_upvr_2 (readonly)
		[8]: RunService_upvr_2 (readonly)
	]]
	var126_upvw = false
	local var161_upvw = true
	local var162_upvw = false
	Humanoid_9_upvr:LoadAnimation(ReplicatedStorage_upvr.Anims.Dash.Right):Play()
	Dash_upvr:FireServer("StartDash")
	Dash_upvr:FireServer("SoundDash", "Side")
	local IntValue_upvr_9 = Instance.new("IntValue", Parent_upvr)
	IntValue_upvr_9.Name = "Gobal"
	local var164_upvw = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value * 3
	Humanoid_9_upvr.WalkSpeed = var164_upvw
	Humanoid_9_upvr.JumpPower = 0
	HumanoidRootPart_upvr_2.Velocity = (HumanoidRootPart_upvr_2.CFrame.RightVector) * (LocalPlayer_upvr:WaitForChild("WalkSpeed").Value * 3)
	task.spawn(function() -- Line 294
		--[[ Upvalues[3]:
			[1]: var161_upvw (read and write)
			[2]: Parent_upvr (copied, readonly)
			[3]: var162_upvw (read and write)
		]]
		while var161_upvw do
			if Parent_upvr:FindFirstChild("Stun") and var162_upvw == false then
				var162_upvw = true
				var161_upvw = false
			end
			task.wait()
		end
	end)
	task.spawn(function() -- Line 305
		--[[ Upvalues[3]:
			[1]: RunService_upvr_2 (copied, readonly)
			[2]: Parent_upvr (copied, readonly)
			[3]: var161_upvw (read and write)
		]]
		RunService_upvr_2:BindToRenderStep("Right", Enum.RenderPriority.Character.Value + 0.1, function() -- Line 306
			--[[ Upvalues[1]:
				[1]: Parent_upvr (copied, readonly)
			]]
			if Parent_upvr then
				local Humanoid_8 = Parent_upvr:FindFirstChild("Humanoid")
				if Humanoid_8 then
					Humanoid_8:Move(Vector3.new(1, 0, 0), true)
				end
			end
		end)
		spawn(function() -- Line 314
			--[[ Upvalues[2]:
				[1]: var161_upvw (copied, read and write)
				[2]: RunService_upvr_2 (copied, readonly)
			]]
			repeat
				task.wait()
			until var161_upvw == false
			RunService_upvr_2:UnbindFromRenderStep("Right")
		end)
	end)
	task.spawn(function() -- Line 321
		--[[ Upvalues[9]:
			[1]: var162_upvw (read and write)
			[2]: var164_upvw (readonly)
			[3]: Humanoid_9_upvr (copied, readonly)
			[4]: var161_upvw (read and write)
			[5]: Dash_upvr (copied, readonly)
			[6]: IntValue_upvr_9 (readonly)
			[7]: Parent_upvr (copied, readonly)
			[8]: LocalPlayer_upvr (copied, readonly)
			[9]: var126_upvw (copied, read and write)
		]]
		task.wait(0.15)
		if not var162_upvw then
			task.spawn(function() -- Line 325
				--[[ Upvalues[8]:
					[1]: var164_upvw (read and write)
					[2]: Humanoid_9_upvr (copied, readonly)
					[3]: var161_upvw (copied, read and write)
					[4]: Dash_upvr (copied, readonly)
					[5]: IntValue_upvr_9 (copied, readonly)
					[6]: Parent_upvr (copied, readonly)
					[7]: LocalPlayer_upvr (copied, readonly)
					[8]: var126_upvw (copied, read and write)
				]]
				while 0 < var164_upvw do
					task.wait()
					Humanoid_9_upvr.WalkSpeed = var164_upvw
					var164_upvw -= 6
				end
				var161_upvw = false
				Dash_upvr:FireServer("StopDash")
				IntValue_upvr_9:Destroy()
				if not Parent_upvr:FindFirstChild("Stun") then
					Humanoid_9_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
					Humanoid_9_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
				end
				task.wait(2)
				var126_upvw = true
			end)
		else
			var161_upvw = false
			IntValue_upvr_9:Destroy()
			Dash_upvr:FireServer("StopDash")
			task.wait(0.01)
			if not Parent_upvr:FindFirstChild("Stun") then
				Humanoid_9_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
				Humanoid_9_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
			end
			task.wait(2)
			var126_upvw = true
		end
	end)
end
local function LeftDash_upvr() -- Line 350, Named "LeftDash"
	--[[ Upvalues[8]:
		[1]: var126_upvw (read and write)
		[2]: Humanoid_9_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: Dash_upvr (readonly)
		[5]: Parent_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: HumanoidRootPart_upvr_2 (readonly)
		[8]: RunService_upvr_2 (readonly)
	]]
	var126_upvw = false
	local var172_upvw = true
	local var173_upvw = false
	Humanoid_9_upvr:LoadAnimation(ReplicatedStorage_upvr.Anims.Dash.Left):Play()
	Dash_upvr:FireServer("StartDash")
	Dash_upvr:FireServer("SoundDash", "Side")
	local IntValue_upvr_8 = Instance.new("IntValue", Parent_upvr)
	IntValue_upvr_8.Name = "Gobal"
	Humanoid_9_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value * 3
	Humanoid_9_upvr.JumpPower = 0
	HumanoidRootPart_upvr_2.Velocity = (HumanoidRootPart_upvr_2.CFrame.RightVector) * (-LocalPlayer_upvr:WaitForChild("WalkSpeed").Value * 3)
	task.spawn(function() -- Line 363
		--[[ Upvalues[3]:
			[1]: var172_upvw (read and write)
			[2]: Parent_upvr (copied, readonly)
			[3]: var173_upvw (read and write)
		]]
		while var172_upvw do
			if Parent_upvr:FindFirstChild("Stun") and var173_upvw == false then
				var173_upvw = true
			end
			task.wait()
		end
	end)
	task.spawn(function() -- Line 373
		--[[ Upvalues[3]:
			[1]: RunService_upvr_2 (copied, readonly)
			[2]: Parent_upvr (copied, readonly)
			[3]: var172_upvw (read and write)
		]]
		RunService_upvr_2:BindToRenderStep("Left", Enum.RenderPriority.Character.Value + 0.1, function() -- Line 374
			--[[ Upvalues[1]:
				[1]: Parent_upvr (copied, readonly)
			]]
			if Parent_upvr then
				local Humanoid_6 = Parent_upvr:FindFirstChild("Humanoid")
				if Humanoid_6 then
					Humanoid_6:Move(Vector3.new(-1, 0, 0), true)
				end
			end
		end)
		spawn(function() -- Line 382
			--[[ Upvalues[2]:
				[1]: var172_upvw (copied, read and write)
				[2]: RunService_upvr_2 (copied, readonly)
			]]
			repeat
				task.wait()
			until var172_upvw == false
			RunService_upvr_2:UnbindFromRenderStep("Left")
		end)
	end)
	task.spawn(function() -- Line 389
		--[[ Upvalues[8]:
			[1]: var173_upvw (read and write)
			[2]: Humanoid_9_upvr (copied, readonly)
			[3]: var172_upvw (read and write)
			[4]: Dash_upvr (copied, readonly)
			[5]: IntValue_upvr_8 (readonly)
			[6]: Parent_upvr (copied, readonly)
			[7]: LocalPlayer_upvr (copied, readonly)
			[8]: var126_upvw (copied, read and write)
		]]
		task.wait(0.15)
		if not var173_upvw then
			local var182_upvw = 80
			task.spawn(function() -- Line 393
				--[[ Upvalues[8]:
					[1]: var182_upvw (read and write)
					[2]: Humanoid_9_upvr (copied, readonly)
					[3]: var172_upvw (copied, read and write)
					[4]: Dash_upvr (copied, readonly)
					[5]: IntValue_upvr_8 (copied, readonly)
					[6]: Parent_upvr (copied, readonly)
					[7]: LocalPlayer_upvr (copied, readonly)
					[8]: var126_upvw (copied, read and write)
				]]
				while 0 < var182_upvw do
					task.wait()
					Humanoid_9_upvr.WalkSpeed = var182_upvw
					var182_upvw -= 6
				end
				var172_upvw = false
				Dash_upvr:FireServer("StopDash")
				IntValue_upvr_8:Destroy()
				if not Parent_upvr:FindFirstChild("Stun") then
					Humanoid_9_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
					Humanoid_9_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
				end
				task.wait(2)
				var126_upvw = true
			end)
		else
			var172_upvw = false
			IntValue_upvr_8:Destroy()
			Dash_upvr:FireServer("StopDash")
			task.wait(0.01)
			if not Parent_upvr:FindFirstChild("Stun") then
				Humanoid_9_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
				Humanoid_9_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
			end
			task.wait(2)
			var126_upvw = true
		end
	end)
end
local function RCLeft_upvr() -- Line 418, Named "RCLeft"
	--[[ Upvalues[7]:
		[1]: var127_upvw (read and write)
		[2]: Humanoid_9_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: Dash_upvr (readonly)
		[5]: Parent_upvr (readonly)
		[6]: HumanoidRootPart_upvr_2 (readonly)
		[7]: LocalPlayer_upvr (readonly)
	]]
	var127_upvw = false
	local var183_upvw = true
	Humanoid_9_upvr:LoadAnimation(ReplicatedStorage_upvr.Anims.Dash.Left):Play()
	Dash_upvr:FireServer("StartDash")
	Dash_upvr:FireServer("SoundDash", "Side")
	Dash_upvr:FireServer("Escapse")
	local IntValue_upvr_7 = Instance.new("IntValue", Parent_upvr)
	IntValue_upvr_7.Name = "Gobal"
	Humanoid_9_upvr.WalkSpeed = 0
	Humanoid_9_upvr.JumpPower = 0
	task.spawn(function() -- Line 430
		--[[ Upvalues[2]:
			[1]: var183_upvw (read and write)
			[2]: HumanoidRootPart_upvr_2 (copied, readonly)
		]]
		while var183_upvw do
			task.wait()
			HumanoidRootPart_upvr_2.Velocity = HumanoidRootPart_upvr_2.CFrame.RightVector * -100
		end
	end)
	task.spawn(function() -- Line 436
		--[[ Upvalues[8]:
			[1]: var183_upvw (read and write)
			[2]: HumanoidRootPart_upvr_2 (copied, readonly)
			[3]: Dash_upvr (copied, readonly)
			[4]: IntValue_upvr_7 (readonly)
			[5]: Parent_upvr (copied, readonly)
			[6]: Humanoid_9_upvr (copied, readonly)
			[7]: LocalPlayer_upvr (copied, readonly)
			[8]: var127_upvw (copied, read and write)
		]]
		task.wait(0.1)
		var183_upvw = false
		local var188_upvw = 85
		task.spawn(function() -- Line 441
			--[[ Upvalues[8]:
				[1]: var188_upvw (read and write)
				[2]: HumanoidRootPart_upvr_2 (copied, readonly)
				[3]: Dash_upvr (copied, readonly)
				[4]: IntValue_upvr_7 (copied, readonly)
				[5]: Parent_upvr (copied, readonly)
				[6]: Humanoid_9_upvr (copied, readonly)
				[7]: LocalPlayer_upvr (copied, readonly)
				[8]: var127_upvw (copied, read and write)
			]]
			while 0 < var188_upvw do
				task.wait()
				HumanoidRootPart_upvr_2.Velocity = HumanoidRootPart_upvr_2.CFrame.RightVector * -var188_upvw
				var188_upvw -= 4
			end
			Dash_upvr:FireServer("StopDash")
			IntValue_upvr_7:Destroy()
			if not Parent_upvr:FindFirstChild("Stun") then
				Humanoid_9_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
				Humanoid_9_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
			end
			task.wait(30)
			var127_upvw = true
		end)
	end)
end
local function RCRight_upvr() -- Line 464, Named "RCRight"
	--[[ Upvalues[7]:
		[1]: var127_upvw (read and write)
		[2]: Humanoid_9_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: Dash_upvr (readonly)
		[5]: Parent_upvr (readonly)
		[6]: HumanoidRootPart_upvr_2 (readonly)
		[7]: LocalPlayer_upvr (readonly)
	]]
	var127_upvw = false
	local var189_upvw = true
	Humanoid_9_upvr:LoadAnimation(ReplicatedStorage_upvr.Anims.Dash.Right):Play()
	Dash_upvr:FireServer("StartDash")
	Dash_upvr:FireServer("SoundDash", "Side")
	Dash_upvr:FireServer("Escapse")
	local IntValue_upvr_6 = Instance.new("IntValue", Parent_upvr)
	IntValue_upvr_6.Name = "Gobal"
	Humanoid_9_upvr.WalkSpeed = 0
	Humanoid_9_upvr.JumpPower = 0
	task.spawn(function() -- Line 476
		--[[ Upvalues[2]:
			[1]: var189_upvw (read and write)
			[2]: HumanoidRootPart_upvr_2 (copied, readonly)
		]]
		while var189_upvw do
			task.wait()
			HumanoidRootPart_upvr_2.Velocity = HumanoidRootPart_upvr_2.CFrame.RightVector * 100
		end
	end)
	task.spawn(function() -- Line 482
		--[[ Upvalues[8]:
			[1]: var189_upvw (read and write)
			[2]: HumanoidRootPart_upvr_2 (copied, readonly)
			[3]: Dash_upvr (copied, readonly)
			[4]: IntValue_upvr_6 (readonly)
			[5]: Parent_upvr (copied, readonly)
			[6]: Humanoid_9_upvr (copied, readonly)
			[7]: LocalPlayer_upvr (copied, readonly)
			[8]: var127_upvw (copied, read and write)
		]]
		task.wait(0.1)
		var189_upvw = false
		local var194_upvw = 85
		task.spawn(function() -- Line 487
			--[[ Upvalues[8]:
				[1]: var194_upvw (read and write)
				[2]: HumanoidRootPart_upvr_2 (copied, readonly)
				[3]: Dash_upvr (copied, readonly)
				[4]: IntValue_upvr_6 (copied, readonly)
				[5]: Parent_upvr (copied, readonly)
				[6]: Humanoid_9_upvr (copied, readonly)
				[7]: LocalPlayer_upvr (copied, readonly)
				[8]: var127_upvw (copied, read and write)
			]]
			while 0 < var194_upvw do
				task.wait()
				HumanoidRootPart_upvr_2.Velocity = HumanoidRootPart_upvr_2.CFrame.RightVector * var194_upvw
				var194_upvw -= 4
			end
			Dash_upvr:FireServer("StopDash")
			IntValue_upvr_6:Destroy()
			if not Parent_upvr:FindFirstChild("Stun") then
				Humanoid_9_upvr.WalkSpeed = LocalPlayer_upvr:WaitForChild("WalkSpeed").Value
				Humanoid_9_upvr.JumpPower = LocalPlayer_upvr:WaitForChild("JumpPower").Value
			end
			task.wait(30)
			var127_upvw = true
		end)
	end)
end
UserInputService_upvr_2.InputBegan:Connect(function(arg1, arg2) -- Line 510
	--[[ Upvalues[12]:
		[1]: state_upvr (readonly)
		[2]: Parent_upvr (readonly)
		[3]: var124_upvw (read and write)
		[4]: var125_upvw (read and write)
		[5]: FrontDash_upvr (readonly)
		[6]: var122_upvw (read and write)
		[7]: BackDash_upvr (readonly)
		[8]: var123_upvw (read and write)
		[9]: var126_upvw (read and write)
		[10]: LeftDash_upvr (readonly)
		[11]: var121_upvw (read and write)
		[12]: RightDash_upvr (readonly)
	]]
	if arg2 then
	elseif arg1.KeyCode == Enum.KeyCode.Q then
		local state_result1_3 = state_upvr()
		if state_result1_3 then
			if Parent_upvr:FindFirstChild("Ragdolling") then
				state_result1_3 = true
			else
				state_result1_3 = false
			end
			if not state_result1_3 then
				state_result1_3 = var124_upvw
				if state_result1_3 then
					state_result1_3 = var125_upvw
					if state_result1_3 then
						state_result1_3 = FrontDash_upvr
						state_result1_3()
					end
				end
				state_result1_3 = var122_upvw
				if state_result1_3 then
					state_result1_3 = var125_upvw
					if state_result1_3 then
						state_result1_3 = BackDash_upvr
						state_result1_3()
					end
				end
				state_result1_3 = var123_upvw
				if state_result1_3 then
					state_result1_3 = var126_upvw
					if state_result1_3 then
						state_result1_3 = LeftDash_upvr
						state_result1_3()
					end
				end
				state_result1_3 = var121_upvw
				if state_result1_3 then
					state_result1_3 = var126_upvw
					if state_result1_3 then
						state_result1_3 = RightDash_upvr
						state_result1_3()
					end
				end
			end
		end
	end
end)
UserInputService_upvr_2.InputBegan:Connect(function(arg1, arg2) -- Line 528
	--[[ Upvalues[6]:
		[1]: Parent_upvr (readonly)
		[2]: var123_upvw (read and write)
		[3]: var127_upvw (read and write)
		[4]: RCLeft_upvr (readonly)
		[5]: var121_upvw (read and write)
		[6]: RCRight_upvr (readonly)
	]]
	if arg2 then
	else
		local KeyCode = arg1.KeyCode
		if KeyCode == Enum.KeyCode.Q then
			if Parent_upvr:FindFirstChild("Ragdolling") then
				KeyCode = true
			else
				KeyCode = false
			end
			if KeyCode == true then
				KeyCode = Parent_upvr:FindFirstChild("GetDomain")
				if not KeyCode then
					KeyCode = var123_upvw
					if KeyCode then
						KeyCode = var127_upvw
						if KeyCode then
							KeyCode = RCLeft_upvr
							KeyCode()
						end
					end
					KeyCode = var121_upvw
					if KeyCode then
						KeyCode = var127_upvw
						if KeyCode then
							KeyCode = RCRight_upvr
							KeyCode()
						end
					end
				end
			end
		end
	end
end)
RunService_upvr_2.RenderStepped:Connect(function() -- Line 544
	--[[ Upvalues[7]:
		[1]: UserInputService_upvr_2 (readonly)
		[2]: var124_upvw (read and write)
		[3]: var122_upvw (read and write)
		[4]: var123_upvw (read and write)
		[5]: var121_upvw (read and write)
		[6]: Parent_upvr (readonly)
		[7]: MobileGui_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	local var200
	if var200 then
		var200 = true
		var124_upvw = var200
	else
		var200 = false
		var124_upvw = var200
	end
	var200 = UserInputService_upvr_2:IsKeyDown(Enum.KeyCode.S)
	if var200 then
		var200 = true
		var122_upvw = var200
	else
		var200 = false
		var122_upvw = var200
	end
	var200 = UserInputService_upvr_2:IsKeyDown(Enum.KeyCode.A)
	if var200 then
		var200 = true
		var123_upvw = var200
	else
		var200 = false
		var123_upvw = var200
	end
	var200 = UserInputService_upvr_2:IsKeyDown(Enum.KeyCode.D)
	if var200 then
		var200 = true
		var121_upvw = var200
	else
		var200 = false
		var121_upvw = var200
	end
	if Parent_upvr:FindFirstChild("Ragdolling") then
		var200 = true
	else
		var200 = false
	end
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [79] 63. Error Block 25 start (CF ANALYSIS FAILED)
	var200 = MobileGui_upvr_2.EscapseRight
	var200.Visible = true
	do
		return
	end
	-- KONSTANTERROR: [79] 63. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [86] 68. Error Block 33 start (CF ANALYSIS FAILED)
	var200 = MobileGui_upvr_2.EscapseLeft.Visible
	if var200 == true then
		var200 = MobileGui_upvr_2.EscapseLeft
		var200.Visible = false
	end
	var200 = MobileGui_upvr_2.EscapseRight.Visible
	if var200 == true then
		var200 = MobileGui_upvr_2.EscapseRight
		var200.Visible = false
	end
	-- KONSTANTERROR: [86] 68. Error Block 33 end (CF ANALYSIS FAILED)
end)
MobileGui_upvr_2.EscapseLeft.Activated:Connect(function() -- Line 582
	--[[ Upvalues[2]:
		[1]: var127_upvw (read and write)
		[2]: RCLeft_upvr (readonly)
	]]
	if var127_upvw then
		RCLeft_upvr()
	end
end)
MobileGui_upvr_2.EscapseRight.Activated:Connect(function() -- Line 587
	--[[ Upvalues[2]:
		[1]: var127_upvw (read and write)
		[2]: RCRight_upvr (readonly)
	]]
	if var127_upvw then
		RCRight_upvr()
	end
end)
MobileGui_upvr_2.DashButton.Activated:Connect(function() -- Line 592
	--[[ Upvalues[10]:
		[1]: HumanoidRootPart_upvr_2 (readonly)
		[2]: Humanoid_9_upvr (readonly)
		[3]: state_upvr (readonly)
		[4]: Parent_upvr (readonly)
		[5]: var125_upvw (read and write)
		[6]: FrontDash_upvr (readonly)
		[7]: BackDash_upvr (readonly)
		[8]: var126_upvw (read and write)
		[9]: RightDash_upvr (readonly)
		[10]: LeftDash_upvr (readonly)
	]]
	local any_VectorToObjectSpace_result1 = HumanoidRootPart_upvr_2.CFrame:VectorToObjectSpace(Humanoid_9_upvr.MoveDirection)
	local ceiled = math.ceil(math.deg(math.atan2(any_VectorToObjectSpace_result1.X, any_VectorToObjectSpace_result1.Z)) - 0.5)
	local state_result1 = state_upvr()
	if state_result1 then
		if Parent_upvr:FindFirstChild("Ragdolling") then
			state_result1 = true
		else
			state_result1 = false
		end
		if not state_result1 then
			state_result1 = -135
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				state_result1 = 135
				return state_result1 <= ceiled
			end
			if ceiled <= state_result1 or INLINED_3() then
				state_result1 = var125_upvw
				if state_result1 then
					state_result1 = FrontDash_upvr
					state_result1()
				end
			end
			state_result1 = -45
			if state_result1 < ceiled then
				state_result1 = 45
				if ceiled < state_result1 then
					state_result1 = var125_upvw
					if state_result1 then
						state_result1 = BackDash_upvr
						state_result1()
					end
				end
			end
			state_result1 = 45
			if state_result1 < ceiled then
				state_result1 = 135
				if ceiled < state_result1 then
					state_result1 = var126_upvw
					if state_result1 then
						state_result1 = RightDash_upvr
						state_result1()
					end
				end
			end
			state_result1 = -45
			if ceiled < state_result1 then
				state_result1 = -135
				if state_result1 < ceiled then
					state_result1 = var126_upvw
					if state_result1 then
						state_result1 = LeftDash_upvr
						state_result1()
					end
				end
			end
		end
	end
end)
