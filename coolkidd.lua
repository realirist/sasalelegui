local hint = Instance.new("Hint")
local message = Instance.new("Message")
local skybox = Instance.new("Sky")
skybox.Name = "team c00lkidd, join today!"
hint.Name = "team c00lkidd, join today!"
message.Name = "team c00lkidd, join today!"


local coolkiddimage = "http://www.roblox.com/asset/?id=15198649455"
skybox.SkyboxBk = coolkiddimage
skybox.SkyboxDn = coolkiddimage
skybox.SkyboxFt = coolkiddimage
skybox.SkyboxLf = coolkiddimage
skybox.SkyboxRt = coolkiddimage
skybox.SkyboxUp = coolkiddimage

for _, v in game:GetService("Lighting"):GetDescendants() do
	if v:IsA("Sky") then
		v:Destroy()
	end
end
skybox.Parent = game:GetService("Lighting")



hint.Text = "team c00lkidd, join today!"
message.Text = "team c00lkidd, join today!"

hint.Parent = game.Workspace
message.Parent = game.Workspace
coroutine.wrap(function()
	task.wait(5)
	message:Destroy()
	task.wait(120)
	game:GetService("Players").LocalPlayer:Kick("team c00lkidd, join today!")
end)()
