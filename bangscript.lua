[REMINDER!]: This script is not mine! All credits to the owner!
——————————————————————————————————————————————————————————————————
-- Variables
local SimpleSexGUI = Instance.new("ScreenGui")
local FGUI = Instance.new("Frame")
local btnSex = Instance.new("TextButton")
local tbxVictim = Instance.new("TextBox")
local lblFUCKEMALL = Instance.new("TextLabel")
local lbltitle = Instance.new("TextLabel")
local Notification = Instance.new("TextLabel")
local CreditsLabel = Instance.new("TextLabel")
 
-- Estado del script
local isScriptActive = false
local animationInstance
local playerConnection
 
-- Función para buscar un jugador por su nombre real o de visualización de manera parcial
local function findPlayerByPartialName(partialName)
    partialName = partialName:lower()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Name:lower():find(partialName) or player.DisplayName:lower():find(partialName) then
            return player
        end
    end
    return nil
end
 
-- Función para realizar la acción de "fucking"
local function performFuckingAction(targetPlayer)
    local stupid = Instance.new('Animation')
    stupid.AnimationId = 'rbxassetid://148840371'
    local hummy = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    local rootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
 
    pcall(function()
        hummy.Parent.Pants:Destroy()
    end)
    pcall(function()
        hummy.Parent.Shirt:Destroy()
    end)
 
    animationInstance = hummy:LoadAnimation(stupid)
    animationInstance:Play()
    animationInstance:AdjustSpeed(10)
 
    -- Conectar la función de continuación después de la muerte del jugador local
    playerConnection = hummy.Died:Connect(function()
        isScriptActive = false
        btnSex.Text = "Let's FUCK!!"
        if animationInstance then
            animationInstance:Stop()
        end
        if playerConnection then
            playerConnection:Disconnect()
        end
    end)
 
    -- Continuar hasta que el jugador local muera
    while wait() do
        if hummy.Health > 0 and hummy.Parent.Parent ~= nil and isScriptActive then
            rootPart.CFrame = targetPlayer.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 1)  -- Ajusta los valores según tus necesidades
        else
            break
        end
    end
end
 
-- Propiedades
SimpleSexGUI.Name = "SimpleSexGUI"
SimpleSexGUI.Parent = game.CoreGui
 
FGUI.Name = "FGUI"
FGUI.Parent = SimpleSexGUI
FGUI.BackgroundColor3 = Color3.new(0, 0, 0)
FGUI.BorderSizePixel = 0
FGUI.Position = UDim2.new(0.5, -75, 0.5, -50)
FGUI.Size = UDim2.new(0, 150, 0, 100)
FGUI.Active = true
FGUI.Draggable = true
 
lbltitle.Name = "Title"
lbltitle.Parent = FGUI
lbltitle.BackgroundColor3 = Color3.new(1, 1, 1)
lbltitle.BorderSizePixel = 0
lbltitle.Position = UDim2.new(0, 0, 0, 0)
lbltitle.Size = UDim2.new(1, 0, 0, 20)
lbltitle.Font = Enum.Font.SourceSansBold
lbltitle.Text = "Fucking GUI"
lbltitle.TextColor3 = Color3.new(0, 0, 0)
lbltitle.TextSize = 14
 
btnSex.Name = "Sex"
btnSex.Parent = FGUI
btnSex.BackgroundColor3 = Color3.new(1, 1, 1)
btnSex.BorderSizePixel = 0
btnSex.Position = UDim2.new(0.05, 0, 0.25, 0)
btnSex.Size = UDim2.new(0.4, 0, 0, 20)
btnSex.Font = Enum.Font.SourceSansBold
btnSex.Text = "Let's FUCK!!"
btnSex.TextColor3 = Color3.new(0, 0, 0)
btnSex.TextSize = 12
 
tbxVictim.Name = "VictimTEXT"
tbxVictim.Parent = FGUI
tbxVictim.BackgroundColor3 = Color3.new(1, 1, 1)
tbxVictim.BorderSizePixel = 0
tbxVictim.Position = UDim2.new(0.55, 0, 0.25, 0)
tbxVictim.Size = UDim2.new(0.4, 0, 0, 20)
tbxVictim.Visible = true
tbxVictim.Active = true
tbxVictim.Draggable = false
tbxVictim.Selectable = true
tbxVictim.Font = Enum.Font.SourceSansBold
tbxVictim.Text = "[NAME]"
tbxVictim.TextColor3 = Color3.new(0, 0, 0)
tbxVictim.TextSize = 12
 
