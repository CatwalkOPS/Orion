-- Player ESP Script
local function createESP(player)
     local espBox = Instance.new("BillboardGui")
     espBox.Adornee = player.Character.Head
     espBox.Size = UDim2.new(0, 200, 0, 50)
     espBox.StudsOffset = Vector3.new(0, 2, 0)
     espBox.Parent = player.Character.Head
     espBox.AlwaysOnTop = true
     espBox.Enabled = true
 
     local textLabel = Instance.new("TextLabel")
     textLabel.Text = player.Name
     textLabel.Size = UDim2.new(1, 0, 1, 0)
     textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
     textLabel.BackgroundTransparency = 1
     textLabel.TextStrokeTransparency = 0.8
     textLabel.TextSize = 18
     textLabel.Parent = espBox
 end
 
 game.Players.PlayerAdded:Connect(function(player)
     player.CharacterAdded:Connect(function(character)
         if character:FindFirstChild("Head") then
             createESP(player)
         end
     end)
 end)
 
 game.Players.PlayerRemoving:Connect(function(player)
     -- Aqui você pode remover o ESP se necessário
 end)
 