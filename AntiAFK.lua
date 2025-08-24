task.wait(0.5)

-- Создание GUI элементов
local screenGui = Instance.new("ScreenGui")
local titleLabel = Instance.new("TextLabel")
local mainFrame = Instance.new("Frame")
local creditLabel = Instance.new("TextLabel")
local statusLabel = Instance.new("TextLabel")

-- Настройка основного ScreenGui
screenGui.Parent = game.CoreGui
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Настройка заголовка (перетаскиваемый)
titleLabel.Parent = screenGui
titleLabel.Active = true
titleLabel.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
titleLabel.Draggable = true
titleLabel.Position = UDim2.new(0.698610067, 0, 0.098096624, 0)
titleLabel.Size = UDim2.new(0, 370, 0, 52)
titleLabel.Font = Enum.Font.SourceSansSemibold
titleLabel.Text = "Anti AFK Script"
titleLabel.TextColor3 = Color3.new(0, 1, 1)
titleLabel.TextSize = 22

-- Настройка основного фрейма
mainFrame.Parent = titleLabel
mainFrame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
mainFrame.Position = UDim2.new(0, 0, 1.0192306, 0)
mainFrame.Size = UDim2.new(0, 370, 0, 107)

-- Настройка лейбла статуса
statusLabel.Parent = mainFrame
statusLabel.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
statusLabel.Position = UDim2.new(0, 0, 0.16, -17)
statusLabel.Size = UDim2.new(0, 370, 0, 107)
statusLabel.Font = Enum.Font.ArialBold
statusLabel.Text = "Статус: Активен"
statusLabel.TextColor3 = Color3.new(0, 1, 1)
statusLabel.TextSize = 20

-- Основная логика Anti AFK
local virtualUser = game:GetService('VirtualUser')

-- Подключение к событию простоя игрока
game:GetService('Players').LocalPlayer.Idled:Connect(function()
    -- Имитация активности пользователя
    virtualUser:CaptureController()
    virtualUser:ClickButton2(Vector2.new())
    
    -- Обновление статуса
    statusLabel.Text = "Roblox пытался кикнуть вас"
    wait(2)
    statusLabel.Text = "Статус: Активен"
end)
