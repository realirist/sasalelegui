-- Gui to Lua
-- Version: 3.2

-- Instances:

local YOUAREANIDIOT = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local _1 = Instance.new("ImageLabel")
local text = Instance.new("TextLabel")
local _2 = Instance.new("ImageLabel")
local _3 = Instance.new("ImageLabel")

--Properties:

YOUAREANIDIOT.Name = "YOUAREANIDIOT"
YOUAREANIDIOT.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
YOUAREANIDIOT.ResetOnSpawn = false

Frame.Parent = YOUAREANIDIOT
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.287452281, 0, 0.128600821, 0)
Frame.Size = UDim2.new(0, 311, 0, 169)

_1.Name = "1"
_1.Parent = Frame
_1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_1.BackgroundTransparency = 1.000
_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
_1.BorderSizePixel = 0
_1.Position = UDim2.new(0.176848873, 0, 0.1875, 0)
_1.Size = UDim2.new(0, 48, 0, 48)
_1.Image = "rbxassetid://10794668488"

text.Name = "text"
text.Parent = Frame
text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
text.BorderColor3 = Color3.fromRGB(0, 0, 0)
text.BorderSizePixel = 0
text.Position = UDim2.new(0.176848873, 0, 0.581250012, 0)
text.Size = UDim2.new(0, 200, 0, 50)
text.Font = Enum.Font.Bodoni
text.Text = "you are an idiot"
text.TextColor3 = Color3.fromRGB(0, 0, 0)
text.TextScaled = true
text.TextSize = 14.000
text.TextWrapped = true

_2.Name = "2"
_2.Parent = Frame
_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_2.BackgroundTransparency = 1.000
_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
_2.BorderSizePixel = 0
_2.Position = UDim2.new(0.421221852, 0, 0.1875, 0)
_2.Size = UDim2.new(0, 48, 0, 48)
_2.Image = "rbxassetid://10794668488"

_3.Name = "3"
_3.Parent = Frame
_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_3.BackgroundTransparency = 1.000
_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
_3.BorderSizePixel = 0
_3.Position = UDim2.new(0.665594876, 0, 0.1875, 0)
_3.Size = UDim2.new(0, 48, 0, 48)
_3.Image = "rbxassetid://10794668488"

-- Scripts:

local function RWJLSM_fake_script() -- Frame.YOUAREANIDIOT 
	local script = Instance.new('LocalScript', Frame)

	local frame = script.Parent
	local sound = Instance.new('Sound')
	sound.Looped = true
	sound.Volume = 10
	sound.SoundId = "rbxassetid://7266001792"
	sound.Name = "YOUAREANIDIOT"
	sound.Parent = game:GetService('SoundService')
	sound:Play()
	while task.wait() do
		local function teleport()
			local randomx = math.random(0, game:GetService('Workspace').CurrentCamera.ViewportSize.X)
			local randomy = math.random(0, game:GetService('Workspace').CurrentCamera.ViewportSize.Y+5)
			frame.Position = UDim2.new(0, randomx, 0, randomy)
		end
		teleport()
	end
end
coroutine.wrap(RWJLSM_fake_script)()
local function NATZXHU_fake_script() -- YOUAREANIDIOT.MULTIPLIER 
	local script = Instance.new('LocalScript', YOUAREANIDIOT)

	local baseFrame = script.Parent.Frame
	while task.wait(2) do
		local clone = baseFrame:Clone()
		clone.Parent = baseFrame.Parent
		clone.Position = UDim2.new(0.287, 0, 0.129, 0)
		local frame = clone
		local sound = Instance.new('Sound')
		sound.Looped = true
		sound.Volume = 10
		sound.SoundId = "rbxassetid://7266001792"
		sound.Name = "YOUAREANIDIOT"
		sound.Parent = game:GetService('SoundService')
		sound:Play()
		coroutine.wrap(function()
			while task.wait() do
				local randomx = math.random(0, script.Parent.AbsoluteSize.X)
				local randomy = math.random(0, script.Parent.AbsoluteSize.Y)
				frame.Position = UDim2.new(0, randomx, 0, randomy)
			end
		end)()
		
	end
end
coroutine.wrap(NATZXHU_fake_script)()
