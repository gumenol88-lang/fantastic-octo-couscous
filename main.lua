local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "ZXT_KeySystem"

local Main = Instance.new("Frame", ScreenGui)
Main.Size = UDim2.new(0, 280, 0, 180)
Main.Position = UDim2.new(0.33, 0, 0.3, 0)
Main.BackgroundColor3 = Color3.fromRGB(10, 10, 25)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 14)

local Title = Instance.new("TextLabel", Main)
Title.Size = UDim2.new(1, 0, 0, 35)
Title.BackgroundTransparency = 1
Title.Text = "ZXTY VIP KEY"
Title.TextColor3 = Color3.fromRGB(0, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16

local KeyBox = Instance.new("TextBox", Main)
KeyBox.Size = UDim2.new(0.85, 0, 0, 35)
KeyBox.Position = UDim2.new(0.075, 0, 0, 55)
KeyBox.PlaceholderText = "Enter Key..."
KeyBox.BackgroundColor3 = Color3.fromRGB(20, 20, 40)
KeyBox.TextColor3 = Color3.fromRGB(0, 255, 255)
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 14
KeyBox.ClearTextOnFocus = true
Instance.new("UICorner", KeyBox).CornerRadius = UDim.new(0, 8)

local Status = Instance.new("TextLabel", Main)
Status.Size = UDim2.new(1, 0, 0, 20)
Status.Position = UDim2.new(0, 0, 0, 95)
Status.BackgroundTransparency = 1
Status.Text = ""
Status.TextColor3 = Color3.fromRGB(255, 80, 80)
Status.Font = Enum.Font.Gotham
Status.TextSize = 12

local LoadBtn = Instance.new("TextButton", Main)
LoadBtn.Size = UDim2.new(0.85, 0, 0, 40)
LoadBtn.Position = UDim2.new(0.075, 0, 0, 120)
LoadBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 200)
LoadBtn.Text = "VERIFY & LOAD"
LoadBtn.Font = Enum.Font.GothamBold
LoadBtn.TextSize = 14
LoadBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("UICorner", LoadBtn).CornerRadius = UDim.new(0, 10)

local correctKey = "ZXTY VIP 1"

LoadBtn.MouseButton1Click:Connect(function()
    if KeyBox.Text ~= correctKey then
        Status.Text = "INVALID KEY ❌"
        Status.TextColor3 = Color3.fromRGB(255, 80, 80)
        return
    end

    ScreenGui:Destroy()
    loadstring(game:HttpGet("https://syndx-armor-script-protector.vercel.app/api/loader/e44g6tl4u4t"))()
end)