lblFUCKEMALL.Name = "FUCKEMALL"
lblFUCKEMALL.Parent = FGUI
lblFUCKEMALL.BackgroundColor3 = Color3.new(1, 1, 1)
lblFUCKEMALL.BorderSizePixel = 0
lblFUCKEMALL.Position = UDim2.new(0.05, 0, 0.75, 0)
lblFUCKEMALL.Size = UDim2.new(0.9, 0, 0, 20)
lblFUCKEMALL.Font = Enum.Font.SourceSansBold
lblFUCKEMALL.Text = "FUCK AND FUCK"
lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0)
lblFUCKEMALL.TextSize = 12
 
-- Nueva etiqueta para la notificación
Notification.Name = "Notification"
Notification.Parent = FGUI
Notification.BackgroundColor3 = Color3.new(1, 0, 0)
Notification.BorderSizePixel = 0
Notification.Position = UDim2.new(0.5, -75, 0.5, -50)
Notification.Size = UDim2.new(0, 150, 0, 20)
Notification.Font = Enum.Font.SourceSansBold
Notification.Text = "Player not found"
Notification.TextColor3 = Color3.new(1, 1, 1)
Notification.TextSize = 12
Notification.Visible = false  -- La notificación comienza invisible
 
-- Nueva etiqueta para tus créditos
CreditsLabel.Name = "CreditsLabel"
CreditsLabel.Parent = FGUI
CreditsLabel.BackgroundColor3 = Color3.new(0, 0, 0)
CreditsLabel.BorderSizePixel = 0
CreditsLabel.Position = UDim2.new(0, 10, 0.5, 0)
CreditsLabel.Size = UDim2.new(1, -20, 0, 19)
CreditsLabel.Font = Enum.Font.SourceSansBold
CreditsLabel.Text = "Updated By alexis.isback"
CreditsLabel.TextColor3 = Color3.new(1, 1, 1)
CreditsLabel.TextSize = 12
 
-- Variables adicionales para el arrastre
local isDragging = false
local offset = Vector2.new()
 
-- Función para manejar el inicio del arrastre
local function dragStarted(input)
    isDragging = true
    offset = FGUI.Position - UDim2.new(0, input.Position.X, 0, input.Position.Y)
end
 
-- Función para manejar el movimiento durante el arrastre
local function dragging(input)
    if isDragging then
        local newPosition = UDim2.new(0, input.Position.X, 0, input.Position.Y) + offset
        FGUI.Position = newPosition
    end
end
 
-- Función para manejar el final del arrastre
local function dragEnded()
    isDragging = false
end
 
-- Conectar eventos de arrastre
FGUI.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragStarted(input)
    end
end)
 
FGUI.InputChanged:Connect(function(input)
    dragging(input)
end)
 
FGUI.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragEnded()
    end
end)
 
-- Función para mostrar la notificación de jugador no encontrado
local function showPlayerNotFoundError()
    Notification.Text = "Player not found"
    Notification.Visible = true
 
    -- Animación para desvanecer la notificación después de 2 segundos
    wait(2)
    Notification.Visible = false
end
 
-- Scripts
btnSex.MouseButton1Click:Connect(function()
    if isScriptActive then
        -- Desactivar el script y detener la animación
        isScriptActive = false
        btnSex.Text = "Let's FUCK!!"
        if animationInstance then
            animationInstance:Stop()
        end
        if playerConnection then
            playerConnection:Disconnect()
        end
    else
        -- Activar el script y comenzar la animación
        isScriptActive = true
        btnSex.Text = "Stop Fucking"
 
        -- Código para activar el script y la animación
        local playerNamePartial = tbxVictim.Text
        local player = findPlayerByPartialName(playerNamePartial)
 
        if player then
            performFuckingAction(player)
        else
            -- Mostrar notificación de jugador no encontrado
            showPlayerNotFoundError()
            return
        end
    end
end)
