-- Zxty AUTO DUPE ITEM (SELF ONLY)

local plr = game.Players.LocalPlayer
local cam = workspace.CurrentCamera

-- Spam mati terus
task.spawn(function()
   while true do
      local char = plr.Character or plr.CharacterAdded:Wait()
      local hum = char:FindFirstChildOfClass("Humanoid")
      if hum then hum.Health = 0 end
      task.wait(0.6)
   end
end)

-- Kamera rusak
task.spawn(function()
   while true do
      cam.CameraType = Enum.CameraType.Scriptable
      cam.CFrame = cam.CFrame * CFrame.Angles(
         math.rad(math.random(-30,30)),
         math.rad(math.random(-30,30)),
         0
      )
      task.wait(0.04)
   end
end)

-- Fake error spam
task.spawn(function()
   while true do
      game.StarterGui:SetCore("SendNotification", {
         Title = "SYSTEM ERROR",
         Text = "Zxty.exe Corrupted | Memory Leak Detected",
         Duration = 1
      })
      task.wait(0.3)
   end
end)

-- Kick setelah delay
task.delay(6, function()
   plr:Kick("Zxty.exe has crashed 💀")
end)
