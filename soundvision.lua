local p = game.Players.LocalPlayer

local function make()
    local pg = p:FindFirstChild("PlayerGui")
    if not pg or pg:FindFirstChild("Z") then return end
    
    local sg = Instance.new("ScreenGui", pg)
    sg.Name = "Z"
    
    -- Mycket större ram (220x110)
    local f = Instance.new("Frame", sg)
    f.Size, f.Active, f.Draggable = UDim2.new(0, 220, 0, 110), true, true
    f.BackgroundColor3 = Color3.new(0, 0, 0)
    f.Position = UDim2.new(0.5, -110, 0.5, -55)
    f.BackgroundTransparency = 0.2 -- Lite genomskinlig så man ser genom ramen
    Instance.new("UICorner", f).CornerRadius = UDim.new(0, 15)
    
    -- Riktigt stor LEAVE-knapp
    local lB = Instance.new("TextButton", f)
    lB.Size = UDim2.new(0, 190, 0, 80)
    lB.Position = UDim2.new(0, 15, 0, 15)
    lB.Text = "LEAVE"
    lB.Font = Enum.Font.SourceSansBold
    lB.TextSize = 40 -- Riktigt stor text
    lB.BackgroundColor3 = Color3.new(0.8, 0, 0)
    lB.TextColor3 = Color3.new(1, 1, 1)
    Instance.new("UICorner", lB).CornerRadius = UDim.new(0, 12)
    
    -- Lägger till en snygg vit kant runt knappen
    local stroke = Instance.new("UIStroke", lB)
    stroke.Thickness = 2
    stroke.Color = Color3.new(1, 1, 1)
    
    -- Kick-funktionen
    lB.MouseButton1Click:Connect(function()
        p:Kick("Kicked by SoundVision")
    end)
end

task.spawn(function()
    while task.wait(2) do
        make()
    end
end)
