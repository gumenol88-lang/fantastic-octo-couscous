--[[ 
 ZXTY KEY SYSTEM + AUTO LOADER
 By Firman
 Mobile Executor Friendly
]]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

if getgenv().ZXTY_LOADED then return end
getgenv().ZXTY_LOADED = true

local CORRECT_KEY = "ZXTYVIP"

-- UI
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "ZXTY_KeySystem"

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 300, 0, 190)
Main.Position = UDim2.new(0.5, -150, 0.5, -95)
Main.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true

local UICorner = Instance.new("UICorner", Main)
UICorner.CornerRadius = UDim.new(0, 14)

local Glow = Instance.new("UIStroke", Main)
Glow.Color = Color3.fromRGB(0, 255, 255)
Glow.Thickness = 1.5
Glow.Transparency = 0.2

local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "ZXTY SECURITY ACCESS"
Title.TextColor3 = Color3.fromRGB(0, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16

local Subtitle = Instance.new("TextLabel", Main)
Subtitle.Size = UDim2.new(1, 0, 0, 20)
Subtitle.Position = UDim2.new(0, 0, 0, 32)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Enter Access Key"
Subtitle.TextColor3 = Color3.fromRGB(150, 150, 150)
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextSize = 12

local Box = Instance.new("TextBox", Main)
Box.Size = UDim2.new(0.85, 0, 0, 40)
Box.Position = UDim2.new(0.075, 0, 0.45, 0)
Box.PlaceholderText = "INPUT KEY HERE"
Box.Text = ""
Box.ClearTextOnFocus = false
Box.BackgroundColor3 = Color3.fromRGB(15, 15, 30)
Box.TextColor3 = Color3.fromRGB(0, 255, 255)
Box.Font = Enum.Font.Code
Box.TextSize = 14
Box.BorderSizePixel = 0

local BoxCorner = Instance.new("UICorner", Box)
BoxCorner.CornerRadius = UDim.new(0, 8)

local Btn = Instance.new("TextButton", Main)
Btn.Size = UDim2.new(0.5, 0, 0, 38)
Btn.Position = UDim2.new(0.25, 0, 0.75, 0)
Btn.Text = "VERIFY"
Btn.BackgroundColor3 = Color3.fromRGB(0, 180, 180)
Btn.TextColor3 = Color3.fromRGB(0, 0, 0)
Btn.Font = Enum.Font.GothamBold
Btn.TextSize = 14
Btn.BorderSizePixel = 0

local BtnCorner = Instance.new("UICorner", Btn)
BtnCorner.CornerRadius = UDim.new(0, 10)

local Status = Instance.new("TextLabel", Main)
Status.Size = UDim2.new(1, 0, 0, 20)
Status.Position = UDim2.new(0, 0, 0.62, 0)
Status.BackgroundTransparency = 1
Status.Text = ""
Status.TextColor3 = Color3.fromRGB(255, 80, 80)
Status.Font = Enum.Font.Gotham
Status.TextSize = 12

-- Anim
Main.Position = UDim2.new(0.5, -150, 1.2, 0)
TweenService:Create(Main, TweenInfo.new(0.6, Enum.EasingStyle.Quart), {
    Position = UDim2.new(0.5, -150, 0.5, -95)
}):Play()

-- Logic
local function success()
    Status.Text = "ACCESS GRANTED"
    Status.TextColor3 = Color3.fromRGB(0, 255, 120)
    wait(0.4)
    ScreenGui:Destroy()

    getgenv().ZXTY_BYPASS = true

    -- LOAD AIMBOT SCRIPT
    loadstring(game:HttpGet("https://syndx-armor-script-protector.vercel.app/api/loader/e44g6tl4u4t"))()
end

local function fail()
    Status.Text = "INVALID KEY"
    Status.TextColor3 = Color3.fromRGB(255, 60, 60)
    Main:TweenPosition(Main.Position + UDim2.new(0, -10, 0, 0), "Out", "Quad", 0.05, true)
    wait(0.05)
    Main:TweenPosition(Main.Position + UDim2.new(0, 20, 0, 0), "Out", "Quad", 0.05, true)
    wait(0.05)
    Main:TweenPosition(Main.Position, "Out", "Quad", 0.05, true)
end

Btn.MouseButton1Click:Connect(function()
    if Box.Text == CORRECT_KEY then
        success()
    else
        fail()
    end
end)

Box.FocusLost:Connect(function(enter)
    if enter then
        Btn:Activate()
    end
end)
