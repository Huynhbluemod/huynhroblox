--[[
 /$$$$$$$                      /$$                 /$$$$$$$$                               
| $$__  $$                    |__/                |__  $$__/                               
| $$  \ $$  /$$$$$$   /$$$$$$$ /$$  /$$$$$$          | $$  /$$$$$$   /$$$$$$  /$$$$$$/$$$$ 
| $$$$$$$/ /$$__  $$ /$$_____/| $$ /$$__  $$         | $$ /$$__  $$ |____  $$| $$_  $$_  $$
| $$__  $$| $$  \ $$|  $$$$$$ | $$| $$$$$$$$         | $$| $$$$$$$$  /$$$$$$$| $$ \ $$ \ $$
| $$  \ $$| $$  | $$ \____  $$| $$| $$_____/         | $$| $$_____/ /$$__  $$| $$ | $$ | $$
| $$  | $$|  $$$$$$/ /$$$$$$$/| $$|  $$$$$$$         | $$|  $$$$$$$|  $$$$$$$| $$ | $$ | $$
|__/  |__/ \______/ |_______/ |__/ \_______/         |__/ \_______/ \_______/|__/ |__/ |__/     

[+] Rosie Team Cảm Ơn Bạn Đã Tin Tưởng Và Sử Dụng Dịch Vụ Của Chúng Tôi, Nếu Thấy Hữu Ít Hãy Chia Sẻ Cho Bạn Bè Của Bạn !!
[+] Không Được Share Hay Crack Mã Nguồn Này Cho Ai! Nếu Không Bạn Sẽ Bị Ban IP Khỏi Website Vĩnh Viễn!
[+] Chúng Tôi Không Nhận Hỗ Trợ Những Mã Nguồn Miễn Phí, Xin Đừng Bảo Vì Sao. Tạo Ticket Hỗ Trợ Của Website Tại: https://rosieteam.net/dash/ticket
[+] Nếu Bạn Edit Source Và Up Web Share Nhớ Obfuscate Script. Nếu Bạn Có Tiền Thì Sử Dụng: Lura.Ph, Luarmor.Net | Nếu Bạn Không Có Tiền Thì Dùng: luaobfuscate.com, MoonSec, 77Fuscate,... Nhé!
]]
  
getgenv().config = { 
  ["gui"] = {
    ["show"] = true,
    ["background"] = {
      ["big"] = {
        ["id"] = "rblxassetid://000",
        ["transparent"] = 1
      },
      ["mainbg"] = {
        ["id"] = "...",
        ["transparent"] = 50
      }
    }
  },
  ["game"] = {
    ["resettp"] = true,
    ["team"] = "Pirates", -- "p/m"
    ["safemode"] = true,
    ["buso"] = true,
    ["ken"] = true,
    ["fps"] = {
      ["screen"] = "white", -- black | white | normal
      ["fpsboost"] = true 
    },
    ["character"] = {
      ["invisible"] = true,
    },
    ["skipspecialfruit"] = true,
    ["lock"] = {
      ["value"] = "3000001", -- cant 
    },
    ["weapon"] = {
      ["Melee"] = {
        ["Z"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["X"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["C"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
      },
      ["Blox Fruit"] = {
        
        ["Z"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["X"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["C"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["V"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["F"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
      },
      ["Gun"] = {
        
        ["Z"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["X"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
      },
      ["Sword"] = {
        
        ["Z"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
        ["X"] = {
          ["hold"] = 0.3,
          ["use"] = true
        },
      },
    },
  }, 
  ["webhook"] = {
    ["type"] = "embed", -- embed | text 
    ["image"] = "nil", 
    ["request_type"] = "3rd", -- 
    ["3rd_hook"] = "nil"
  },
}
function spam()

for i, v in pairs(getgenv().config["game"]["weapon"]) do 
print(i)
    
    
    equip(i)
        for i2, v2 in pairs(v) do 
      print('i2: '..i2)    
           if v2 and v2.use then 
           getgenv().down = true
wait()
            for a=0,(v2.hold * 10) do  

              keydown(i2) 
              a = a + 1
              
          end 
          getgenv().down = false 
            wait(1)
        end
      end
    
    end
  end 
  function equip(tooltip)
   local player = game.Players.LocalPlayer
   local character = player.Character or player.CharacterAdded:Wait()

   for _, item in pairs(player.Backpack:GetChildren()) do
      if item:IsA("Tool") and item.ToolTip == tooltip then
         local humanoid = character:FindFirstChildOfClass("Humanoid")
         if humanoid and not humanoid:IsDescendantOf(item) then
            humanoid:UnequipTools()
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
            return true
         end
      end
   end
   
   return false
end
function keydown(use) -- Send key to client

    game:GetService("VirtualInputManager"):SendKeyEvent(true,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)

    wait(.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
end 

local EngUi = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")
local pfp
local user
local tag
local userinfo = {}

if getgenv().Key == nil or getgenv().id == nil then
    getgenv().id = "FUCKUBITCH"
    getgenv().Key = "FUCKUBITCH"
end
if game.CoreGui:FindFirstChild(getgenv().Key .."," .. getgenv().id) then
   game.CoreGui:FindFirstChild(getgenv().Key .."," .. getgenv().id):Destroy()
end
_G.UI_NAME__VNKVUTK = (getgenv().Key .."," .. getgenv().id)
pcall(function()
   userinfo = HttpService:JSONDecode(readfile("Radient.txt"));
end)

pfp = userinfo["pfp"] or "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"
user =  userinfo["user"] or game.Players.LocalPlayer.Name
tag = userinfo["tag"] or tostring(math.random(1,10))

local function SaveInfo()
   userinfo["pfp"] = pfp
   userinfo["user"] = user
   userinfo["tag"] = tag
   writefile("Radient.txt", HttpService:JSONEncode(userinfo));
end
local function MakeDraggable(topbarobject, object)
   local Dragging = nil
   local DragInput = nil
   local DragStart = nil
   local StartPosition = nil

   local function Update(input)
      local Delta = input.Position - DragStart
      local pos =
         UDim2.new(StartPosition.X.Scale,StartPosition.X.Offset + Delta.X,StartPosition.Y.Scale,StartPosition.Y.Offset + Delta.Y)
      local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
      Tween:Play()
   end

   topbarobject.InputBegan:Connect(
      function(input)
         if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Dragging = true
            DragStart = input.Position
            StartPosition = object.Position

            input.Changed:Connect(function()
               if input.UserInputState == Enum.UserInputState.End then
                  Dragging = false
               end
            end)
         end
      end)

   topbarobject.InputChanged:Connect(
      function(input)
         if
            input.UserInputType == Enum.UserInputType.MouseMovement or
               input.UserInputType == Enum.UserInputType.Touch
         then
            DragInput = input
         end
      end)

   UserInputService.InputChanged:Connect(
      function(input)
         if input == DragInput and Dragging then
            Update(input)
         end
      end)
end

local RadientPaidSC = Instance.new("ScreenGui")
RadientPaidSC.Name = getgenv().Key .."," .. getgenv().id
RadientPaidSC.Parent = game.CoreGui
RadientPaidSC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
   if inputObject.KeyCode == Enum.KeyCode.RightControl then
      wait()
      RadientPaidSC.Enabled = not RadientPaidSC.Enabled
   end
end)

function EngUi:Window(text,maincolor)

   local currentservertoggled = ""
   local minimized = false
   local fs = false
   local settingsopened = false
   local MainFrame = Instance.new("Frame")
   local TopFrame = Instance.new("Frame")
   local Title = Instance.new("TextLabel")
   local CloseBtn = Instance.new("TextButton")
   local CloseIcon = Instance.new("ImageLabel")
   local MinimizeBtn = Instance.new("TextButton")
   local MinimizeIcon = Instance.new("ImageLabel")
   local ServersHolder = Instance.new("Folder")
   local Userpad = Instance.new("Frame")
   local UserIcon = Instance.new("Frame")
   local UserIconCorner = Instance.new("UICorner")
   local Corner_1 = Instance.new("UICorner")
   local UserImage = Instance.new("ImageLabel")
   local UserCircleImage = Instance.new("ImageLabel")
   local UserName = Instance.new("TextLabel")
   local UserTag = Instance.new("TextLabel")
   local ServersHoldFrame = Instance.new("Frame")
   local ServersHold = Instance.new("ScrollingFrame")
   local ServersHoldLayout = Instance.new("UIListLayout")
   local ServersHoldPadding = Instance.new("UIPadding")
   local TopFrameHolder = Instance.new("Frame")
   local TopFramess = Instance.new("Frame")

   MainFrame.Name = "MainFrame"
   MainFrame.Parent = RadientPaidSC
   MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
   MainFrame.BackgroundColor3 = Color3.fromRGB(15,15,15)
   MainFrame.BackgroundTransparency = 1
   MainFrame.BorderSizePixel = 0
   MainFrame.ClipsDescendants = true
   MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
   MainFrame.Size = UDim2.new(0, 611, 0, 396)

   Corner_1.CornerRadius = UDim.new(0, 7)
   Corner_1.Name = "UserIconCorner"
   Corner_1.Parent = MainFrame

   TopFrame.Name = "TopFrame"
   TopFrame.Parent = MainFrame
   TopFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
   TopFrame.BackgroundTransparency = 1
   TopFrame.BorderSizePixel = 0
   TopFrame.Position = UDim2.new(-0.000658480625, 0, 0, 0)
   TopFrame.Size = UDim2.new(0, 681, 0, 22)

   TopFramess.Name = "TopFramess"
   TopFramess.Parent = TopFrame
   TopFramess.BackgroundColor3 = Color3.fromRGB(255,255,255)
   TopFramess.BackgroundTransparency = 1
   TopFramess.BorderSizePixel = 0
   TopFramess.ZIndex = 99
   TopFramess.Position = UDim2.new(-0.2, 0, 1.3, 0)
   TopFramess.Size = UDim2.new(0, 681, 0, 22)

   TopFrameHolder.Name = "TopFrameHolder"
   TopFrameHolder.Parent = TopFrame
   TopFrameHolder.BackgroundColor3 = Color3.fromRGB(20,20,20)
   TopFrameHolder.BackgroundTransparency = 1.000
   TopFrameHolder.BorderSizePixel = 0
   TopFrameHolder.Position = UDim2.new(-0.000658480625, 0, 0, 0)
   TopFrameHolder.Size = UDim2.new(0, 20, 0, 22)


   Title.Name = "Title"
   Title.Parent = TopFrame
   Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   Title.BackgroundTransparency = 1.000
   Title.Position = UDim2.new(0.0102790017, 0, 0, 0)
   Title.Size = UDim2.new(0, 192, 0, 23)
   Title.Font = Enum.Font.GothamBold
   Title.Text = text
   Title.TextTransparency = 0
   Title.TextColor3 = Color3.fromRGB(255,255,255)
   Title.TextSize = 13.000
   Title.TextXAlignment = Enum.TextXAlignment.Left

   CloseBtn.Name = "CloseBtn"
   CloseBtn.Parent = TopFrame
   CloseBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
   CloseBtn.BackgroundTransparency = 1
   CloseBtn.Position = UDim2.new(0.85, 0, 1.3, 0)
   CloseBtn.Size = UDim2.new(0, 28, 0, 22)
   CloseBtn.Font = Enum.Font.Gotham
   CloseBtn.Text = ""
   CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
   CloseBtn.TextSize = 14.000
   CloseBtn.BorderSizePixel = 0
   CloseBtn.AutoButtonColor = false

--[[   CloseIcon.Name = "CloseIcon"
   CloseIcon.Parent = CloseBtn
   CloseIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   CloseIcon.BackgroundTransparency = 1.000
   CloseIcon.Position = UDim2.new(0.2, 0, 0.128935531, 0)
   CloseIcon.Size = UDim2.new(0, 17, 0, 17)
   CloseIcon.Image = "http://www.roblox.com/asset/?id=6035047409"
   CloseIcon.ImageColor3 = Color3.fromRGB(220, 221, 222)

   MinimizeBtn.Name = "MinimizeButton"
   MinimizeBtn.Parent = TopFrame
   MinimizeBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
   MinimizeBtn.BackgroundTransparency = 1
   MinimizeBtn.Position = UDim2.new(0.8, 0, 1.3, 0)
   MinimizeBtn.Size = UDim2.new(0, 28, 0, 22)
   MinimizeBtn.Font = Enum.Font.Gotham
   MinimizeBtn.Text = ""
   MinimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
   MinimizeBtn.TextSize = 14.000
   MinimizeBtn.BorderSizePixel = 0
   MinimizeBtn.AutoButtonColor = false]]

   MinimizeIcon.Name = "MinimizeLabel"
   MinimizeIcon.Parent = MinimizeBtn
   MinimizeIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   MinimizeIcon.BackgroundTransparency = 1.000
   MinimizeIcon.Position = UDim2.new(0.2, 0, 0.128935531, 0)
   MinimizeIcon.Size = UDim2.new(0, 17, 0, 17)
   MinimizeIcon.Image = "http://www.roblox.com/asset/?id=6035067836"
   MinimizeIcon.ImageColor3 = Color3.fromRGB(220, 221, 222)

   ServersHolder.Name = "ServersHolder"
   ServersHolder.Parent = TopFrameHolder

   Userpad.Name = "Userpad"
   Userpad.Parent = TopFrameHolder
   Userpad.BackgroundColor3 = Color3.fromRGB(20,20,20)
   Userpad.BorderSizePixel = 0
   Userpad.Position = UDim2.new(0.106243297, 0, 15.9807148, 0)
   Userpad.Size = UDim2.new(0, 179, 0, 43)

   UserIcon.Name = "UserIcon"
   UserIcon.Parent = Userpad
   UserIcon.BackgroundColor3 = Color3.fromRGB(20,20,20)
   UserIcon.BorderSizePixel = 0
   UserIcon.Position = UDim2.new(0.0340000018, 0, 0.123999998, 0)
   UserIcon.Size = UDim2.new(0, 32, 0, 32)

   UserIconCorner.CornerRadius = UDim.new(1, 8)
   UserIconCorner.Name = "UserIconCorner"
   UserIconCorner.Parent = UserIcon

   UserImage.Name = "UserImage"
   UserImage.Parent = UserIcon
   UserImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserImage.BackgroundTransparency = 1.000
   UserImage.Size = UDim2.new(0, 32, 0, 32)
   UserImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"--"http://www.roblox.com/asset/?id=3025004395"

   UserCircleImage.Name = "UserImage"
   UserCircleImage.Parent = UserImage
   UserCircleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserCircleImage.BackgroundTransparency = 1.000
   UserCircleImage.Size = UDim2.new(0, 32, 0, 32)
   UserCircleImage.Image = "rbxassetid://4031889928"
   UserCircleImage.ImageColor3 = Color3.fromRGB(20,20,20)

   UserName.Name = "UserName"
   UserName.Parent = Userpad
   UserName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserName.BackgroundTransparency = 1.000
   UserName.BorderSizePixel = 0
   UserName.Position = UDim2.new(0.230000004, 0, 0.115999997, 0)
   UserName.Size = UDim2.new(0, 98, 0, 17)
   UserName.Font = Enum.Font.GothamSemibold
   UserName.TextSize = 13.000
   UserName.TextTransparency = 1
   UserName.TextXAlignment = Enum.TextXAlignment.Left
   UserName.ClipsDescendants = true

   UserTag.Name = "UserTag"
   UserTag.Parent = Userpad
   UserTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserTag.BackgroundTransparency = 1.000
   UserTag.BorderSizePixel = 0
   UserTag.Position = UDim2.new(0.230000004, 0, 0.275000013, 0)
   UserTag.Size = UDim2.new(0, 95, 0, 17)
   UserTag.Font = Enum.Font.GothamBold
   UserTag.TextColor3 = Color3.fromRGB(255, 178, 102)
   UserTag.TextSize = 13.000
   UserTag.TextTransparency = 0
   UserTag.TextXAlignment = Enum.TextXAlignment.Left

   UserName.Text = game.Players.localPlayer.Name
   UserTag.Text = game.Players.localPlayer.DisplayName

   ServersHoldFrame.Name = "ServersHoldFrame"
   ServersHoldFrame.Parent = MainFrame
   ServersHoldFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   ServersHoldFrame.BackgroundTransparency = 1.000
   ServersHoldFrame.BorderColor3 = Color3.fromRGB(20,20,20)
   ServersHoldFrame.Size = UDim2.new(0, 71, 0, 396)

   ServersHold.Name = "ServersHold"
   ServersHold.Parent = ServersHoldFrame
   ServersHold.Active = true
   ServersHold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   ServersHold.BackgroundTransparency = 1.000
   ServersHold.BorderSizePixel = 0
   ServersHold.Position = UDim2.new(-0.000359333731, 0, 0.0580808073, 0)
   ServersHold.Size = UDim2.new(0, 71, 0, 373)
   ServersHold.ScrollBarThickness = 1
   ServersHold.ScrollBarImageTransparency = 1
   ServersHold.CanvasSize = UDim2.new(0, 0, 0, 0)

   ServersHoldLayout.Name = "ServersHoldLayout"
   ServersHoldLayout.Parent = ServersHold
   ServersHoldLayout.SortOrder = Enum.SortOrder.LayoutOrder
   ServersHoldLayout.Padding = UDim.new(0, 7)

   ServersHoldPadding.Name = "ServersHoldPadding"
   ServersHoldPadding.Parent = ServersHold

   CloseBtn.MouseButton1Click:Connect(
      function()
         MainFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .5, true)
      end
   )

   CloseBtn.MouseEnter:Connect(
      function()
         CloseBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
      end
   )

   CloseBtn.MouseLeave:Connect(
      function()
         CloseBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
      end
   )

   MinimizeBtn.MouseEnter:Connect(
      function()
         MinimizeBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
      end
   )

   MinimizeBtn.MouseLeave:Connect(
      function()
         MinimizeBtn.BackgroundColor3 = Color3.fromRGB(15,15,15)
      end
   )

   MinimizeBtn.MouseButton1Click:Connect(
      function()
         if minimized == false then
            MainFrame:TweenSize(
               UDim2.new(0, 611, 0, 64),
               Enum.EasingDirection.Out,
               Enum.EasingStyle.Quart,
               .3,
               true
            )
         else
            MainFrame:TweenSize(
               UDim2.new(0, 611, 0, 396),
               Enum.EasingDirection.Out,
               Enum.EasingStyle.Quart,
               .3,
               true
            )
         end
         minimized = not minimized
      end
   )

   local SettingsOpenBtn = Instance.new("TextButton")
   local SettingsOpenBtnIco = Instance.new("ImageLabel")

   SettingsOpenBtn.Name = "SettingsOpenBtn"
   SettingsOpenBtn.Parent = Userpad
   SettingsOpenBtn.BackgroundColor3 = Color3.fromRGB(53, 56, 62)
   SettingsOpenBtn.BackgroundTransparency = 1.000
   SettingsOpenBtn.Position = UDim2.new(0.849161983, 0, 0.279069781, 0)
   SettingsOpenBtn.Size = UDim2.new(0, 0, 0, 0)
   SettingsOpenBtn.Font = Enum.Font.SourceSans
   SettingsOpenBtn.Text = ""
   SettingsOpenBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
   SettingsOpenBtn.TextSize = 14.000

   SettingsOpenBtnIco.Name = "SettingsOpenBtnIco"
   SettingsOpenBtnIco.Parent = SettingsOpenBtn
   SettingsOpenBtnIco.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
   SettingsOpenBtnIco.BackgroundTransparency = 1.000
   SettingsOpenBtnIco.Size = UDim2.new(0, 0, 0, 0)
   SettingsOpenBtnIco.ImageTransparency = 1
   SettingsOpenBtnIco.Image = "http://www.roblox.com/asset/?id=6031280882"
   SettingsOpenBtnIco.ImageColor3 = Color3.fromRGB(220, 220, 220)
   local SettingsFrame = Instance.new("Frame")
   local Settings = Instance.new("Frame")
   local SettingsHolder = Instance.new("Frame")
   local CloseSettingsBtn = Instance.new("TextButton")
   local CloseSettingsBtnCorner = Instance.new("UICorner")
   local CloseSettingsBtnCircle = Instance.new("Frame")
   local CloseSettingsBtnCircleCorner = Instance.new("UICorner")
   local CloseSettingsBtnIcon = Instance.new("ImageLabel")
   local TextLabel = Instance.new("TextLabel")
   local UserPanel = Instance.new("Frame")
   local UserSettingsPad = Instance.new("Frame")
   local UserSettingsPadCorner = Instance.new("UICorner")
   local UsernameText = Instance.new("TextLabel")
   local UserSettingsPadUserTag = Instance.new("Frame")
   local UserSettingsPadUser = Instance.new("TextLabel")
   local UserSettingsPadUserTagLayout = Instance.new("UIListLayout")
   local UserSettingsPadTag = Instance.new("TextLabel")
   local EditBtn = Instance.new("TextButton")
   local EditBtnCorner = Instance.new("UICorner")
   local UserPanelUserIcon = Instance.new("TextButton")
   local UserPanelUserImage = Instance.new("ImageLabel")
   local UserPanelUserCircle = Instance.new("ImageLabel")
   local BlackFrame = Instance.new("Frame")
   local BlackFrameCorner = Instance.new("UICorner")
   local ChangeAvatarText = Instance.new("TextLabel")
   local SearchIcoFrame = Instance.new("Frame")
   local SearchIcoFrameCorner = Instance.new("UICorner")
   local SearchIco = Instance.new("ImageLabel")
   local UserPanelUserTag = Instance.new("Frame")
   local UserPanelUser = Instance.new("TextLabel")
   local UserPanelUserTagLayout = Instance.new("UIListLayout")
   local UserPanelTag = Instance.new("TextLabel")
   local UserPanelCorner = Instance.new("UICorner")
   local LeftFrame = Instance.new("Frame")
   local MyAccountBtn = Instance.new("TextButton")
   local MyAccountBtnCorner = Instance.new("UICorner")
   local MyAccountBtnTitle = Instance.new("TextLabel")
   local SettingsTitle = Instance.new("TextLabel")
   local DiscordInfo = Instance.new("TextLabel")
   local CurrentSettingOpen = Instance.new("TextLabel")

   SettingsFrame.Name = "SettingsFrame"
   SettingsFrame.Parent = MainFrame
   SettingsFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
   SettingsFrame.BackgroundTransparency = 1.000
   SettingsFrame.Size = UDim2.new(0, 681, 0, 396)
   SettingsFrame.Visible = false

   Settings.Name = "Settings"
   Settings.Parent = SettingsFrame
   Settings.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
   Settings.BorderSizePixel = 0
   Settings.Position = UDim2.new(0, 0, 0.0530303046, 0)
   Settings.Size = UDim2.new(0, 681, 0, 375)

   SettingsHolder.Name = "SettingsHolder"
   SettingsHolder.Parent = Settings
   SettingsHolder.AnchorPoint = Vector2.new(0.5, 0.5)
   SettingsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   SettingsHolder.BackgroundTransparency = 1.000
   SettingsHolder.ClipsDescendants = true
   SettingsHolder.Position = UDim2.new(0.49926579, 0, 0.498666674, 0)
   SettingsHolder.Size = UDim2.new(0, 0, 0, 0)

   CloseSettingsBtn.Name = "CloseSettingsBtn"
   CloseSettingsBtn.Parent = SettingsHolder
   CloseSettingsBtn.AnchorPoint = Vector2.new(0.5, 0.5)
   CloseSettingsBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
   CloseSettingsBtn.Position = UDim2.new(0.952967286, 0, 0.0853333324, 0)
   CloseSettingsBtn.Selectable = false
   CloseSettingsBtn.Size = UDim2.new(0, 30, 0, 30)
   CloseSettingsBtn.AutoButtonColor = false
   CloseSettingsBtn.Font = Enum.Font.SourceSans
   CloseSettingsBtn.Text = ""
   CloseSettingsBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
   CloseSettingsBtn.TextSize = 14.000

   CloseSettingsBtnCorner.CornerRadius = UDim.new(1, 0)
   CloseSettingsBtnCorner.Name = "CloseSettingsBtnCorner"
   CloseSettingsBtnCorner.Parent = CloseSettingsBtn

   CloseSettingsBtnCircle.Name = "CloseSettingsBtnCircle"
   CloseSettingsBtnCircle.Parent = CloseSettingsBtn
   CloseSettingsBtnCircle.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
   CloseSettingsBtnCircle.Position = UDim2.new(0.0879999995, 0, 0.118000001, 0)
   CloseSettingsBtnCircle.Size = UDim2.new(0, 24, 0, 24)

   CloseSettingsBtnCircleCorner.CornerRadius = UDim.new(1, 0)
   CloseSettingsBtnCircleCorner.Name = "CloseSettingsBtnCircleCorner"
   CloseSettingsBtnCircleCorner.Parent = CloseSettingsBtnCircle

   CloseSettingsBtnIcon.Name = "CloseSettingsBtnIcon"
   CloseSettingsBtnIcon.Parent = CloseSettingsBtnCircle
   CloseSettingsBtnIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   CloseSettingsBtnIcon.BackgroundTransparency = 1.000
   CloseSettingsBtnIcon.Position = UDim2.new(0, 2, 0, 2)
   CloseSettingsBtnIcon.Size = UDim2.new(0, 19, 0, 19)
   CloseSettingsBtnIcon.Image = "http://www.roblox.com/asset/?id=6035047409"
   CloseSettingsBtnIcon.ImageColor3 = Color3.fromRGB(222, 222, 222)

   CloseSettingsBtn.MouseButton1Click:Connect(function()
      settingsopened = false
      TopFrameHolder.Visible = true
      ServersHoldFrame.Visible = true
      SettingsHolder:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
      TweenService:Create(
         Settings,
         TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 1}
      ):Play()
      for i,v in next, SettingsHolder:GetChildren() do
         TweenService:Create(
            v,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
      end
      wait(.3)
      SettingsFrame.Visible = false
   end)

   CloseSettingsBtn.MouseEnter:Connect(function()
      CloseSettingsBtnCircle.BackgroundColor3 = Color3.fromRGB(72,76,82)
   end)

   CloseSettingsBtn.MouseLeave:Connect(function()
      CloseSettingsBtnCircle.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
   end)

   UserInputService.InputBegan:Connect(
      function(io, p)
         if io.KeyCode == Enum.KeyCode.RightControl then
            if settingsopened == true then
               settingsopened = false
               TopFrameHolder.Visible = true
               ServersHoldFrame.Visible = true
               SettingsHolder:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
               TweenService:Create(
                  Settings,
                  TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {BackgroundTransparency = 1}
               ):Play()
               for i,v in next, SettingsHolder:GetChildren() do
                  TweenService:Create(
                     v,
                     TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {BackgroundTransparency = 1}
                  ):Play()
               end
               wait(.3)
               SettingsFrame.Visible = false
            end
         end
      end
   )

   TextLabel.Parent = CloseSettingsBtn
   TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   TextLabel.BackgroundTransparency = 1.000
   TextLabel.Position = UDim2.new(-0.0666666701, 0, 1.06666672, 0)
   TextLabel.Size = UDim2.new(0, 34, 0, 22)
   TextLabel.Font = Enum.Font.GothamSemibold
   TextLabel.Text = "rightctrl"
   TextLabel.TextColor3 = Color3.fromRGB(113, 117, 123)
   TextLabel.TextSize = 11.000

   UserPanel.Name = "UserPanel"
   UserPanel.Parent = SettingsHolder
   UserPanel.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
   UserPanel.Position = UDim2.new(0.365638763, 0, 0.130666673, 0)
   UserPanel.Size = UDim2.new(0, 362, 0, 164)

   UserSettingsPad.Name = "UserSettingsPad"
   UserSettingsPad.Parent = UserPanel
   UserSettingsPad.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
   UserSettingsPad.Position = UDim2.new(0.0331491716, 0, 0.568140388, 0)
   UserSettingsPad.Size = UDim2.new(0, 337, 0, 56)

   UserSettingsPadCorner.Name = "UserSettingsPadCorner"
   UserSettingsPadCorner.Parent = UserSettingsPad

   UsernameText.Name = "UsernameText"
   UsernameText.Parent = UserSettingsPad
   UsernameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UsernameText.BackgroundTransparency = 1.000
   UsernameText.Position = UDim2.new(0.0419999994, 0, 0.154714286, 0)
   UsernameText.Size = UDim2.new(0, 65, 0, 19)
   UsernameText.Font = Enum.Font.GothamBold
   UsernameText.Text = "USERNAME"
   UsernameText.TextColor3 = Color3.fromRGB(126, 130, 136)
   UsernameText.TextSize = 11.000
   UsernameText.TextXAlignment = Enum.TextXAlignment.Left

   UserSettingsPadUserTag.Name = "UserSettingsPadUserTag"
   UserSettingsPadUserTag.Parent = UserSettingsPad
   UserSettingsPadUserTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserSettingsPadUserTag.BackgroundTransparency = 1.000
   UserSettingsPadUserTag.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
   UserSettingsPadUserTag.Size = UDim2.new(0, 65, 0, 19)

   UserSettingsPadUser.Name = "UserSettingsPadUser"
   UserSettingsPadUser.Parent = UserSettingsPadUserTag
   UserSettingsPadUser.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserSettingsPadUser.BackgroundTransparency = 1.000
   UserSettingsPadUser.Font = Enum.Font.Gotham
   UserSettingsPadUser.TextColor3 = Color3.fromRGB(255, 255, 255)
   UserSettingsPadUser.TextSize = 13.000
   UserSettingsPadUser.TextXAlignment = Enum.TextXAlignment.Left
   UserSettingsPadUser.Text = user
   UserSettingsPadUser.Size = UDim2.new(0, UserSettingsPadUser.TextBounds.X + 2, 0, 19)

   UserSettingsPadUserTagLayout.Name = "UserSettingsPadUserTagLayout"
   UserSettingsPadUserTagLayout.Parent = UserSettingsPadUserTag
   UserSettingsPadUserTagLayout.FillDirection = Enum.FillDirection.Horizontal
   UserSettingsPadUserTagLayout.SortOrder = Enum.SortOrder.LayoutOrder

   UserSettingsPadTag.Name = "UserSettingsPadTag"
   UserSettingsPadTag.Parent = UserSettingsPadUserTag
   UserSettingsPadTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserSettingsPadTag.BackgroundTransparency = 1.000
   UserSettingsPadTag.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
   UserSettingsPadTag.Size = UDim2.new(0, 65, 0, 19)
   UserSettingsPadTag.Font = Enum.Font.Gotham
   UserSettingsPadTag.Text = "#" .. tag
   UserSettingsPadTag.TextColor3 = Color3.fromRGB(184, 186, 189)
   UserSettingsPadTag.TextSize = 13.000
   UserSettingsPadTag.TextXAlignment = Enum.TextXAlignment.Left

   EditBtn.Name = "EditBtn"
   EditBtn.Parent = UserSettingsPad
   EditBtn.BackgroundColor3 = Color3.fromRGB(116, 127, 141)
   EditBtn.Position = UDim2.new(0.797671914, 0, 0.232142866, 0)
   EditBtn.Size = UDim2.new(0, 55, 0, 30)
   EditBtn.Font = Enum.Font.Gotham
   EditBtn.Text = "Edit"
   EditBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
   EditBtn.TextSize = 14.000
   EditBtn.AutoButtonColor = false

   EditBtn.MouseEnter:Connect(function()
      TweenService:Create(
         EditBtn,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundColor3 = Color3.fromRGB(104,114,127)}
      ):Play()
   end)

   EditBtn.MouseLeave:Connect(function()
      TweenService:Create(
         EditBtn,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundColor3 = Color3.fromRGB(116, 127, 141)}
      ):Play()
   end)

   EditBtnCorner.CornerRadius = UDim.new(0, 3)
   EditBtnCorner.Name = "EditBtnCorner"
   EditBtnCorner.Parent = EditBtn

   UserPanelUserIcon.Name = "UserPanelUserIcon"
   UserPanelUserIcon.Parent = UserPanel
   UserPanelUserIcon.BackgroundColor3 = Color3.fromRGB(31, 33, 36)
   UserPanelUserIcon.BorderSizePixel = 0
   UserPanelUserIcon.Position = UDim2.new(0.0340000018, 0, 0.074000001, 0)
   UserPanelUserIcon.Size = UDim2.new(0, 71, 0, 71)
   UserPanelUserIcon.AutoButtonColor = false
   UserPanelUserIcon.Text = ""

   UserPanelUserImage.Name = "UserPanelUserImage"
   UserPanelUserImage.Parent = UserPanelUserIcon
   UserPanelUserImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelUserImage.BackgroundTransparency = 1.000
   UserPanelUserImage.Size = UDim2.new(0, 71, 0, 71)
   UserPanelUserImage.Image = pfp

   UserPanelUserCircle.Name = "UserPanelUserCircle"
   UserPanelUserCircle.Parent = UserPanelUserImage
   UserPanelUserCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelUserCircle.BackgroundTransparency = 1.000
   UserPanelUserCircle.Size = UDim2.new(0, 71, 0, 71)
   UserPanelUserCircle.Image = "rbxassetid://4031889928"
   UserPanelUserCircle.ImageColor3 = Color3.fromRGB(47, 49, 54)

   BlackFrame.Name = "BlackFrame"
   BlackFrame.Parent = UserPanelUserIcon
   BlackFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
   BlackFrame.BackgroundTransparency = 0.400
   BlackFrame.BorderSizePixel = 0
   BlackFrame.Size = UDim2.new(0, 71, 0, 71)
   BlackFrame.Visible = false

   BlackFrameCorner.CornerRadius = UDim.new(1, 8)
   BlackFrameCorner.Name = "BlackFrameCorner"
   BlackFrameCorner.Parent = BlackFrame

   ChangeAvatarText.Name = "ChangeAvatarText"
   ChangeAvatarText.Parent = BlackFrame
   ChangeAvatarText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   ChangeAvatarText.BackgroundTransparency = 1.000
   ChangeAvatarText.Size = UDim2.new(0, 71, 0, 71)
   ChangeAvatarText.Font = Enum.Font.GothamBold
   ChangeAvatarText.Text = "CHAGNE    AVATAR"
   ChangeAvatarText.TextColor3 = Color3.fromRGB(255, 255, 255)
   ChangeAvatarText.TextSize = 11.000
   ChangeAvatarText.TextWrapped = true

   SearchIcoFrame.Name = "SearchIcoFrame"
   SearchIcoFrame.Parent = UserPanelUserIcon
   SearchIcoFrame.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
   SearchIcoFrame.Position = UDim2.new(0.657999992, 0, 0, 0)
   SearchIcoFrame.Size = UDim2.new(0, 20, 0, 20)

   SearchIcoFrameCorner.CornerRadius = UDim.new(1, 8)
   SearchIcoFrameCorner.Name = "SearchIcoFrameCorner"
   SearchIcoFrameCorner.Parent = SearchIcoFrame

   SearchIco.Name = "SearchIco"
   SearchIco.Parent = SearchIcoFrame
   SearchIco.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   SearchIco.BackgroundTransparency = 1.000
   SearchIco.Position = UDim2.new(0.150000006, 0, 0.100000001, 0)
   SearchIco.Size = UDim2.new(0, 15, 0, 15)
   SearchIco.Image = "http://www.roblox.com/asset/?id=6034407084"
   SearchIco.ImageColor3 = Color3.fromRGB(114, 118, 125)

   UserPanelUserIcon.MouseEnter:Connect(function()
      BlackFrame.Visible = true
   end)

   UserPanelUserIcon.MouseLeave:Connect(function()
      BlackFrame.Visible = false
   end)

   UserPanelUserIcon.MouseButton1Click:Connect(function()
      local NotificationHolder = Instance.new("TextButton")
      NotificationHolder.Name = "NotificationHolder"
      NotificationHolder.Parent = SettingsHolder
      NotificationHolder.BackgroundColor3 = Color3.fromRGB(22,22,22)
      NotificationHolder.Position = UDim2.new(-0.00881057233, 0, -0.00266666664, 0)
      NotificationHolder.Size = UDim2.new(0, 687, 0, 375)
      NotificationHolder.AutoButtonColor = false
      NotificationHolder.Font = Enum.Font.SourceSans
      NotificationHolder.Text = ""
      NotificationHolder.TextColor3 = Color3.fromRGB(0, 0, 0)
      NotificationHolder.TextSize = 14.000
      NotificationHolder.BackgroundTransparency = 1
      NotificationHolder.Visible = true
      TweenService:Create(
         NotificationHolder,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0.2}
      ):Play()



      local AvatarChange = Instance.new("Frame")
      local UserChangeCorner = Instance.new("UICorner")
      local UnderBar = Instance.new("Frame")
      local UnderBarCorner = Instance.new("UICorner")
      local UnderBarFrame = Instance.new("Frame")
      local Text1 = Instance.new("TextLabel")
      local Text2 = Instance.new("TextLabel")
      local TextBoxFrame = Instance.new("Frame")
      local TextBoxFrameCorner = Instance.new("UICorner")
      local TextBoxFrame1 = Instance.new("Frame")
      local TextBoxFrame1Corner = Instance.new("UICorner")
      local AvatarTextbox = Instance.new("TextBox")
      local ChangeBtn = Instance.new("TextButton")
      local ChangeCorner = Instance.new("UICorner")
      local CloseBtn2 = Instance.new("TextButton")
      local Close2Icon = Instance.new("ImageLabel")
      local CloseBtn1 = Instance.new("TextButton")
      local CloseBtn1Corner = Instance.new("UICorner")
      local ResetBtn = Instance.new("TextButton")
      local ResetCorner = Instance.new("UICorner")


      AvatarChange.Name = "AvatarChange"
      AvatarChange.Parent = NotificationHolder
      AvatarChange.AnchorPoint = Vector2.new(0.5, 0.5)
      AvatarChange.BackgroundColor3 = Color3.fromRGB(20,20,20)
      AvatarChange.ClipsDescendants = true
      AvatarChange.Position = UDim2.new(0.513071597, 0, 0.4746176, 0)
      AvatarChange.Size = UDim2.new(0, 0, 0, 0)
      AvatarChange.BackgroundTransparency = 1

      AvatarChange:TweenSize(UDim2.new(0, 346, 0, 198), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
      TweenService:Create(
         AvatarChange,
         TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0}
      ):Play()


      UserChangeCorner.CornerRadius = UDim.new(0, 5)
      UserChangeCorner.Name = "UserChangeCorner"
      UserChangeCorner.Parent = AvatarChange

      UnderBar.Name = "UnderBar"
      UnderBar.Parent = AvatarChange
      UnderBar.BackgroundColor3 = Color3.fromRGB(25,25,25)
      UnderBar.Position = UDim2.new(-0.000297061284, 0, 0.945048928, 0)
      UnderBar.Size = UDim2.new(0, 346, 0, 13)

      UnderBarCorner.CornerRadius = UDim.new(0, 5)
      UnderBarCorner.Name = "UnderBarCorner"
      UnderBarCorner.Parent = UnderBar

      UnderBarFrame.Name = "UnderBarFrame"
      UnderBarFrame.Parent = UnderBar
      UnderBarFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
      UnderBarFrame.BorderSizePixel = 0
      UnderBarFrame.Position = UDim2.new(-0.000297061284, 0, -2.53846145, 0)
      UnderBarFrame.Size = UDim2.new(0, 346, 0, 39)

      Text1.Name = "Text1"
      Text1.Parent = AvatarChange
      Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text1.BackgroundTransparency = 1.000
      Text1.Position = UDim2.new(-0.000594122568, 0, 0.0202020202, 0)
      Text1.Size = UDim2.new(0, 346, 0, 68)
      Text1.Font = Enum.Font.GothamSemibold
      Text1.Text = "Change your avatar"
      Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
      Text1.TextSize = 20.000

      Text2.Name = "Text2"
      Text2.Parent = AvatarChange
      Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text2.BackgroundTransparency = 1.000
      Text2.Position = UDim2.new(-0.000594122568, 0, 0.141587839, 0)
      Text2.Size = UDim2.new(0, 346, 0, 63)
      Text2.Font = Enum.Font.Gotham
      Text2.Text = "Enter your new profile in a Roblox decal link."
      Text2.TextColor3 = Color3.fromRGB(171, 172, 176)
      Text2.TextSize = 14.000

      TextBoxFrame.Name = "TextBoxFrame"
      TextBoxFrame.Parent = AvatarChange
      TextBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
      TextBoxFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
      TextBoxFrame.Position = UDim2.new(0.49710983, 0, 0.560606062, 0)
      TextBoxFrame.Size = UDim2.new(0, 319, 0, 38)

      TextBoxFrameCorner.CornerRadius = UDim.new(0, 3)
      TextBoxFrameCorner.Name = "TextBoxFrameCorner"
      TextBoxFrameCorner.Parent = TextBoxFrame

      TextBoxFrame1.Name = "TextBoxFrame1"
      TextBoxFrame1.Parent = TextBoxFrame
      TextBoxFrame1.AnchorPoint = Vector2.new(0.5, 0.5)
      TextBoxFrame1.BackgroundColor3 = Color3.fromRGB(48, 51, 57)
      TextBoxFrame1.ClipsDescendants = true
      TextBoxFrame1.Position = UDim2.new(0.5, 0, 0.5, 0)
      TextBoxFrame1.Size = UDim2.new(0, 317, 0, 36)

      TextBoxFrame1Corner.CornerRadius = UDim.new(0, 3)
      TextBoxFrame1Corner.Name = "TextBoxFrame1Corner"
      TextBoxFrame1Corner.Parent = TextBoxFrame1

      AvatarTextbox.Name = "AvatarTextbox"
      AvatarTextbox.Parent = TextBoxFrame1
      AvatarTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      AvatarTextbox.BackgroundTransparency = 1.000
      AvatarTextbox.Position = UDim2.new(0.0378548913, 0, 0, 0)
      AvatarTextbox.Size = UDim2.new(0, 293, 0, 37)
      AvatarTextbox.Font = Enum.Font.Gotham
      AvatarTextbox.Text = ""
      AvatarTextbox.TextColor3 = Color3.fromRGB(193, 195, 197)
      AvatarTextbox.TextSize = 14.000
      AvatarTextbox.TextXAlignment = Enum.TextXAlignment.Left

      ChangeBtn.Name = "ChangeBtn"
      ChangeBtn.Parent = AvatarChange
      ChangeBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
      ChangeBtn.Position = UDim2.new(0.749670506, 0, 0.823232353, 0)
      ChangeBtn.Size = UDim2.new(0, 76, 0, 27)
      ChangeBtn.Font = Enum.Font.Gotham
      ChangeBtn.Text = "Change"
      ChangeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
      ChangeBtn.TextSize = 13.000
      ChangeBtn.AutoButtonColor = false

      ChangeBtn.MouseEnter:Connect(function()
         TweenService:Create(
            ChangeBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(103,123,196)}
         ):Play()
      end)

      ChangeBtn.MouseLeave:Connect(function()
         TweenService:Create(
            ChangeBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
         ):Play()
      end)

      ChangeBtn.MouseButton1Click:Connect(function()
         pfp = tostring(AvatarTextbox.Text)
         UserImage.Image = pfp
         UserPanelUserImage.Image = pfp
         SaveInfo()

         AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            AvatarChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)



      ChangeCorner.CornerRadius = UDim.new(0, 4)
      ChangeCorner.Name = "ChangeCorner"
      ChangeCorner.Parent = ChangeBtn

      CloseBtn2.Name = "CloseBtn2"
      CloseBtn2.Parent = AvatarChange
      CloseBtn2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn2.BackgroundTransparency = 1.000
      CloseBtn2.Position = UDim2.new(0.898000002, 0, 0, 0)
      CloseBtn2.Size = UDim2.new(0, 26, 0, 26)
      CloseBtn2.Font = Enum.Font.Gotham
      CloseBtn2.Text = ""
      CloseBtn2.TextColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn2.TextSize = 14.000

      Close2Icon.Name = "Close2Icon"
      Close2Icon.Parent = CloseBtn2
      Close2Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Close2Icon.BackgroundTransparency = 1.000
      Close2Icon.Position = UDim2.new(-0.0384615399, 0, 0.312910825, 0)
      Close2Icon.Size = UDim2.new(0, 25, 0, 25)
      Close2Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
      Close2Icon.ImageColor3 = Color3.fromRGB(119, 122, 127)

      CloseBtn1.Name = "CloseBtn1"
      CloseBtn1.Parent = AvatarChange
      CloseBtn1.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
      CloseBtn1.BackgroundTransparency = 1.000
      CloseBtn1.Position = UDim2.new(0.495000005, 0, 0.823000014, 0)
      CloseBtn1.Size = UDim2.new(0, 76, 0, 27)
      CloseBtn1.Font = Enum.Font.Gotham
      CloseBtn1.Text = "Close"
      CloseBtn1.TextColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn1.TextSize = 13.000

      CloseBtn1Corner.CornerRadius = UDim.new(0, 4)
      CloseBtn1Corner.Name = "CloseBtn1Corner"
      CloseBtn1Corner.Parent = CloseBtn1

      ResetBtn.Name = "ResetBtn"
      ResetBtn.Parent = AvatarChange
      ResetBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
      ResetBtn.BackgroundTransparency = 1.000
      ResetBtn.Position = UDim2.new(0.260895967, 0, 0.823000014, 0)
      ResetBtn.Size = UDim2.new(0, 76, 0, 27)
      ResetBtn.Font = Enum.Font.Gotham
      ResetBtn.Text = "Reset"
      ResetBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
      ResetBtn.TextSize = 13.000

      ResetBtn.MouseButton1Click:Connect(function()
         pfp = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=420&height=420&format=png"
         UserImage.Image = pfp
         UserPanelUserImage.Image = pfp
         SaveInfo()

         AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            AvatarChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      ResetCorner.CornerRadius = UDim.new(0, 4)
      ResetCorner.Name = "ResetCorner"
      ResetCorner.Parent = ResetBtn

      CloseBtn1.MouseButton1Click:Connect(function()
         AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            AvatarChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      CloseBtn2.MouseButton1Click:Connect(function()
         AvatarChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            AvatarChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      CloseBtn2.MouseEnter:Connect(function()
         TweenService:Create(
            Close2Icon,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(210,210,210)}
         ):Play()
      end)

      CloseBtn2.MouseLeave:Connect(function()
         TweenService:Create(
            Close2Icon,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(119, 122, 127)}
         ):Play()
      end)


      AvatarTextbox.Focused:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
         ):Play()
      end)

      AvatarTextbox.FocusLost:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(37, 40, 43)}
         ):Play()
      end)


   end)

   UserPanelUserTag.Name = "UserPanelUserTag"
   UserPanelUserTag.Parent = UserPanel
   UserPanelUserTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelUserTag.BackgroundTransparency = 1.000
   UserPanelUserTag.Position = UDim2.new(0.271143615, 0, 0.231804818, 0)
   UserPanelUserTag.Size = UDim2.new(0, 113, 0, 19)

   UserPanelUser.Name = "UserPanelUser"
   UserPanelUser.Parent = UserPanelUserTag
   UserPanelUser.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelUser.BackgroundTransparency = 1.000
   UserPanelUser.Font = Enum.Font.GothamSemibold
   UserPanelUser.TextColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelUser.TextSize = 17.000
   UserPanelUser.TextXAlignment = Enum.TextXAlignment.Left
   UserPanelUser.Text = user
   UserPanelUser.Size = UDim2.new(0, UserPanelUser.TextBounds.X + 2, 0, 19)


   UserPanelUserTagLayout.Name = "UserPanelUserTagLayout"
   UserPanelUserTagLayout.Parent = UserPanelUserTag
   UserPanelUserTagLayout.FillDirection = Enum.FillDirection.Horizontal
   UserPanelUserTagLayout.SortOrder = Enum.SortOrder.LayoutOrder

   UserPanelTag.Name = "UserPanelTag"
   UserPanelTag.Parent = UserPanelUserTag
   UserPanelTag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   UserPanelTag.BackgroundTransparency = 1.000
   UserPanelTag.Position = UDim2.new(0.0419999994, 0, 0.493999988, 0)
   UserPanelTag.Size = UDim2.new(0, 65, 0, 19)
   UserPanelTag.Font = Enum.Font.Gotham
   UserPanelTag.Text = "#" .. tag
   UserPanelTag.TextColor3 = Color3.fromRGB(184, 186, 189)
   UserPanelTag.TextSize = 17.000
   UserPanelTag.TextXAlignment = Enum.TextXAlignment.Left

   UserPanelCorner.Name = "UserPanelCorner"
   UserPanelCorner.Parent = UserPanel

   LeftFrame.Name = "LeftFrame"
   LeftFrame.Parent = SettingsHolder
   LeftFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
   LeftFrame.BorderSizePixel = 0
   LeftFrame.Position = UDim2.new(0, 0, -0.000303059904, 0)
   LeftFrame.Size = UDim2.new(0, 233, 0, 375)

   MyAccountBtn.Name = "MyAccountBtn"
   MyAccountBtn.Parent = LeftFrame
   MyAccountBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
   MyAccountBtn.BorderSizePixel = 0
   MyAccountBtn.Position = UDim2.new(0.271232396, 0, 0.101614028, 0)
   MyAccountBtn.Size = UDim2.new(0, 160, 0, 30)
   MyAccountBtn.AutoButtonColor = false
   MyAccountBtn.Font = Enum.Font.SourceSans
   MyAccountBtn.Text = ""
   MyAccountBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
   MyAccountBtn.TextSize = 14.000

   MyAccountBtnCorner.CornerRadius = UDim.new(0, 6)
   MyAccountBtnCorner.Name = "MyAccountBtnCorner"
   MyAccountBtnCorner.Parent = MyAccountBtn

   MyAccountBtnTitle.Name = "MyAccountBtnTitle"
   MyAccountBtnTitle.Parent = MyAccountBtn
   MyAccountBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   MyAccountBtnTitle.BackgroundTransparency = 1.000
   MyAccountBtnTitle.BorderSizePixel = 0
   MyAccountBtnTitle.Position = UDim2.new(0.0759999976, 0, -0.166999996, 0)
   MyAccountBtnTitle.Size = UDim2.new(0, 95, 0, 39)
   MyAccountBtnTitle.Font = Enum.Font.GothamSemibold
   MyAccountBtnTitle.Text = "My Account"
   MyAccountBtnTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
   MyAccountBtnTitle.TextSize = 14.000
   MyAccountBtnTitle.TextXAlignment = Enum.TextXAlignment.Left

   SettingsTitle.Name = "SettingsTitle"
   SettingsTitle.Parent = LeftFrame
   SettingsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   SettingsTitle.BackgroundTransparency = 1.000
   SettingsTitle.Position = UDim2.new(0.308999985, 0, 0.0450000018, 0)
   SettingsTitle.Size = UDim2.new(0, 65, 0, 19)
   SettingsTitle.Font = Enum.Font.GothamBlack
   SettingsTitle.Text = "SETTINGS"
   SettingsTitle.TextColor3 = Color3.fromRGB(142, 146, 152)
   SettingsTitle.TextSize = 11.000
   SettingsTitle.TextXAlignment = Enum.TextXAlignment.Left

   DiscordInfo.Name = "DiscordInfo"
   DiscordInfo.Parent = LeftFrame
   DiscordInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   DiscordInfo.BackgroundTransparency = 1.000
   DiscordInfo.Position = UDim2.new(0.304721028, 0, 0.821333349, 0)
   DiscordInfo.Size = UDim2.new(0, 133, 0, 44)
   DiscordInfo.Font = Enum.Font.Gotham
   DiscordInfo.Text = "Stable 1.0.0 (00001)  Host 0.0.0.1                Roblox Lua Engine    "
   DiscordInfo.TextColor3 = Color3.fromRGB(101, 108, 116)
   DiscordInfo.TextSize = 13.000
   DiscordInfo.TextWrapped = true
   DiscordInfo.TextXAlignment = Enum.TextXAlignment.Left
   DiscordInfo.TextYAlignment = Enum.TextYAlignment.Top

   CurrentSettingOpen.Name = "CurrentSettingOpen"
   CurrentSettingOpen.Parent = LeftFrame
   CurrentSettingOpen.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   CurrentSettingOpen.BackgroundTransparency = 1.000
   CurrentSettingOpen.Position = UDim2.new(1.07294846, 0, 0.0450000018, 0)
   CurrentSettingOpen.Size = UDim2.new(0, 65, 0, 19)
   CurrentSettingOpen.Font = Enum.Font.GothamBlack
   CurrentSettingOpen.Text = "MY ACCOUNT"
   CurrentSettingOpen.TextColor3 = Color3.fromRGB(255, 255, 255)
   CurrentSettingOpen.TextSize = 14.000
   CurrentSettingOpen.TextXAlignment = Enum.TextXAlignment.Left


   SettingsOpenBtn.MouseButton1Click:Connect(function ()
      settingsopened = true
      TopFrameHolder.Visible = false
      ServersHoldFrame.Visible = false
      SettingsFrame.Visible = true
      SettingsHolder:TweenSize(UDim2.new(0, 681, 0, 375), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
      Settings.BackgroundTransparency = 1
      TweenService:Create(
         Settings,
         TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0}
      ):Play()
      for i,v in next, SettingsHolder:GetChildren() do
         v.BackgroundTransparency = 1
         TweenService:Create(
            v,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 0}
         ):Play()
      end
   end)

   EditBtn.MouseButton1Click:Connect(function()
      local NotificationHolder = Instance.new("TextButton")
      NotificationHolder.Name = "NotificationHolder"
      NotificationHolder.Parent = SettingsHolder
      NotificationHolder.BackgroundColor3 = Color3.fromRGB(22,22,22)
      NotificationHolder.Position = UDim2.new(-0.00881057233, 0, -0.00266666664, 0)
      NotificationHolder.Size = UDim2.new(0, 687, 0, 375)
      NotificationHolder.AutoButtonColor = false
      NotificationHolder.Font = Enum.Font.SourceSans
      NotificationHolder.Text = ""
      NotificationHolder.TextColor3 = Color3.fromRGB(0, 0, 0)
      NotificationHolder.TextSize = 14.000
      NotificationHolder.BackgroundTransparency = 1
      NotificationHolder.Visible = true
      TweenService:Create(
         NotificationHolder,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0.2}
      ):Play()

      local UserChange = Instance.new("Frame")
      local UserChangeCorner = Instance.new("UICorner")
      local UnderBar = Instance.new("Frame")
      local UnderBarCorner = Instance.new("UICorner")
      local UnderBarFrame = Instance.new("Frame")
      local Text1 = Instance.new("TextLabel")
      local Text2 = Instance.new("TextLabel")
      local TextBoxFrame = Instance.new("Frame")
      local TextBoxFrameCorner = Instance.new("UICorner")
      local TextBoxFrame1 = Instance.new("Frame")
      local TextBoxFrame1Corner = Instance.new("UICorner")
      local UsernameTextbox = Instance.new("TextBox")
      local Seperator = Instance.new("Frame")
      local HashtagLabel = Instance.new("TextLabel")
      local TagTextbox = Instance.new("TextBox")
      local ChangeBtn = Instance.new("TextButton")
      local ChangeCorner = Instance.new("UICorner")
      local CloseBtn2 = Instance.new("TextButton")
      local Close2Icon = Instance.new("ImageLabel")
      local CloseBtn1 = Instance.new("TextButton")
      local CloseBtn1Corner = Instance.new("UICorner")

      UserChange.Name = "UserChange"
      UserChange.Parent = NotificationHolder
      UserChange.AnchorPoint = Vector2.new(0.5, 0.5)
      UserChange.BackgroundColor3 = Color3.fromRGB(25,25,25)
      UserChange.ClipsDescendants = true
      UserChange.Position = UDim2.new(0.513071597, 0, 0.4746176, 0)
      UserChange.Size = UDim2.new(0, 0, 0, 0)
      UserChange.BackgroundTransparency = 1

      UserChange:TweenSize(UDim2.new(0, 346, 0, 198), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
      TweenService:Create(
         UserChange,
         TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0}
      ):Play()

      UserChangeCorner.CornerRadius = UDim.new(0, 5)
      UserChangeCorner.Name = "UserChangeCorner"
      UserChangeCorner.Parent = UserChange

      UnderBar.Name = "UnderBar"
      UnderBar.Parent = UserChange
      UnderBar.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
      UnderBar.Position = UDim2.new(-0.000297061284, 0, 0.945048928, 0)
      UnderBar.Size = UDim2.new(0, 346, 0, 13)

      UnderBarCorner.CornerRadius = UDim.new(0, 5)
      UnderBarCorner.Name = "UnderBarCorner"
      UnderBarCorner.Parent = UnderBar

      UnderBarFrame.Name = "UnderBarFrame"
      UnderBarFrame.Parent = UnderBar
      UnderBarFrame.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
      UnderBarFrame.BorderSizePixel = 0
      UnderBarFrame.Position = UDim2.new(-0.000297061284, 0, -2.53846145, 0)
      UnderBarFrame.Size = UDim2.new(0, 346, 0, 39)

      Text1.Name = "Text1"
      Text1.Parent = UserChange
      Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text1.BackgroundTransparency = 1.000
      Text1.Position = UDim2.new(-0.000594122568, 0, 0.0202020202, 0)
      Text1.Size = UDim2.new(0, 346, 0, 68)
      Text1.Font = Enum.Font.GothamSemibold
      Text1.Text = "Change your username"
      Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
      Text1.TextSize = 20.000

      Text2.Name = "Text2"
      Text2.Parent = UserChange
      Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text2.BackgroundTransparency = 1.000
      Text2.Position = UDim2.new(-0.000594122568, 0, 0.141587839, 0)
      Text2.Size = UDim2.new(0, 346, 0, 63)
      Text2.Font = Enum.Font.Gotham
      Text2.Text = "Enter your new username."
      Text2.TextColor3 = Color3.fromRGB(171, 172, 176)
      Text2.TextSize = 14.000

      TextBoxFrame.Name = "TextBoxFrame"
      TextBoxFrame.Parent = UserChange
      TextBoxFrame.AnchorPoint = Vector2.new(0.5, 0.5)
      TextBoxFrame.BackgroundColor3 = Color3.fromRGB(37, 40, 43)
      TextBoxFrame.Position = UDim2.new(0.49710983, 0, 0.560606062, 0)
      TextBoxFrame.Size = UDim2.new(0, 319, 0, 38)

      TextBoxFrameCorner.CornerRadius = UDim.new(0, 3)
      TextBoxFrameCorner.Name = "TextBoxFrameCorner"
      TextBoxFrameCorner.Parent = TextBoxFrame

      TextBoxFrame1.Name = "TextBoxFrame1"
      TextBoxFrame1.Parent = TextBoxFrame
      TextBoxFrame1.AnchorPoint = Vector2.new(0.5, 0.5)
      TextBoxFrame1.BackgroundColor3 = Color3.fromRGB(48, 51, 57)
      TextBoxFrame1.Position = UDim2.new(0.5, 0, 0.5, 0)
      TextBoxFrame1.Size = UDim2.new(0, 317, 0, 36)

      TextBoxFrame1Corner.CornerRadius = UDim.new(0, 3)
      TextBoxFrame1Corner.Name = "TextBoxFrame1Corner"
      TextBoxFrame1Corner.Parent = TextBoxFrame1

      UsernameTextbox.Name = "UsernameTextbox"
      UsernameTextbox.Parent = TextBoxFrame1
      UsernameTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      UsernameTextbox.BackgroundTransparency = 1.000
      UsernameTextbox.Position = UDim2.new(0.0378548913, 0, 0, 0)
      UsernameTextbox.Size = UDim2.new(0, 221, 0, 37)
      UsernameTextbox.Font = Enum.Font.Gotham
      UsernameTextbox.Text = user
      UsernameTextbox.TextColor3 = Color3.fromRGB(193, 195, 197)
      UsernameTextbox.TextSize = 14.000
      UsernameTextbox.TextXAlignment = Enum.TextXAlignment.Left

      Seperator.Name = "Seperator"
      Seperator.Parent = TextBoxFrame1
      Seperator.AnchorPoint = Vector2.new(0.5, 0.5)
      Seperator.BackgroundColor3 = Color3.fromRGB(25,25,25)
      Seperator.BorderSizePixel = 0
      Seperator.Position = UDim2.new(0.753000021, 0, 0.500999987, 0)
      Seperator.Size = UDim2.new(0, 1, 0, 25)

      HashtagLabel.Name = "HashtagLabel"
      HashtagLabel.Parent = TextBoxFrame1
      HashtagLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      HashtagLabel.BackgroundTransparency = 1.000
      HashtagLabel.Position = UDim2.new(0.765877604, 0, -0.0546001866, 0)
      HashtagLabel.Size = UDim2.new(0, 23, 0, 37)
      HashtagLabel.Font = Enum.Font.Gotham
      HashtagLabel.Text = "#"
      HashtagLabel.TextColor3 = Color3.fromRGB(79, 82, 88)
      HashtagLabel.TextSize = 16.000

      TagTextbox.Name = "TagTextbox"
      TagTextbox.Parent = TextBoxFrame1
      TagTextbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      TagTextbox.BackgroundTransparency = 1.000
      TagTextbox.Position = UDim2.new(0.824999988, 0, -0.0280000009, 0)
      TagTextbox.Size = UDim2.new(0, 59, 0, 38)
      TagTextbox.Font = Enum.Font.Gotham
      TagTextbox.PlaceholderColor3 = Color3.fromRGB(210, 211, 212)
      TagTextbox.Text = tag
      TagTextbox.TextColor3 = Color3.fromRGB(193, 195, 197)
      TagTextbox.TextSize = 14.000
      TagTextbox.TextXAlignment = Enum.TextXAlignment.Left

      ChangeBtn.Name = "ChangeBtn"
      ChangeBtn.Parent = UserChange
      ChangeBtn.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
      ChangeBtn.Position = UDim2.new(0.749670506, 0, 0.823232353, 0)
      ChangeBtn.Size = UDim2.new(0, 76, 0, 27)
      ChangeBtn.Font = Enum.Font.Gotham
      ChangeBtn.Text = "Change"
      ChangeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
      ChangeBtn.TextSize = 13.000
      ChangeBtn.AutoButtonColor = false

      ChangeBtn.MouseEnter:Connect(function()
         TweenService:Create(
            ChangeBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(103,123,196)}
         ):Play()
      end)

      ChangeBtn.MouseLeave:Connect(function()
         TweenService:Create(
            ChangeBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
         ):Play()
      end)

      ChangeBtn.MouseButton1Click:Connect(function()
         user = UsernameTextbox.Text
         tag = TagTextbox.Text
         UserSettingsPadUser.Text = user
         UserSettingsPadUser.Size = UDim2.new(0, UserSettingsPadUser.TextBounds.X + 2, 0, 19)
         UserSettingsPadTag.Text = "#" .. tag
         UserPanelTag.Text = "#" .. tag
         UserPanelUser.Text = user
         UserPanelUser.Size = UDim2.new(0, UserPanelUser.TextBounds.X + 2, 0, 19)
         UserName.Text = user
         UserTag.Text = "#" .. tag
         SaveInfo()

         UserChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            UserChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      ChangeCorner.CornerRadius = UDim.new(0, 4)
      ChangeCorner.Name = "ChangeCorner"
      ChangeCorner.Parent = ChangeBtn

      CloseBtn2.Name = "CloseBtn2"
      CloseBtn2.Parent = UserChange
      CloseBtn2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn2.BackgroundTransparency = 1.000
      CloseBtn2.Position = UDim2.new(0.898000002, 0, 0, 0)
      CloseBtn2.Size = UDim2.new(0, 26, 0, 26)
      CloseBtn2.Font = Enum.Font.Gotham
      CloseBtn2.Text = ""
      CloseBtn2.TextColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn2.TextSize = 14.000

      Close2Icon.Name = "Close2Icon"
      Close2Icon.Parent = CloseBtn2
      Close2Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Close2Icon.BackgroundTransparency = 1.000
      Close2Icon.Position = UDim2.new(-0.0384615399, 0, 0.312910825, 0)
      Close2Icon.Size = UDim2.new(0, 25, 0, 25)
      Close2Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
      Close2Icon.ImageColor3 = Color3.fromRGB(119, 122, 127)

      CloseBtn1.Name = "CloseBtn1"
      CloseBtn1.Parent = UserChange
      CloseBtn1.BackgroundColor3 = Color3.fromRGB(114, 137, 228)
      CloseBtn1.BackgroundTransparency = 1.000
      CloseBtn1.Position = UDim2.new(0.495000005, 0, 0.823000014, 0)
      CloseBtn1.Size = UDim2.new(0, 76, 0, 27)
      CloseBtn1.Font = Enum.Font.Gotham
      CloseBtn1.Text = "Close"
      CloseBtn1.TextColor3 = Color3.fromRGB(255, 255, 255)
      CloseBtn1.TextSize = 13.000

      CloseBtn1Corner.CornerRadius = UDim.new(0, 4)
      CloseBtn1Corner.Name = "CloseBtn1Corner"
      CloseBtn1Corner.Parent = CloseBtn1

      CloseBtn1.MouseButton1Click:Connect(function()
         UserChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            UserChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      CloseBtn2.MouseButton1Click:Connect(function()
         UserChange:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            UserChange,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         TweenService:Create(
            NotificationHolder,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait(.2)
         NotificationHolder:Destroy()
      end)

      CloseBtn2.MouseEnter:Connect(function()
         TweenService:Create(
            Close2Icon,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(210,210,210)}
         ):Play()
      end)

      CloseBtn2.MouseLeave:Connect(function()
         TweenService:Create(
            Close2Icon,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {ImageColor3 = Color3.fromRGB(119, 122, 127)}
         ):Play()
      end)

      TagTextbox.Changed:Connect(function()
         TagTextbox.Text = TagTextbox.Text:sub(1,4)
      end)

      TagTextbox:GetPropertyChangedSignal("Text"):Connect(function()
         TagTextbox.Text = TagTextbox.Text:gsub('%D+', '');
      end)

      UsernameTextbox.Changed:Connect(function()
         UsernameTextbox.Text = UsernameTextbox.Text:sub(1,13)
      end)

      TagTextbox.Focused:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
         ):Play()
      end)

      TagTextbox.FocusLost:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(37, 40, 43)}
         ):Play()
      end)

      UsernameTextbox.Focused:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
         ):Play()
      end)

      UsernameTextbox.FocusLost:Connect(function()
         TweenService:Create(
            TextBoxFrame,
            TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(37, 40, 43)}
         ):Play()
      end)

   end)

   function EngUi:Notification(titletext, desctext, btntext)
      local NotificationHolderMain = Instance.new("TextButton")
      local Notification = Instance.new("Frame")
      local NotificationCorner = Instance.new("UICorner")
      local UnderBar = Instance.new("Frame")
      local UnderBarCorner = Instance.new("UICorner")
      local UnderBarFrame = Instance.new("Frame")
      local Text1 = Instance.new("TextLabel")
      local Text2 = Instance.new("TextLabel")
      local AlrightBtn = Instance.new("TextButton")
      local AlrightCorner = Instance.new("UICorner")

      NotificationHolderMain.Name = "NotificationHolderMain"
      NotificationHolderMain.Parent = MainFrame
      NotificationHolderMain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
      NotificationHolderMain.BackgroundTransparency = 1
      NotificationHolderMain.BorderSizePixel = 0
      NotificationHolderMain.Position = UDim2.new(0, 0, 0.0560000017, 0)
      NotificationHolderMain.Size = UDim2.new(0, 681, 0, 374)
      NotificationHolderMain.AutoButtonColor = false
      NotificationHolderMain.Font = Enum.Font.SourceSans
      NotificationHolderMain.Text = ""
      NotificationHolderMain.TextColor3 = Color3.fromRGB(0, 0, 0)
      NotificationHolderMain.TextSize = 14.000
      TweenService:Create(
         NotificationHolderMain,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0.2}
      ):Play()


      Notification.Name = "Notification"
      Notification.Parent = NotificationHolderMain
      Notification.AnchorPoint = Vector2.new(0.5, 0.5)
      Notification.BackgroundColor3 = Color3.fromRGB(15,15,15)
      Notification.ClipsDescendants = true
      Notification.Position = UDim2.new(0.524819076, 0, 0.469270051, 0)
      Notification.Size = UDim2.new(0, 0, 0, 0)
      Notification.BackgroundTransparency = 1

      Notification:TweenSize(UDim2.new(0, 346, 0, 176), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)

      TweenService:Create(
         Notification,
         TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
         {BackgroundTransparency = 0}
      ):Play()

      NotificationCorner.CornerRadius = UDim.new(0, 5)
      NotificationCorner.Name = "NotificationCorner"
      NotificationCorner.Parent = Notification

      UnderBar.Name = "UnderBar"
      UnderBar.Parent = Notification
      UnderBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
      UnderBar.Position = UDim2.new(-0.000297061284, 0, 0.945048928, 0)
      UnderBar.Size = UDim2.new(0, 346, 0, 10)

      UnderBarCorner.CornerRadius = UDim.new(0, 5)
      UnderBarCorner.Name = "UnderBarCorner"
      UnderBarCorner.Parent = UnderBar

      UnderBarFrame.Name = "UnderBarFrame"
      UnderBarFrame.Parent = UnderBar
      UnderBarFrame.BackgroundColor3 = Color3.fromRGB(14,14,14)
      UnderBarFrame.BorderSizePixel = 0
      UnderBarFrame.Position = UDim2.new(-0.000297061284, 0, -3.76068449, 0)
      UnderBarFrame.Size = UDim2.new(0, 346, 0, 40)

      Text1.Name = "Text1"
      Text1.Parent = Notification
      Text1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text1.BackgroundTransparency = 1.000
      Text1.Position = UDim2.new(-0.000594122568, 0, 0.0202020202, 0)
      Text1.Size = UDim2.new(0, 346, 0, 68)
      Text1.Font = Enum.Font.GothamSemibold
      Text1.Text = titletext
      Text1.TextColor3 = Color3.fromRGB(255, 255, 255)
      Text1.TextSize = 20.000

      Text2.Name = "Text2"
      Text2.Parent = Notification
      Text2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Text2.BackgroundTransparency = 1.000
      Text2.Position = UDim2.new(0.106342293, 0, 0.317724228, 0)
      Text2.Size = UDim2.new(0, 272, 0, 63)
      Text2.Font = Enum.Font.Gotham
      Text2.Text = desctext
      Text2.TextColor3 = Color3.fromRGB(171, 172, 176)
      Text2.TextSize = 14.000
      Text2.TextWrapped = true

      AlrightBtn.Name = "AlrightBtn"
      AlrightBtn.Parent = Notification
      AlrightBtn.BackgroundColor3 = Color3.fromRGB(206, 61, 73)
      AlrightBtn.Position = UDim2.new(0.0332369953, 0, 0.789141417, 0)
      AlrightBtn.Size = UDim2.new(0, 322, 0, 27)
      AlrightBtn.Font = Enum.Font.Gotham
      AlrightBtn.Text = btntext
      AlrightBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
      AlrightBtn.TextSize = 13.000
      AlrightBtn.AutoButtonColor = false

      AlrightCorner.CornerRadius = UDim.new(0, 4)
      AlrightCorner.Name = "AlrightCorner"
      AlrightCorner.Parent = AlrightBtn

      AlrightBtn.MouseButton1Click:Connect(function()
         TweenService:Create(
            NotificationHolderMain,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         Notification:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
         TweenService:Create(
            Notification,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundTransparency = 1}
         ):Play()
         wait()
         NotificationHolderMain:Destroy()
      end)

      AlrightBtn.MouseEnter:Connect(function()
         TweenService:Create(
            AlrightBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(255, 178, 102)}
         ):Play()
      end)

      AlrightBtn.MouseLeave:Connect(function()
         TweenService:Create(
            AlrightBtn,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(206, 61, 73)}
         ):Play()
      end)
   end

   MakeDraggable(TopFramess, MainFrame)
   ServersHoldPadding.PaddingLeft = UDim.new(0, 14)
   local ServerHold = {}
   function ServerHold:Server(text,textgame, img)
      local fc = false
      local currentchanneltoggled = ""
      local Server = Instance.new("TextButton")
      local ServerBtnCorner = Instance.new("UICorner")
      local ServerIco = Instance.new("ImageLabel")
      local ServerWhiteFrame = Instance.new("Frame")
      local ServerWhiteFrameCorner = Instance.new("UICorner")

      Server.Name = text .. "Server"
      Server.Parent = ServersHold
      Server.BackgroundColor3 = Color3.fromRGB(20,20,20)
      Server.Position = UDim2.new(0.125, 0, 0, 0)
      Server.Size = UDim2.new(0, 47, 0, 47)
      Server.AutoButtonColor = false
      Server.Font = Enum.Font.Gotham
      Server.Text = ""
      Server.BackgroundTransparency = 1
      Server.TextTransparency = 1
      Server.TextColor3 = Color3.fromRGB(255, 178, 102)
      Server.TextSize = 18.000

      ServerBtnCorner.CornerRadius = UDim.new(1, 0)
      ServerBtnCorner.Name = "ServerCorner"
      ServerBtnCorner.Parent = Server

      ServerWhiteFrame.Name = "ServerWhiteFrame"
      ServerWhiteFrame.Parent = Server
      ServerWhiteFrame.AnchorPoint = Vector2.new(0.5, 0.5)
      ServerWhiteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ServerWhiteFrame.BackgroundTransparency = 1
      ServerWhiteFrame.Position = UDim2.new(-0.347378343, 0, 0.502659559, 0)
      ServerWhiteFrame.Size = UDim2.new(0, 11, 0, 10)

      ServerWhiteFrameCorner.CornerRadius = UDim.new(1, 0)
      ServerWhiteFrameCorner.Name = "ServerWhiteFrameCorner"
      ServerWhiteFrameCorner.Parent = ServerWhiteFrame
      ServersHold.CanvasSize = UDim2.new(0, 0, 0, ServersHoldLayout.AbsoluteContentSize.Y)

      local ServerFrame = Instance.new("Frame")
      local ServerFrame1 = Instance.new("Frame")
      local ServerFrame2 = Instance.new("Frame")
      local ServerTitleFrame = Instance.new("Frame")
      local ServerTitle = Instance.new("TextLabel")
      local ServerTitle2 = Instance.new("TextLabel")
      local GlowFrame = Instance.new("Frame")
      local Glow = Instance.new("ImageLabel")
      local ServerContentFrame = Instance.new("Frame")
      local ServerCorner = Instance.new("UICorner")
      local ChannelCorner = Instance.new("UICorner")
      local ChannelTitleFrame = Instance.new("Frame")
      local Hashtag = Instance.new("TextLabel")
      local ChannelTitle = Instance.new("TextLabel")
      local ChannelContentFrame = Instance.new("Frame")
      local GlowChannel = Instance.new("ImageLabel")
      local ServerChannelHolder = Instance.new("ScrollingFrame")
      local ServerChannelHolderLayout = Instance.new("UIListLayout")
      local ServerChannelHolderPadding = Instance.new("UIPadding")


      ServerFrame.Name = "ServerFrame"
      ServerFrame.Parent = ServersHolder
      ServerFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
      ServerFrame.BorderSizePixel = 0
      ServerFrame.ClipsDescendants = true
      ServerFrame.Position = UDim2.new(0.105726875, 0, 1.01262593, 0)
      ServerFrame.Size = UDim2.new(0, 609, 0, 373)
      ServerFrame.Visible = false

      ServerFrame1.Name = "ServerFrame1"
      ServerFrame1.Parent = ServerFrame
      ServerFrame1.BackgroundColor3 = Color3.fromRGB(20,20,20)
      ServerFrame1.BorderSizePixel = 0
      ServerFrame1.Position = UDim2.new(0, 0, 0.972290039, 0)
      ServerFrame1.Size = UDim2.new(0, 12, 0, 10)

      ServerFrame2.Name = "ServerFrame2"
      ServerFrame2.Parent = ServerFrame
      ServerFrame2.BackgroundColor3 = Color3.fromRGB(20,20,20)
      ServerFrame2.BorderSizePixel = 0
      ServerFrame2.Position = UDim2.new(0.980295539, 0, 0.972290039, 0)
      ServerFrame2.Size = UDim2.new(0, 12, 0, 9)

      ServerTitleFrame.Name = "ServerTitleFrame"
      ServerTitleFrame.Parent = ServerFrame
      ServerTitleFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
      ServerTitleFrame.BackgroundTransparency = 1.000
      ServerTitleFrame.BorderSizePixel = 0
      ServerTitleFrame.Position = UDim2.new(-0.0010054264, 0, -0.000900391256, 0)
      ServerTitleFrame.Size = UDim2.new(0, 180, 0, 40)

      ServerTitle.Name = "ServerTitle"
      ServerTitle.Parent = ServerTitleFrame
      ServerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ServerTitle.BackgroundTransparency = 1.000
      ServerTitle.BorderSizePixel = 0
      ServerTitle.Position = UDim2.new(0.0751359761, 0, 0, 0)
      ServerTitle.Size = UDim2.new(0, 97, 0, 39)
      ServerTitle.Font = Enum.Font.GothamSemibold
      ServerTitle.Text = text
      ServerTitle.TextColor3 = Color3.fromRGB(255, 178, 102)
      ServerTitle.TextSize = 15.000
      ServerTitle.TextXAlignment = Enum.TextXAlignment.Left

      ServerTitle2.Name = "ServerTitle"
      ServerTitle2.Parent = ServerTitleFrame
      ServerTitle2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ServerTitle2.BackgroundTransparency = 1
      ServerTitle2.BorderSizePixel = 0
      ServerTitle2.Position = UDim2.new(0.0541359761, 0, 7.5, 0)
      ServerTitle2.Size = UDim2.new(0, 97, 0, 39)
      ServerTitle2.ZIndex = 999
      ServerTitle2.Font = Enum.Font.GothamSemibold
      ServerTitle2.Text = textgame
      ServerTitle2.TextColor3 = Color3.fromRGB(255, 255, 255)
      ServerTitle2.TextTransparency = 0.8
      ServerTitle2.TextSize = 13.000
      ServerTitle2.TextXAlignment = Enum.TextXAlignment.Left

      GlowFrame.Name = "GlowFrame"
      GlowFrame.Parent = ServerFrame
      GlowFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
      GlowFrame.BackgroundTransparency = 1.000
      GlowFrame.BorderSizePixel = 0
      GlowFrame.Position = UDim2.new(-0.0010054264, 0, -0.000900391256, 0)
      GlowFrame.Size = UDim2.new(0, 609, 0, 40)

      Glow.Name = "Glow"
      Glow.Parent = GlowFrame
      Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Glow.BackgroundTransparency = 1.000
      Glow.BorderSizePixel = 0
      Glow.Position = UDim2.new(0, -15, 0, -15)
      Glow.Size = UDim2.new(1, 30, 1, 30)
      Glow.ZIndex = 0
      Glow.Image = "rbxassetid://4996891970"
      Glow.ImageColor3 = Color3.fromRGB(15, 15, 15)
      Glow.ScaleType = Enum.ScaleType.Slice
      Glow.SliceCenter = Rect.new(20, 20, 280, 280)

      ServerContentFrame.Name = "ServerContentFrame"
      ServerContentFrame.Parent = ServerFrame
      ServerContentFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
      ServerContentFrame.BackgroundTransparency = 1.000
      ServerContentFrame.BorderSizePixel = 0
      ServerContentFrame.Position = UDim2.new(-0.0010054264, 0, 0.106338218, 0)
      ServerContentFrame.Size = UDim2.new(0, 180, 0, 333)

      ServerCorner.CornerRadius = UDim.new(0, 4)
      ServerCorner.Name = "ServerCorner"
      ServerCorner.Parent = ServerFrame

      ChannelTitleFrame.Name = "ChannelTitleFrame"
      ChannelTitleFrame.Parent = ServerFrame
      ChannelTitleFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
      ChannelTitleFrame.BorderSizePixel = 0
      ChannelTitleFrame.Position = UDim2.new(0.294561088, 0, -0.000900391256, 0)
      ChannelTitleFrame.Size = UDim2.new(0, 429, 0, 40)

      Hashtag.Name = "Hashtag"
      Hashtag.Parent = ChannelTitleFrame
      Hashtag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Hashtag.BackgroundTransparency = 1.000
      Hashtag.BorderSizePixel = 0
      Hashtag.Position = UDim2.new(0.0279720277, 0, 0, 0)
      Hashtag.Size = UDim2.new(0, 19, 0, 39)
      Hashtag.Font = Enum.Font.Gotham
      Hashtag.Text = "#"
      Hashtag.TextColor3 = Color3.fromRGB(114, 118, 125)
      Hashtag.TextSize = 25.000

      ChannelTitle.Name = "ChannelTitle"
      ChannelTitle.Parent = ChannelTitleFrame
      ChannelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ChannelTitle.BackgroundTransparency = 1.000
      ChannelTitle.BorderSizePixel = 0
      ChannelTitle.Position = UDim2.new(0.0862470865, 0, 0, 0)
      ChannelTitle.Size = UDim2.new(0, 95, 0, 39)
      ChannelTitle.Font = Enum.Font.GothamSemibold
      ChannelTitle.Text = ""
      ChannelTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
      ChannelTitle.TextSize = 15.000
      ChannelTitle.TextXAlignment = Enum.TextXAlignment.Left

      ChannelContentFrame.Name = "ChannelContentFrame"
      ChannelContentFrame.Parent = ServerFrame
      ChannelContentFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
      ChannelContentFrame.BorderSizePixel = 0
      ChannelContentFrame.ClipsDescendants = true
      ChannelContentFrame.Position = UDim2.new(0.294561088, 0, 0.106338218, 0)
      ChannelContentFrame.Size = UDim2.new(0, 429, 0, 333)

      GlowChannel.Name = "GlowChannel"
      GlowChannel.Parent = ChannelContentFrame
      GlowChannel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      GlowChannel.BackgroundTransparency = 1.000
      GlowChannel.BorderSizePixel = 0
      GlowChannel.Position = UDim2.new(0, -33, 0, -91)
      GlowChannel.Size = UDim2.new(1.06396091, 30, 0.228228226, 30)
      GlowChannel.ZIndex = 0
      GlowChannel.Image = "rbxassetid://4996891970"
      GlowChannel.ImageColor3 = Color3.fromRGB(15, 15, 15)
      GlowChannel.ScaleType = Enum.ScaleType.Slice
      GlowChannel.SliceCenter = Rect.new(20, 20, 280, 280)

      ServerChannelHolder.Name = "ServerChannelHolder"
      ServerChannelHolder.Parent = ServerContentFrame
      ServerChannelHolder.Active = true
      ServerChannelHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      ServerChannelHolder.BackgroundTransparency = 1.000
      ServerChannelHolder.BorderSizePixel = 0
      ServerChannelHolder.Position = UDim2.new(0.00535549596, 0, 0.0241984241, 0)
      ServerChannelHolder.Selectable = false
      ServerChannelHolder.Size = UDim2.new(0, 179, 0, 278)
      ServerChannelHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
      ServerChannelHolder.ScrollBarThickness = 4
      ServerChannelHolder.ScrollBarImageColor3 = Color3.fromRGB(18, 19, 21)
      ServerChannelHolder.ScrollBarImageTransparency = 1

      ServerChannelHolderLayout.Name = "ServerChannelHolderLayout"
      ServerChannelHolderLayout.Parent = ServerChannelHolder
      ServerChannelHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
      ServerChannelHolderLayout.Padding = UDim.new(0, 4)

      ServerChannelHolderPadding.Name = "ServerChannelHolderPadding"
      ServerChannelHolderPadding.Parent = ServerChannelHolder
      ServerChannelHolderPadding.PaddingLeft = UDim.new(0, 9)

      ServerChannelHolder.MouseEnter:Connect(function()
         ServerChannelHolder.ScrollBarImageTransparency = 0
      end)

      ServerChannelHolder.MouseLeave:Connect(function()
         ServerChannelHolder.ScrollBarImageTransparency = 1
      end)

      Server.MouseEnter:Connect(
         function()
            if currentservertoggled ~= Server.Name then
               TweenService:Create(
                  Server,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(114, 137, 228)}
               ):Play()
               TweenService:Create(
                  ServerBtnCorner,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {CornerRadius = UDim.new(0, 15)}
               ):Play()
               ServerWhiteFrame:TweenSize(
                  UDim2.new(0, 11, 0, 27),
                  Enum.EasingDirection.Out,
                  Enum.EasingStyle.Quart,
                  .3,
                  true
               )
            end
         end
      )

      Server.MouseLeave:Connect(
         function()
            if currentservertoggled ~= Server.Name then
               TweenService:Create(
                  Server,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(25,25,25)}
               ):Play()
               TweenService:Create(
                  ServerBtnCorner,
                  TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {CornerRadius = UDim.new(1, 0)}
               ):Play()
               ServerWhiteFrame:TweenSize(
                  UDim2.new(0, 11, 0, 10),
                  Enum.EasingDirection.Out,
                  Enum.EasingStyle.Quart,
                  .3,
                  true
               )
            end
         end
      )

      Server.MouseButton1Click:Connect(
         function()
            currentservertoggled = Server.Name
            for i, v in next, ServersHolder:GetChildren() do
               if v.Name == "ServerFrame" then
                  v.Visible = false
               end
               ServerFrame.Visible = true
            end
            for i, v in next, ServersHold:GetChildren() do
               if v.ClassName == "TextButton" then
                  TweenService:Create(
                     v,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {BackgroundColor3 = Color3.fromRGB(25,25,25)}
                  ):Play()
                  TweenService:Create(
                     Server,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {BackgroundColor3 = Color3.fromRGB(25,25,25)}
                  ):Play()
                  TweenService:Create(
                     v.ServerCorner,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {CornerRadius = UDim.new(1, 0)}
                  ):Play()
                  TweenService:Create(
                     ServerBtnCorner,
                     TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                     {CornerRadius = UDim.new(0, 15)}
                  ):Play()
                  v.ServerWhiteFrame:TweenSize(
                     UDim2.new(0, 11, 0, 10),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     .3,
                     true
                  )
                  ServerWhiteFrame:TweenSize(
                     UDim2.new(0, 11, 0, 46),
                     Enum.EasingDirection.Out,
                     Enum.EasingStyle.Quart,
                     .3,
                     true
                  )
               end
            end
         end
      )

      if fs == false then
         TweenService:Create(
            Server,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(25,25,25)}
         ):Play()
         TweenService:Create(
            ServerBtnCorner,
            TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {CornerRadius = UDim.new(0, 15)}
         ):Play()
         ServerWhiteFrame:TweenSize(
            UDim2.new(0, 11, 0, 46),
            Enum.EasingDirection.Out,
            Enum.EasingStyle.Quart,
            .3,
            true
         )
         ServerFrame.Visible = true
         Server.Name = text .. "Server"
         currentservertoggled = Server.Name
         fs = true
      end
      local ChannelHold = {}
      function ChannelHold:Channel(text)
         local ChannelBtn = Instance.new("TextButton")
         local ChannelBtnCorner = Instance.new("UICorner")
         local ChannelBtnHashtag = Instance.new("TextLabel")
         local ChannelBtnTitle = Instance.new("TextLabel")

         ChannelBtn.Name = text .. "ChannelBtn"
         ChannelBtn.Parent = ServerChannelHolder
         ChannelBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
         ChannelBtn.BorderSizePixel = 0
         ChannelBtn.Position = UDim2.new(0.24118948, 0, 0.578947365, 0)
         ChannelBtn.Size = UDim2.new(0, 160, 0, 30)
         ChannelBtn.AutoButtonColor = false
         ChannelBtn.Font = Enum.Font.SourceSans
         ChannelBtn.Text = ""
         ChannelBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
         ChannelBtn.TextSize = 14.000

         ChannelBtnCorner.CornerRadius = UDim.new(0, 8)
         ChannelBtnCorner.Name = "ChannelBtnCorner"
         ChannelBtnCorner.Parent = ChannelBtn

         ChannelBtnHashtag.Name = "ChannelBtnHashtag"
         ChannelBtnHashtag.Parent = ChannelBtn
         ChannelBtnHashtag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         ChannelBtnHashtag.BackgroundTransparency = 1.000
         ChannelBtnHashtag.BorderSizePixel = 0
         ChannelBtnHashtag.Position = UDim2.new(0.08, 0, 0, 0)
         ChannelBtnHashtag.Size = UDim2.new(0, 24, 0, 30)
         ChannelBtnHashtag.Font = Enum.Font.Gotham
         ChannelBtnHashtag.Text = ""
         ChannelBtnHashtag.TextColor3 = Color3.fromRGB(114, 118, 125)
         ChannelBtnHashtag.TextSize = 21.000

         ChannelBtnTitle.Name = "ChannelBtnTitle"
         ChannelBtnTitle.Parent = ChannelBtn
         ChannelBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         ChannelBtnTitle.BackgroundTransparency = 1.000
         ChannelBtnTitle.BorderSizePixel = 0
         ChannelBtnTitle.Position = UDim2.new(0.05, 0, -0.166666672, 0)
         ChannelBtnTitle.Size = UDim2.new(0, 95, 0, 39)
         ChannelBtnTitle.Font = Enum.Font.Gotham
         ChannelBtnTitle.Text = text
         ChannelBtnTitle.TextColor3 = Color3.fromRGB(114, 118, 125)
         ChannelBtnTitle.TextSize = 14.000
         ChannelBtnTitle.TextXAlignment = Enum.TextXAlignment.Left
         ServerChannelHolder.CanvasSize = UDim2.new(0, 0, 0, ServerChannelHolderLayout.AbsoluteContentSize.Y)

         local ChannelHolder = Instance.new("ScrollingFrame")
         local ChannelHolderLayout = Instance.new("UIListLayout")

         ChannelHolder.Name = "ChannelHolder"
         ChannelHolder.Parent = ChannelContentFrame
         ChannelHolder.Active = true
         ChannelHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
         ChannelHolder.BackgroundTransparency = 1.000
         ChannelHolder.BorderSizePixel = 0
         ChannelHolder.Position = UDim2.new(0.0360843192, 0, 0.0241984241, 0)
         ChannelHolder.Size = UDim2.new(0, 412, 0, 314)
         ChannelHolder.ScrollBarThickness = 6
         ChannelHolder.CanvasSize = UDim2.new(0,0,0,0)
         ChannelHolder.ScrollBarImageTransparency = 0
         ChannelHolder.ScrollBarImageColor3 = Color3.fromRGB(18, 19, 21)
         ChannelHolder.Visible = false
         ChannelHolder.ClipsDescendants = false

         ChannelHolderLayout.Name = "ChannelHolderLayout"
         ChannelHolderLayout.Parent = ChannelHolder
         ChannelHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
         ChannelHolderLayout.Padding = UDim.new(0, 8)

         ChannelBtn.MouseEnter:Connect(function()
            if currentchanneltoggled ~= ChannelBtn.Name then
               ChannelBtn.BackgroundColor3 = Color3.fromRGB(10,10,10)
               ChannelBtnTitle.TextColor3 = Color3.fromRGB(220,221,222)
            end
         end)

         ChannelBtn.MouseLeave:Connect(function()
            if currentchanneltoggled ~= ChannelBtn.Name then
               ChannelBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
               ChannelBtnTitle.TextColor3 = Color3.fromRGB(114, 118, 125)
            end
         end)

         ChannelBtn.MouseButton1Click:Connect(function()
            for i, v in next, ChannelContentFrame:GetChildren() do
               if v.Name == "ChannelHolder" then
                  v.Visible = false
               end
               ChannelHolder.Visible = true
            end
            for i, v in next, ServerChannelHolder:GetChildren() do
               if v.ClassName == "TextButton" then
                  v.BackgroundColor3 = Color3.fromRGB(25,25,25)
                  v.ChannelBtnTitle.TextColor3 = Color3.fromRGB(114, 118, 125)
               end
               ServerFrame.Visible = true
            end
            ChannelTitle.Text = text
            ChannelBtn.BackgroundColor3 = Color3.fromRGB(10,10,10)
            ChannelBtnTitle.TextColor3 = Color3.fromRGB(255, 255, 200)
            currentchanneltoggled = ChannelBtn.Name
         end)

         if fc == false then
            fc = true
            ChannelTitle.Text = text
            ChannelBtn.BackgroundColor3 = Color3.fromRGB(10,10,10)
            ChannelBtnTitle.TextColor3 = Color3.fromRGB(255, 255, 200)
            currentchanneltoggled = ChannelBtn.Name
            ChannelHolder.Visible = true
         end
         local ChannelContent = {}
         function ChannelContent:Button(text,callback)
            local Button = Instance.new("TextButton")
            local ButtonCorner = Instance.new("UICorner")

            Button.Name = "Button"
            Button.Parent = ChannelHolder
            Button.BackgroundColor3 = Color3.fromRGB(20,20,20)
            Button.Size = UDim2.new(0, 401, 0, 30)
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.Gotham
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 14.000
            Button.Text = text

            ButtonCorner.CornerRadius = UDim.new(0, 4)
            ButtonCorner.Name = "ButtonCorner"
            ButtonCorner.Parent = Button

            Button.MouseEnter:Connect(function()
               TweenService:Create(
                  Button,
                  TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(15,15,15)}
               ):Play()
            end)

            Button.MouseButton1Click:Connect(function()
               pcall(callback)
               Button.TextSize = 0
               TweenService:Create(
                  Button,
                  TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                  {TextSize = 14}
               ):Play()
            end)

            Button.MouseLeave:Connect(function()
               TweenService:Create(
                  Button,
                  TweenInfo.new(.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(20,20,20)}
               ):Play()
            end)
            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end
         function ChannelContent:Toggle(text,default,callback)
            local toggled = false
            local Toggle = Instance.new("TextButton")
            local ToggleTitle = Instance.new("TextLabel")
            local ToggleFrame = Instance.new("Frame")
            local ToggleFrameCorner = Instance.new("UICorner")
            local ToggleFrameCircle = Instance.new("Frame")
            local ToggleFrameCircleCorner = Instance.new("UICorner")
            local Icon = Instance.new("ImageLabel")

            Toggle.Name = "Toggle"
            Toggle.Parent = ChannelHolder
            Toggle.BackgroundColor3 = Color3.fromRGB(25,25,25)
            Toggle.BorderSizePixel = 0
            Toggle.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
            Toggle.Size = UDim2.new(0, 401, 0, 30)
            Toggle.AutoButtonColor = false
            Toggle.Font = Enum.Font.Gotham
            Toggle.Text = ""
            Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.TextSize = 14.000

            ToggleTitle.Name = "ToggleTitle"
            ToggleTitle.Parent = Toggle
            ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleTitle.BackgroundTransparency = 1.000
            ToggleTitle.Position = UDim2.new(0, 5, 0, 0)
            ToggleTitle.Size = UDim2.new(0, 200, 0, 30)
            ToggleTitle.Font = Enum.Font.Gotham
            ToggleTitle.Text = text
            ToggleTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            ToggleTitle.TextSize = 14.000
            ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

            ToggleFrame.Name = "ToggleFrame"
            ToggleFrame.Parent = Toggle
            ToggleFrame.BackgroundColor3 = Color3.fromRGB(10,10,10)
            ToggleFrame.Position = UDim2.new(0.900481343, -5, 0.13300018, 0)
            ToggleFrame.Size = UDim2.new(0, 40, 0, 21)

            ToggleFrameCorner.CornerRadius = UDim.new(0, 4)
            ToggleFrameCorner.Name = "ToggleFrameCorner"
            ToggleFrameCorner.Parent = ToggleFrame

            ToggleFrameCircle.Name = "ToggleFrameCircle"
            ToggleFrameCircle.Parent = ToggleFrame
            ToggleFrameCircle.BackgroundColor3 = Color3.fromRGB(50,50,50)
            ToggleFrameCircle.Position = UDim2.new(0.234999999, -5, 0.133000001, 0)
            ToggleFrameCircle.Size = UDim2.new(0, 15, 0, 15)

            ToggleFrameCircleCorner.CornerRadius = UDim.new(0, 4)
            ToggleFrameCircleCorner.Name = "ToggleFrameCircleCorner"
            ToggleFrameCircleCorner.Parent = ToggleFrameCircle

            Icon.Name = "Icon"
            Icon.Parent = ToggleFrameCircle
            Icon.AnchorPoint = Vector2.new(0.5, 0.5)
            Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Icon.BackgroundTransparency = 1.000
            Icon.BorderColor3 = Color3.fromRGB(255,255,255)
            Icon.Position = UDim2.new(0, 7, 0, 7)
            Icon.Size = UDim2.new(0, 13, 0, 13)
            Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
            Icon.ImageColor3 = Color3.fromRGB(255,255,255)

            Toggle.MouseButton1Click:Connect(function()
               if toggled == false then
                  TweenService:Create(Icon,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
                  TweenService:Create(ToggleFrame,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(255, 102, 102)}):Play()
                  ToggleFrameCircle:TweenPosition(UDim2.new(0.655, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                  TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
                  Icon.Image = "http://www.roblox.com/asset/?id=6023426926"
                  wait(.1)
                  TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
               else
                  TweenService:Create(Icon,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
                  TweenService:Create(ToggleFrame,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(10,10,10)}):Play()
                  ToggleFrameCircle:TweenPosition(UDim2.new(0.234999999, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
                  TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
                  Icon.Image = "http://www.roblox.com/asset/?id=6035047409"
                  wait(.01)
                  TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
               end
               toggled = not toggled
               pcall(callback, toggled)
            end)
            if default == true then
               toggled = false
               TweenService:Create(Icon,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageColor3 = Color3.fromRGB(255,255,255)}):Play()
               TweenService:Create(ToggleFrame,TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{BackgroundColor3 = Color3.fromRGB(255, 102, 102)}):Play()
               ToggleFrameCircle:TweenPosition(UDim2.new(0.655, -5, 0.133000001, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .3, true)
               TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 1}):Play()
               Icon.Image = "http://www.roblox.com/asset/?id=6023426926"
               wait(.1)
               TweenService:Create(Icon,TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{ImageTransparency = 0}):Play()
               toggled = not toggled
               pcall(callback, toggled)
            else
               wait(.1)
            end
            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end

         function ChannelContent:Slider(text, min, max, start, callback)
            local SliderFunc = {}
            local dragging = false
            local Slider = Instance.new("TextButton")
            local SliderTitle = Instance.new("TextLabel")
            local SliderFrame = Instance.new("Frame")
            local SliderFrameCorner = Instance.new("UICorner")
            local CurrentValueFrame = Instance.new("Frame")
            local CurrentValueFrameCorner = Instance.new("UICorner")
            local Zip = Instance.new("Frame")
            local ZipCorner = Instance.new("UICorner")
            local ValueBubble = Instance.new("Frame")
            local ValueBubbleCorner = Instance.new("UICorner")
            local SquareBubble = Instance.new("Frame")
            local GlowBubble = Instance.new("ImageLabel")
            local ValueLabel = Instance.new("TextLabel")


            Slider.Name = "Slider"
            Slider.Parent = ChannelHolder
            Slider.BackgroundColor3 = Color3.fromRGB(25,25,25)
            Slider.BorderSizePixel = 0
            Slider.Position = UDim2.new(0, 0, 0.216560602, 0)
            Slider.Size = UDim2.new(0, 401, 0, 38)
            Slider.AutoButtonColor = false
            Slider.Font = Enum.Font.Gotham
            Slider.Text = ""
            Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
            Slider.TextSize = 14.000

            SliderTitle.Name = "SliderTitle"
            SliderTitle.Parent = Slider
            SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 178, 102)
            SliderTitle.BackgroundTransparency = 1.000
            SliderTitle.Position = UDim2.new(0, 5, 0, -4)
            SliderTitle.Size = UDim2.new(0, 200, 0, 27)
            SliderTitle.Font = Enum.Font.Gotham
            SliderTitle.Text = text
            SliderTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            SliderTitle.TextSize = 14.000
            SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = Slider
            SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            SliderFrame.BackgroundColor3 = Color3.fromRGB(20,20,20)
            SliderFrame.Position = UDim2.new(0.497999996, 0, 0.757000029, 0)
            SliderFrame.Size = UDim2.new(0, 385, 0, 8)

            SliderFrameCorner.Name = "SliderFrameCorner"
            SliderFrameCorner.Parent = SliderFrame

            CurrentValueFrame.Name = "CurrentValueFrame"
            CurrentValueFrame.Parent = SliderFrame
            CurrentValueFrame.BackgroundColor3 = Color3.fromRGB(255, 102, 102)
            CurrentValueFrame.Size = UDim2.new((start or 0) / max, 0, 0, 8)

            CurrentValueFrameCorner.Name = "CurrentValueFrameCorner"
            CurrentValueFrameCorner.Parent = CurrentValueFrame

            Zip.Name = "Zip"
            Zip.Parent = SliderFrame
            Zip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Zip.Position = UDim2.new((start or 0)/max, -6,-0.644999981, 0)
            Zip.Size = UDim2.new(0, 10, 0, 18)
            ZipCorner.CornerRadius = UDim.new(0, 3)
            ZipCorner.Name = "ZipCorner"
            ZipCorner.Parent = Zip

            ValueBubble.Name = "ValueBubble"
            ValueBubble.Parent = Zip
            ValueBubble.AnchorPoint = Vector2.new(0.5, 0.5)
            ValueBubble.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            ValueBubble.Position = UDim2.new(0.5, 0, -1.00800002, 0)
            ValueBubble.Size = UDim2.new(0, 36, 0, 21)
            ValueBubble.Visible = false


            Zip.MouseEnter:Connect(function()
               if dragging == false then
                  ValueBubble.Visible = true
               end
            end)

            Zip.MouseLeave:Connect(function()
               if dragging == false then
                  ValueBubble.Visible = false
               end
            end)


            ValueBubbleCorner.CornerRadius = UDim.new(0, 3)
            ValueBubbleCorner.Name = "ValueBubbleCorner"
            ValueBubbleCorner.Parent = ValueBubble

            SquareBubble.Name = "SquareBubble"
            SquareBubble.Parent = ValueBubble
            SquareBubble.AnchorPoint = Vector2.new(0.5, 0.5)
            SquareBubble.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            SquareBubble.BorderSizePixel = 0
            SquareBubble.Position = UDim2.new(0.493000001, 0, 0.637999971, 0)
            SquareBubble.Rotation = 45.000
            SquareBubble.Size = UDim2.new(0, 19, 0, 19)

            GlowBubble.Name = "GlowBubble"
            GlowBubble.Parent = ValueBubble
            GlowBubble.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            GlowBubble.BackgroundTransparency = 1.000
            GlowBubble.BorderSizePixel = 0
            GlowBubble.Position = UDim2.new(0, -15, 0, -15)
            GlowBubble.Size = UDim2.new(1, 30, 1, 30)
            GlowBubble.ZIndex = 0
            GlowBubble.Image = "rbxassetid://4996891970"
            GlowBubble.ImageColor3 = Color3.fromRGB(15, 15, 15)
            GlowBubble.ScaleType = Enum.ScaleType.Slice
            GlowBubble.SliceCenter = Rect.new(20, 20, 280, 280)

            ValueLabel.Name = "ValueLabel"
            ValueLabel.Parent = ValueBubble
            ValueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ValueLabel.BackgroundTransparency = 1.000
            ValueLabel.Size = UDim2.new(0, 36, 0, 21)
            ValueLabel.Font = Enum.Font.Gotham
            ValueLabel.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)
            ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
            ValueLabel.TextSize = 10.000
            local function move(input)
               local pos =
                  UDim2.new(
                     math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1),
                     -6,
                     -0.644999981,
                     0
                  )
               local pos1 =
                  UDim2.new(
                     math.clamp((input.Position.X - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X, 0, 1),
                     0,
                     0,
                     8
                  )
               CurrentValueFrame.Size = pos1
               Zip.Position = pos
               local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
               ValueLabel.Text = tostring(value)
               pcall(callback, value)
            end
            Zip.InputBegan:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then
                     dragging = true
                     ValueBubble.Visible = true
                  end
               end
            )
            Zip.InputEnded:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then
                     dragging = false
                     ValueBubble.Visible = false
                  end
               end
            )
            game:GetService("UserInputService").InputChanged:Connect(
            function(input)
               if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                  move(input)
               end
            end
            )

            function SliderFunc:Change(tochange)
               CurrentValueFrame.Size = UDim2.new((tochange or 0) / max, 0, 0, 8)
               Zip.Position = UDim2.new((tochange or 0)/max, -6,-0.644999981, 0)
               ValueLabel.Text = tostring(tochange and math.floor((tochange / max) * (max - min) + min) or 0)
               pcall(callback, tochange)
            end

            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
            return SliderFunc
         end
         function ChannelContent:Line()
            local Seperator1 = Instance.new("Frame")
            local Seperator2 = Instance.new("Frame")

            Seperator1.Name = "Seperator1"
            Seperator1.Parent = ChannelHolder
            Seperator1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Seperator1.BackgroundTransparency = 1.000
            Seperator1.Position = UDim2.new(0, 0, 0.350318581, 0)
            Seperator1.Size = UDim2.new(0, 100, 0, 8)

            Seperator2.Name = "Seperator2"
            Seperator2.Parent = Seperator1
            Seperator2.BackgroundColor3 = Color3.fromRGB(169, 0, 0)
            Seperator2.BorderSizePixel = 0
            Seperator2.Position = UDim2.new(0, 0, 0, 4)
            Seperator2.Size = UDim2.new(0, 401, 0, 1)
            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end
         function ChannelContent:Dropdown(text, sletext, list, callback)
            local DropFunc = {}
            local itemcount = 0
            local framesize = 0
            local DropTog = false
            local Dropdown = Instance.new("Frame")
            local DropdownTitle = Instance.new("TextLabel")
            local DropdownFrameOutline = Instance.new("Frame")
            local DropdownFrameOutlineCorner = Instance.new("UICorner")
            local DropdownFrame = Instance.new("Frame")
            local DropdownFrameCorner = Instance.new("UICorner")
            local CurrentSelectedText = Instance.new("TextLabel")
            local ArrowImg = Instance.new("ImageLabel")
            local DropdownFrameBtn = Instance.new("TextButton")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = ChannelHolder
            Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
            Dropdown.Size = UDim2.new(0, 403, 0, 73)

            DropdownTitle.Name = "DropdownTitle"
            DropdownTitle.Parent = Dropdown
            DropdownTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownTitle.BackgroundTransparency = 1.000
            DropdownTitle.Position = UDim2.new(0, 5, 0, 0)
            DropdownTitle.Size = UDim2.new(0, 200, 0, 29)
            DropdownTitle.Font = Enum.Font.Gotham
            DropdownTitle.Text = text
            DropdownTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            DropdownTitle.TextSize = 14.000
            DropdownTitle.TextXAlignment = Enum.TextXAlignment.Left

            DropdownFrameOutline.Name = "DropdownFrameOutline"
            DropdownFrameOutline.Parent = DropdownTitle
            DropdownFrameOutline.AnchorPoint = Vector2.new(0.5, 0.5)
            DropdownFrameOutline.BackgroundColor3 = Color3.fromRGB(15,15,15)
            DropdownFrameOutline.Position = UDim2.new(0.988442957, 0, 1.6197437, 0)
            DropdownFrameOutline.Size = UDim2.new(0, 396, 0, 36)

            DropdownFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
            DropdownFrameOutlineCorner.Name = "DropdownFrameOutlineCorner"
            DropdownFrameOutlineCorner.Parent = DropdownFrameOutline

            DropdownFrame.Name = "DropdownFrame"
            DropdownFrame.Parent = DropdownTitle
            DropdownFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
            DropdownFrame.ClipsDescendants = true
            DropdownFrame.Position = UDim2.new(0.00999999978, 0, 1.06638527, 0)
            DropdownFrame.Selectable = true
            DropdownFrame.Size = UDim2.new(0, 392, 0, 32)

            DropdownFrameCorner.CornerRadius = UDim.new(0, 4)
            DropdownFrameCorner.Name = "DropdownFrameCorner"
            DropdownFrameCorner.Parent = DropdownFrame

            CurrentSelectedText.Name = "CurrentSelectedText"
            CurrentSelectedText.Parent = DropdownFrame
            CurrentSelectedText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            CurrentSelectedText.BackgroundTransparency = 1.000
            CurrentSelectedText.Position = UDim2.new(0.0178571437, 0, 0, 0)
            CurrentSelectedText.Size = UDim2.new(0, 193, 0, 32)
            CurrentSelectedText.Font = Enum.Font.Gotham
            CurrentSelectedText.Text = sletext
            CurrentSelectedText.TextColor3 = Color3.fromRGB(212, 212, 212)
            CurrentSelectedText.TextSize = 14.000
            CurrentSelectedText.TextXAlignment = Enum.TextXAlignment.Left

            ArrowImg.Name = "ArrowImg"
            ArrowImg.Parent = CurrentSelectedText
            ArrowImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ArrowImg.BackgroundTransparency = 1.000
            ArrowImg.Position = UDim2.new(1.84974098, 0, 0.167428851, 0)
            ArrowImg.Size = UDim2.new(0, 22, 0, 22)
            ArrowImg.Image = "http://www.roblox.com/asset/?id=6034818372"
            ArrowImg.ImageColor3 = Color3.fromRGB(212, 212, 212)

            DropdownFrameBtn.Name = "DropdownFrameBtn"
            DropdownFrameBtn.Parent = DropdownFrame
            DropdownFrameBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownFrameBtn.BackgroundTransparency = 1.000
            DropdownFrameBtn.Size = UDim2.new(0, 392, 0, 32)
            DropdownFrameBtn.Font = Enum.Font.SourceSans
            DropdownFrameBtn.Text = ""
            DropdownFrameBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
            DropdownFrameBtn.TextSize = 14.000

            local DropdownFrameMainOutline = Instance.new("Frame")
            local DropdownFrameMainOutlineCorner = Instance.new("UICorner")
            local DropdownFrameMain = Instance.new("Frame")
            local DropdownFrameMainCorner = Instance.new("UICorner")
            local DropItemHolderLabel = Instance.new("TextLabel")
            local DropItemHolder = Instance.new("ScrollingFrame")
            local DropItemHolderLayout = Instance.new("UIListLayout")

            DropdownFrameMainOutline.Name = "DropdownFrameMainOutline"
            DropdownFrameMainOutline.Parent = DropdownTitle
            DropdownFrameMainOutline.BackgroundColor3 = Color3.fromRGB(15,15,15)
            DropdownFrameMainOutline.Position = UDim2.new(-0.00155700743, 0, 2.16983342, 0)
            DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, 81)
            DropdownFrameMainOutline.Visible = false

            DropdownFrameMainOutlineCorner.CornerRadius = UDim.new(0, 3)
            DropdownFrameMainOutlineCorner.Name = "DropdownFrameMainOutlineCorner"
            DropdownFrameMainOutlineCorner.Parent = DropdownFrameMainOutline

            DropdownFrameMain.Name = "DropdownFrameMain"
            DropdownFrameMain.Parent = DropdownTitle
            DropdownFrameMain.BackgroundColor3 = Color3.fromRGB(25,25,25)
            DropdownFrameMain.ClipsDescendants = true
            DropdownFrameMain.Position = UDim2.new(0.00999999978, 0, 2.2568965, 0)
            DropdownFrameMain.Selectable = true
            DropdownFrameMain.Size = UDim2.new(0, 392, 0, 77)
            DropdownFrameMain.Visible = false

            DropdownFrameMainCorner.CornerRadius = UDim.new(0, 4)
            DropdownFrameMainCorner.Name = "DropdownFrameMainCorner"
            DropdownFrameMainCorner.Parent = DropdownFrameMain

            DropItemHolderLabel.Name = "ItemHolderLabel"
            DropItemHolderLabel.Parent = DropdownFrameMain
            DropItemHolderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropItemHolderLabel.BackgroundTransparency = 1.000
            DropItemHolderLabel.Position = UDim2.new(0.0178571437, 0, 0, 0)
            DropItemHolderLabel.Size = UDim2.new(0, 193, 0, 13)
            DropItemHolderLabel.Font = Enum.Font.Gotham
            DropItemHolderLabel.Text = ""
            DropItemHolderLabel.TextColor3 = Color3.fromRGB(212, 212, 212)
            DropItemHolderLabel.TextSize = 14.000
            DropItemHolderLabel.TextXAlignment = Enum.TextXAlignment.Left

            DropItemHolder.Name = "ItemHolder"
            DropItemHolder.Parent = DropItemHolderLabel
            DropItemHolder.Active = true
            DropItemHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropItemHolder.BackgroundTransparency = 1.000
            DropItemHolder.Position = UDim2.new(0, 0, 0.215384638, 0)
            DropItemHolder.Size = UDim2.new(0, 385, 0, 0)
            DropItemHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
            DropItemHolder.ScrollBarThickness = 4
            DropItemHolder.BorderSizePixel = 0
            DropItemHolder.ScrollBarImageColor3 = Color3.fromRGB(255, 178, 102)

            DropItemHolderLayout.Name = "ItemHolderLayout"
            DropItemHolderLayout.Parent = DropItemHolder
            DropItemHolderLayout.SortOrder = Enum.SortOrder.LayoutOrder
            DropItemHolderLayout.Padding = UDim.new(0, 0)

            DropdownFrameBtn.MouseButton1Click:Connect(function()
               if DropTog == false then
                  DropdownFrameMain.Visible = true
                  DropdownFrameMainOutline.Visible = true
                  Dropdown.Size = UDim2.new(0, 403, 0, 73 + DropdownFrameMainOutline.AbsoluteSize.Y)
                  ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)

               else
                  Dropdown.Size = UDim2.new(0, 403, 0, 73)
                  DropdownFrameMain.Visible = false
                  DropdownFrameMainOutline.Visible = false
                  ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
               end
               DropTog = not DropTog
            end)


            for i,v in next, list do
               itemcount = itemcount + 1

               if itemcount == 1 then
                  framesize = 29
               elseif itemcount == 2 then
                  framesize = 58
               elseif itemcount >= 3 then
                  framesize = 87
               end

               local Item = Instance.new("TextButton")
               local ItemCorner = Instance.new("UICorner")
               local ItemText = Instance.new("TextLabel")

               Item.Name = "Item"
               Item.Parent = DropItemHolder
               Item.BackgroundColor3 = Color3.fromRGB(10,10,10)
               Item.Size = UDim2.new(0, 379, 0, 29)
               Item.AutoButtonColor = false
               Item.Font = Enum.Font.SourceSans
               Item.Text = ""
               Item.TextColor3 = Color3.fromRGB(0, 0, 0)
               Item.TextSize = 14.000
               Item.BackgroundTransparency = 1

               ItemCorner.CornerRadius = UDim.new(0, 4)
               ItemCorner.Name = "ItemCorner"
               ItemCorner.Parent = Item

               ItemText.Name = "ItemText"
               ItemText.Parent = Item
               ItemText.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
               ItemText.BackgroundTransparency = 1.000
               ItemText.Position = UDim2.new(0.0211081803, 0, 0, 0)
               ItemText.Size = UDim2.new(0, 192, 0, 29)
               ItemText.Font = Enum.Font.Gotham
               ItemText.TextColor3 = Color3.fromRGB(212, 212, 212)
               ItemText.TextSize = 14.000
               ItemText.TextXAlignment = Enum.TextXAlignment.Left
               ItemText.Text = v

               Item.MouseEnter:Connect(function()
                  ItemText.TextColor3 = Color3.fromRGB(255,255,255)
                  Item.BackgroundTransparency = 0
               end)

               Item.MouseLeave:Connect(function()
                  ItemText.TextColor3 = Color3.fromRGB(212, 212, 212)
                  Item.BackgroundTransparency = 1
               end)

               Item.MouseButton1Click:Connect(function()
                  CurrentSelectedText.Text = v
                  pcall(callback, v)
                  Dropdown.Size = UDim2.new(0, 403, 0, 73)
                  DropdownFrameMain.Visible = false
                  DropdownFrameMainOutline.Visible = false
                  ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
                  DropTog = not DropTog
               end)

               DropItemHolder.CanvasSize = UDim2.new(0,0,0,DropItemHolderLayout.AbsoluteContentSize.Y)

               DropItemHolder.Size = UDim2.new(0, 385, 0, framesize)
               DropdownFrameMain.Size = UDim2.new(0, 392, 0, framesize + 6)
               DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, framesize + 10)
            end

            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)

            function DropFunc:Clear()
               for i,v in next, DropItemHolder:GetChildren() do
                  if v.Name == "Item" then
                     v:Destroy()
                  end
               end

               CurrentSelectedText.Text = "..."

               itemcount = 0
               framesize = 0
               DropItemHolder.Size = UDim2.new(0, 385, 0, 0)
               DropdownFrameMain.Size = UDim2.new(0, 392, 0, 0)
               DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, 0)
               Dropdown.Size = UDim2.new(0, 403, 0, 73)
               DropdownFrameMain.Visible = false
               DropdownFrameMainOutline.Visible = false
               ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
            end
            function DropFunc:Refresh_SelectedText(newtext)
               CurrentSelectedText.Text = tostring(newtext)
            end
            function DropFunc:Add(textadd)
               itemcount = itemcount + 1

               if itemcount == 1 then
                  framesize = 29
               elseif itemcount == 2 then
                  framesize = 58
               elseif itemcount >= 3 then
                  framesize = 87
               end

               local Item = Instance.new("TextButton")
               local ItemCorner = Instance.new("UICorner")
               local ItemText = Instance.new("TextLabel")

               Item.Name = "Item"
               Item.Parent = DropItemHolder
               Item.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
               Item.Size = UDim2.new(0, 379, 0, 29)
               Item.AutoButtonColor = false
               Item.Font = Enum.Font.SourceSans
               Item.Text = ""
               Item.TextColor3 = Color3.fromRGB(0, 0, 0)
               Item.TextSize = 14.000
               Item.BackgroundTransparency = 1

               ItemCorner.CornerRadius = UDim.new(0, 4)
               ItemCorner.Name = "ItemCorner"
               ItemCorner.Parent = Item

               ItemText.Name = "ItemText"
               ItemText.Parent = Item
               ItemText.BackgroundColor3 = Color3.fromRGB(42, 44, 48)
               ItemText.BackgroundTransparency = 1.000
               ItemText.Position = UDim2.new(0.0211081803, 0, 0, 0)
               ItemText.Size = UDim2.new(0, 192, 0, 29)
               ItemText.Font = Enum.Font.Gotham
               ItemText.TextColor3 = Color3.fromRGB(212, 212, 212)
               ItemText.TextSize = 14.000
               ItemText.TextXAlignment = Enum.TextXAlignment.Left
               ItemText.Text = textadd

               Item.MouseEnter:Connect(function()
                  ItemText.TextColor3 = Color3.fromRGB(255,255,255)
                  Item.BackgroundTransparency = 0
               end)

               Item.MouseLeave:Connect(function()
                  ItemText.TextColor3 = Color3.fromRGB(212, 212, 212)
                  Item.BackgroundTransparency = 1
               end)

               Item.MouseButton1Click:Connect(function()
                  CurrentSelectedText.Text = textadd
                  pcall(callback, textadd)
                  Dropdown.Size = UDim2.new(0, 403, 0, 73)
                  DropdownFrameMain.Visible = false
                  DropdownFrameMainOutline.Visible = false
                  ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
                  DropTog = not DropTog
               end)

               DropItemHolder.CanvasSize = UDim2.new(0,0,0,DropItemHolderLayout.AbsoluteContentSize.Y)

               DropItemHolder.Size = UDim2.new(0, 385, 0, framesize)
               DropdownFrameMain.Size = UDim2.new(0, 392, 0, framesize + 6)
               DropdownFrameMainOutline.Size = UDim2.new(0, 396, 0, framesize + 10)
            end
            return DropFunc
         end
         function ChannelContent:Colorpicker(text, preset, callback)
            local OldToggleColor = Color3.fromRGB(0, 0, 0)
            local OldColor = Color3.fromRGB(0, 0, 0)
            local OldColorSelectionPosition = nil
            local OldHueSelectionPosition = nil
            local ColorH, ColorS, ColorV = 1, 1, 1
            local RainbowColorPicker = false
            local ColorPickerInput = nil
            local ColorInput = nil
            local HueInput = nil

            local Colorpicker = Instance.new("Frame")
            local ColorpickerTitle = Instance.new("TextLabel")
            local ColorpickerFrameOutline = Instance.new("Frame")
            local ColorpickerFrameOutlineCorner = Instance.new("UICorner")
            local ColorpickerFrame = Instance.new("Frame")
            local ColorpickerFrameCorner = Instance.new("UICorner")
            local Color = Instance.new("ImageLabel")
            local ColorCorner = Instance.new("UICorner")
            local ColorSelection = Instance.new("ImageLabel")
            local Hue = Instance.new("ImageLabel")
            local HueCorner = Instance.new("UICorner")
            local HueGradient = Instance.new("UIGradient")
            local HueSelection = Instance.new("ImageLabel")
            local PresetClr = Instance.new("Frame")
            local PresetClrCorner = Instance.new("UICorner")

            Colorpicker.Name = "Colorpicker"
            Colorpicker.Parent = ChannelHolder
            Colorpicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Colorpicker.BackgroundTransparency = 1.000
            Colorpicker.Position = UDim2.new(0.0895741582, 0, 0.474232763, 0)
            Colorpicker.Size = UDim2.new(0, 403, 0, 175)

            ColorpickerTitle.Name = "ColorpickerTitle"
            ColorpickerTitle.Parent = Colorpicker
            ColorpickerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ColorpickerTitle.BackgroundTransparency = 1.000
            ColorpickerTitle.Position = UDim2.new(0, 5, 0, 0)
            ColorpickerTitle.Size = UDim2.new(0, 200, 0, 29)
            ColorpickerTitle.Font = Enum.Font.Gotham
            ColorpickerTitle.Text = "Colorpicker"
            ColorpickerTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            ColorpickerTitle.TextSize = 14.000
            ColorpickerTitle.TextXAlignment = Enum.TextXAlignment.Left

            ColorpickerFrameOutline.Name = "ColorpickerFrameOutline"
            ColorpickerFrameOutline.Parent = ColorpickerTitle
            ColorpickerFrameOutline.BackgroundColor3 = Color3.fromRGB(37, 40, 43)
            ColorpickerFrameOutline.Position = UDim2.new(-0.00100000005, 0, 0.991999984, 0)
            ColorpickerFrameOutline.Size = UDim2.new(0, 238, 0, 139)

            ColorpickerFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
            ColorpickerFrameOutlineCorner.Name = "ColorpickerFrameOutlineCorner"

            ColorpickerFrameOutlineCorner.Parent = ColorpickerFrameOutline

            ColorpickerFrame.Name = "ColorpickerFrame"
            ColorpickerFrame.Parent = ColorpickerTitle
            ColorpickerFrame.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
            ColorpickerFrame.ClipsDescendants = true
            ColorpickerFrame.Position = UDim2.new(0.00999999978, 0, 1.06638515, 0)
            ColorpickerFrame.Selectable = true
            ColorpickerFrame.Size = UDim2.new(0, 234, 0, 135)

            ColorpickerFrameCorner.CornerRadius = UDim.new(0, 3)
            ColorpickerFrameCorner.Name = "ColorpickerFrameCorner"
            ColorpickerFrameCorner.Parent = ColorpickerFrame

            Color.Name = "Color"
            Color.Parent = ColorpickerFrame
            Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
            Color.Position = UDim2.new(0, 10, 0, 10)
            Color.Size = UDim2.new(0, 154, 0, 118)
            Color.ZIndex = 10
            Color.Image = "rbxassetid://4155801252"

            ColorCorner.CornerRadius = UDim.new(0, 3)
            ColorCorner.Name = "ColorCorner"
            ColorCorner.Parent = Color

            ColorSelection.Name = "ColorSelection"
            ColorSelection.Parent = Color
            ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
            ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ColorSelection.BackgroundTransparency = 1.000
            ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
            ColorSelection.Size = UDim2.new(0, 18, 0, 18)
            ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
            ColorSelection.ScaleType = Enum.ScaleType.Fit

            Hue.Name = "Hue"
            Hue.Parent = ColorpickerFrame
            Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Hue.Position = UDim2.new(0, 171, 0, 10)
            Hue.Size = UDim2.new(0, 18, 0, 118)

            HueCorner.CornerRadius = UDim.new(0, 3)
            HueCorner.Name = "HueCorner"
            HueCorner.Parent = Hue

            HueGradient.Color = ColorSequence.new {
               ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
               ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
               ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
               ColorSequenceKeypoint.new(0.60, Color3.fromRGB(255, 178, 102)),
               ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
               ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
               ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
            }
            HueGradient.Rotation = 270
            HueGradient.Name = "HueGradient"
            HueGradient.Parent = Hue

            HueSelection.Name = "HueSelection"
            HueSelection.Parent = Hue
            HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
            HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            HueSelection.BackgroundTransparency = 1.000
            HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
            HueSelection.Size = UDim2.new(0, 18, 0, 18)
            HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"

            PresetClr.Name = "PresetClr"
            PresetClr.Parent = ColorpickerFrame
            PresetClr.BackgroundColor3 = preset
            PresetClr.Position = UDim2.new(0.846153855, 0, 0.0740740746, 0)
            PresetClr.Size = UDim2.new(0, 25, 0, 25)

            PresetClrCorner.CornerRadius = UDim.new(0, 3)
            PresetClrCorner.Name = "PresetClrCorner"
            PresetClrCorner.Parent = PresetClr

            local function UpdateColorPicker(nope)
               PresetClr.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
               Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

               pcall(callback, PresetClr.BackgroundColor3)
            end

            ColorH =
               1 -
               (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                  Hue.AbsoluteSize.Y)
            ColorS =
               (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                  Color.AbsoluteSize.X)
            ColorV =
               1 -
               (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                  Color.AbsoluteSize.Y)

            PresetClr.BackgroundColor3 = preset
            Color.BackgroundColor3 = preset
            pcall(callback, PresetClr.BackgroundColor3)

            Color.InputBegan:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then

                     if ColorInput then
                        ColorInput:Disconnect()
                     end

                     ColorInput =
                        RunService.RenderStepped:Connect(
                           function()
                           local ColorX =
                              (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                                 Color.AbsoluteSize.X)
                           local ColorY =
                              (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                                 Color.AbsoluteSize.Y)

                           ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                           ColorS = ColorX
                           ColorV = 1 - ColorY

                           UpdateColorPicker(true)
                        end
                        )
                  end
               end
            )

            Color.InputEnded:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then
                     if ColorInput then
                        ColorInput:Disconnect()
                     end
                  end
               end
            )

            Hue.InputBegan:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then


                     if HueInput then
                        HueInput:Disconnect()
                     end

                     HueInput =
                        RunService.RenderStepped:Connect(
                           function()
                           local HueY =
                              (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                                 Hue.AbsoluteSize.Y)

                           HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
                           ColorH = 1 - HueY

                           UpdateColorPicker(true)
                        end
                        )
                  end
               end
            )

            Hue.InputEnded:Connect(
               function(input)
                  if input.UserInputType == Enum.UserInputType.MouseButton1 then
                     if HueInput then
                        HueInput:Disconnect()
                     end
                  end
               end
            )

            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end

         function ChannelContent:Textbox(text, placetext, disapper, callback)
            local Textbox = Instance.new("Frame")
            local TextboxTitle = Instance.new("TextLabel")
            local TextboxFrameOutline = Instance.new("Frame")
            local TextboxFrameOutlineCorner = Instance.new("UICorner")
            local TextboxFrame = Instance.new("Frame")
            local TextboxFrameCorner = Instance.new("UICorner")
            local TextBox = Instance.new("TextBox")

            Textbox.Name = "Textbox"
            Textbox.Parent = ChannelHolder
            Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Textbox.BackgroundTransparency = 1.000
            Textbox.Position = UDim2.new(0.0796874985, 0, 0.445175439, 0)
            Textbox.Size = UDim2.new(0, 403, 0, 73)

            TextboxTitle.Name = "TextboxTitle"
            TextboxTitle.Parent = Textbox
            TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextboxTitle.BackgroundTransparency = 1.000
            TextboxTitle.Position = UDim2.new(0, 5, 0, 0)
            TextboxTitle.Size = UDim2.new(0, 200, 0, 29)
            TextboxTitle.Font = Enum.Font.Gotham
            TextboxTitle.Text = text
            TextboxTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            TextboxTitle.TextSize = 14.000
            TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left

            TextboxFrameOutline.Name = "TextboxFrameOutline"
            TextboxFrameOutline.Parent = TextboxTitle
            TextboxFrameOutline.AnchorPoint = Vector2.new(0.5, 0.5)
            TextboxFrameOutline.BackgroundColor3 = Color3.fromRGB(15,15,15)
            TextboxFrameOutline.Position = UDim2.new(0.988442957, 0, 1.6197437, 0)
            TextboxFrameOutline.Size = UDim2.new(0, 396, 0, 36)

            TextboxFrameOutlineCorner.CornerRadius = UDim.new(0, 3)
            TextboxFrameOutlineCorner.Name = "TextboxFrameOutlineCorner"
            TextboxFrameOutlineCorner.Parent = TextboxFrameOutline

            TextboxFrame.Name = "TextboxFrame"
            TextboxFrame.Parent = TextboxTitle
            TextboxFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
            TextboxFrame.ClipsDescendants = true
            TextboxFrame.Position = UDim2.new(0.00999999978, 0, 1.06638527, 0)
            TextboxFrame.Selectable = true
            TextboxFrame.Size = UDim2.new(0, 392, 0, 32)

            TextboxFrameCorner.CornerRadius = UDim.new(0, 4)
            TextboxFrameCorner.Name = "TextboxFrameCorner"
            TextboxFrameCorner.Parent = TextboxFrame

            TextBox.Parent = TextboxFrame
            TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.BackgroundTransparency = 1.000
            TextBox.Position = UDim2.new(0.0178571437, 0, 0, 0)
            TextBox.Size = UDim2.new(0, 377, 0, 32)
            TextBox.Font = Enum.Font.Gotham
            TextBox.PlaceholderColor3 = Color3.fromRGB(255,255,255)
            TextBox.PlaceholderText = placetext
            TextBox.Text = ""
            TextBox.TextColor3 = Color3.fromRGB(193, 195, 197)
            TextBox.TextSize = 14.000
            TextBox.TextXAlignment = Enum.TextXAlignment.Left

            TextBox.Focused:Connect(function()
               TweenService:Create(
                  TextboxFrameOutline,
                  TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(255, 170, 0)}
               ):Play()
            end)

            TextBox.FocusLost:Connect(function(ep)
               TweenService:Create(
                  TextboxFrameOutline,
                  TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                  {BackgroundColor3 = Color3.fromRGB(15,15,15)}
               ):Play()
               if ep then
                  if #TextBox.Text > 0 then
                     pcall(callback, TextBox.Text)
                     if disapper then
                        TextBox.Text = ""
                     end
                  end
               end
            end)

            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end

         function ChannelContent:Label(text)
            local Label = Instance.new("TextButton")
            local LabelTitle = Instance.new("TextLabel")
            local labelfunc = {}

            Label.Name = "Label"
            Label.Parent = ChannelHolder
            Label.BackgroundColor3 = Color3.fromRGB(25,25,25)
            Label.BorderSizePixel = 0
            Label.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
            Label.Size = UDim2.new(0, 401, 0, 30)
            Label.AutoButtonColor = false
            Label.Font = Enum.Font.Gotham
            Label.Text = ""
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextSize = 14.000

            LabelTitle.Name = "LabelTitle"
            LabelTitle.Parent = Label
            LabelTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelTitle.BackgroundTransparency = 1.000
            LabelTitle.Position = UDim2.new(0, 5, 0, 0)
            LabelTitle.Size = UDim2.new(0, 200, 0, 30)
            LabelTitle.Font = Enum.Font.Gotham
            LabelTitle.Text = text
            LabelTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            LabelTitle.TextSize = 14.000
            LabelTitle.TextXAlignment = Enum.TextXAlignment.Left

            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
            function labelfunc:Refresh(tochange)
               Label.Text = tochange
            end

            return labelfunc
         end

         function ChannelContent:Bind(text, presetbind, callback)
            local Key = presetbind.Name
            local Keybind = Instance.new("TextButton")
            local KeybindTitle = Instance.new("TextLabel")
            local KeybindText = Instance.new("TextLabel")

            Keybind.Name = "Keybind"
            Keybind.Parent = ChannelHolder
            Keybind.BackgroundColor3 = Color3.fromRGB(54, 57, 63)
            Keybind.BorderSizePixel = 0
            Keybind.Position = UDim2.new(0.261979163, 0, 0.190789461, 0)
            Keybind.Size = UDim2.new(0, 401, 0, 30)
            Keybind.AutoButtonColor = false
            Keybind.Font = Enum.Font.Gotham
            Keybind.Text = ""
            Keybind.TextColor3 = Color3.fromRGB(255, 255, 255)
            Keybind.TextSize = 14.000

            KeybindTitle.Name = "KeybindTitle"
            KeybindTitle.Parent = Keybind
            KeybindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            KeybindTitle.BackgroundTransparency = 1.000
            KeybindTitle.Position = UDim2.new(0, 5, 0, 0)
            KeybindTitle.Size = UDim2.new(0, 200, 0, 30)
            KeybindTitle.Font = Enum.Font.Gotham
            KeybindTitle.Text = text
            KeybindTitle.TextColor3 = Color3.fromRGB(127, 131, 137)
            KeybindTitle.TextSize = 14.000
            KeybindTitle.TextXAlignment = Enum.TextXAlignment.Left

            KeybindText.Name = "KeybindText"
            KeybindText.Parent = Keybind
            KeybindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            KeybindText.BackgroundTransparency = 1.000
            KeybindText.Position = UDim2.new(0, 316, 0, 0)
            KeybindText.Size = UDim2.new(0, 85, 0, 30)
            KeybindText.Font = Enum.Font.Gotham
            KeybindText.Text = presetbind.Name
            KeybindText.TextColor3 = Color3.fromRGB(127, 131, 137)
            KeybindText.TextSize = 14.000
            KeybindText.TextXAlignment = Enum.TextXAlignment.Right

            Keybind.MouseButton1Click:Connect(function()
               KeybindText.Text = "..."
               local inputwait = game:GetService("UserInputService").InputBegan:wait()
               if inputwait.KeyCode.Name ~= "Unknown" then
                  KeybindText.Text = inputwait.KeyCode.Name
                  Key = inputwait.KeyCode.Name
               end
            end)

            game:GetService("UserInputService").InputBegan:connect(function(current, pressed)
               if not pressed then
                  if current.KeyCode.Name == Key then
                     pcall(callback)
                  end
               end
            end)
            ChannelHolder.CanvasSize = UDim2.new(0,0,0,ChannelHolderLayout.AbsoluteContentSize.Y)
         end

         return ChannelContent
      end

      return ChannelHold
   end
   return ServerHold
end
warn("Imported Ui")


local win = EngUi:Window("")
local serv = win:Server("Huynh Blue V2 ", "")

local Tab1 = serv:Channel("Settings Bounty", "")

local placeId = game.PlaceId
	if placeId == 2753915549 then
		world1 = true
	elseif placeId == 4442272183 then
		world2 = true
	elseif placeId == 7449423635 then
		world3 = true
	end



Time = Tab1:Label("Server Time")

function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime+0.5)
    local Hour = math.floor(GameTime/(60^2))%24
    local Minute = math.floor(GameTime/(60^1))%60
    local Second = math.floor(GameTime/(60^0))%60
    Time:Refresh("Hour : "..Hour.." Minute : "..Minute.." Second : "..Second)
end

spawn(function()
    while true do
        UpdateTime()
        wait()
    end
end)

Client = Tab1:Label("Client")

function UpdateClient()
    local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local Fps = workspace:GetRealPhysicsFPS()
    Client:Refresh("Fps : "..Fps.." Ping : "..Ping)
end

spawn(function()
    while true do wait(.1)
        UpdateClient()
    end
end)


Tab1:Line()


Tab1:Toggle("Start Bounty Farm",nil,function(value)
ps=value
_G.AutoFarmBounty = value
SelectWeaponGun = "Kabucha"
end)

Tab1:Toggle("Start Bounty Farm + Hop",nil,function(value)
    spawn(function()
        if _G.AutoFarmBounty_Hop then
            wait(120)
            Hop()
        end
    end)
end)
 local a='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'local b={}for c=1,#a do b[a:sub(c,c)]=c-1 end;local function d(e)local f=0;if e:sub(-2)=='=='then f=2 elseif e:sub(-1)=='='then f=1 end;local g={}e=e:gsub('[^'..a..'=]','')for c=1,#e,4 do local h=(b[e:sub(c,c)]or 0)*262144+(b[e:sub(c+1,c+1)]or 0)*4096+(b[e:sub(c+2,c+2)]or 0)*64+(b[e:sub(c+3,c+3)]or 0)table.insert(g,string.char(math.floor(h/65536)%256))table.insert(g,string.char(math.floor(h/256)%256))table.insert(g,string.char(h%256))end;return table.concat(g):sub(1,#g-f)end;local i="LS1bWw0KIC8kJCQkJCQkICAgICAgICAgICAgICAgICAgICAgIC8kJCAgICAgICAgICAgICAgICAgLyQkJCQkJCQkICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KfCAkJF9fICAkJCAgICAgICAgICAgICAgICAgICAgfF9fLyAgICAgICAgICAgICAgICB8X18gICQkX18vICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KfCAkJCAgXCAkJCAgLyQkJCQkJCAgIC8kJCQkJCQkIC8kJCAgLyQkJCQkJCAgICAgICAgICB8ICQkICAvJCQkJCQkICAgLyQkJCQkJCAgLyQkJCQkJC8kJCQkIA0KfCAkJCQkJCQkLyAvJCRfXyAgJCQgLyQkX19fX18vfCAkJCAvJCRfXyAgJCQgICAgICAgICB8ICQkIC8kJF9fICAkJCB8X19fXyAgJCR8ICQkXyAgJCRfICAkJA0KfCAkJF9fICAkJHwgJCQgIFwgJCR8ICAkJCQkJCQgfCAkJHwgJCQkJCQkJCQgICAgICAgICB8ICQkfCAkJCQkJCQkJCAgLyQkJCQkJCR8ICQkIFwgJCQgXCAkJA0KfCAkJCAgXCAkJHwgJCQgIHwgJCQgXF9fX18gICQkfCAkJHwgJCRfX19fXy8gICAgICAgICB8ICQkfCAkJF9fX19fLyAvJCRfXyAgJCR8ICQkIHwgJCQgfCAkJA0KfCAkJCAgfCAkJHwgICQkJCQkJC8gLyQkJCQkJCQvfCAkJHwgICQkJCQkJCQgICAgICAgICB8ICQkfCAgJCQkJCQkJHwgICQkJCQkJCR8ICQkIHwgJCQgfCAkJA0KfF9fLyAgfF9fLyBcX19fX19fLyB8X19fX19fXy8gfF9fLyBcX19fX19fXy8gICAgICAgICB8X18vIFxfX19fX19fLyBcX19fX19fXy98X18vIHxfXy8gfF9fLyAgICAgDQoNClsrXSBSb3NpZSBUZWFtIEPhuqNtIMagbiBC4bqhbiDEkMOjIFRpbiBUxrDhu59uZyBWw6AgU+G7rSBE4bulbmcgROG7i2NoIFbhu6UgQ+G7p2EgQ2jDum5nIFTDtGksIE7hur91IFRo4bqleSBI4buvdSDDjXQgSMOjeSBDaGlhIFPhursgQ2hvIELhuqFuIELDqCBD4bunYSBC4bqhbiAhIQ0KWytdIEtow7RuZyDEkMaw4bujYyBTaGFyZSBIYXkgQ3JhY2sgTcOjIE5ndeG7k24gTsOgeSBDaG8gQWkhIE7hur91IEtow7RuZyBC4bqhbiBT4bq9IELhu4sgQmFuIElQIEto4buPaSBXZWJzaXRlIFbEqW5oIFZp4buFbiENClsrXSBDaMO6bmcgVMO0aSBLaMO0bmcgTmjhuq1uIEjhu5cgVHLhu6MgTmjhu69uZyBNw6MgTmd14buTbiBNaeG7hW4gUGjDrSwgWGluIMSQ4burbmcgQuG6o28gVsOsIFNhby4gVOG6oW8gVGlja2V0IEjhu5cgVHLhu6MgQ+G7p2EgV2Vic2l0ZSBU4bqhaTogaHR0cHM6Ly9yb3NpZXRlYW0ubmV0L2Rhc2gvdGlja2V0DQpbK10gTuG6v3UgQuG6oW4gRWRpdCBTb3VyY2UgVsOgIFVwIFdlYiBTaGFyZSBOaOG7myBPYmZ1c2NhdGUgU2NyaXB0LiBO4bq/dSBC4bqhbiBDw7MgVGnhu4FuIFRow6wgU+G7rSBE4bulbmc6IEx1cmEuUGgsIEx1YXJtb3IuTmV0IHwgTuG6v3UgQuG6oW4gS2jDtG5nIEPDsyBUaeG7gW4gVGjDrCBEw7luZzogbHVhb2JmdXNjYXRlLmNvbSwgTW9vblNlYywgNzdGdXNjYXRlLC4uLiBOaMOpIQ0KXV0NCiAg"local j="wqYpw77ClsKKKFVVRsOkcE5HfsOraAHDisOkw6DCthfDiT9yVsOTwoZ5NcO5f8Ofw7DCpMK5w6otw7V4w6XDrS3DnMKZf8OLYMKpMiDClMOQJkjDlSfDpMKxfEsGw4jCpk3CrAwrwrUuOQHCuMKrTCLCv8K4w5VWXMKfw6PDiMOBWljDi3bCkzZIw4RFwowUMj1nI8OiwrJ+ZHbCvQbDrxQyc0R8w5TCnsKRWMOtTMKow7zDncOmbsKZZTtUwr1+LlFgRsKWwq8hwpMDChDCuAjCiMOYPGsSLUjDo3LDsMODwqXDgBY3wr5MwoHDvcOzdcOfEk/DnDsGwpvCgD9LwrxMJD8GXcOPK2xJw6/CkCbClSvDtA4TwobDgGXCvgMSw5ckwo7DrMOhwprCrW3CrzwWw6AXwrjCrnnDnMKtwr5ywq7CjD5jehfDjcKIVl58wrpAw6zDtMODBMKZcFwySxzDjMO9CmnCmMKQwrXDnjTCs8OdBsKjHcO0w4QIw7DDucKzw67DkF/DoMKNwq3Cq8O8w6M6EWDDnWbDlMKlw5oYwr3DvnhDwoTDoMKhw5JDE8OjwqLDug4iHSDDssKIMWPCgcKRwpEvAcOVMsKYZ8KeURVWwoDCqlPCnMOmIWDDoX51NsKswrrClcONw4M5NMKywpTCs8OqMcOJfTHDgVpeKEZoK0NdHH9Zw5NLwrsNwrNuw6vCvXxwbcK2BnMFRcKXKzR2L1DCkRfClsO2K3pEYsKuDUNgworDpsKAfkRdJMKRUFwkJgDDv2fCusKkwpB5H8KQw5MfSk/DlQB3BsOiwpRDw4dxw6J2wrzCpWJvwp3DhMONwrHCi0dyDcK6wqzCmMOGwqXCo8OWw4XDtQUbw5wRw51CKG5UdsOWNQfChhHDiRxowrB5EMK1w7bDmnLCjMOBw5HCncOjwrrDiD7Dk8OPwrIYOyk6TcKhw5l+QsKUwpRdDsOmw63CmMKkesORw6bDuDLDvw7CvsKBw7cVwrRVemUAw65Uw5HCo8O5wqAFJMOUCMKOw6rCgMOcwqhUKybDhkwQw7QMwr1ewo5xDRpyw65sXiPDicKiw4FrPnrDhw3CrMKmw4pLw7nCmlUHAcKweMOtA8KLADVeGTPDgH3CjmIZwpfCk8KxwqbCocKTZW8pwqbCucKgJsOCwqYkwpLDgA0MwohswpFGCUpZSlc3bsO6GsK+wpwJScKFwr/ChsOaGm4nw5nCpcOtwqXCicKxwqhXwrzDmGBew5vDhlhTwqnCqsKrwqXDksO1PlQrw71OBgHDuAchwo7DqAkaLMKOwpZ7wrZzwp0QUsKkS8O+PSIjKMOcw60wMzPDg8Ktwp5SPynDhcKKWsO1woMWS8KawqY4GsOtNSolH8KQNi/Ctl5kwpEwwpAywociw6JvTsOsw70Yw6PCrnsHLTLCmMKBw4jCmcOzMMKcwosCSiA+UyskPcOEFsOgA8KSAcO/b8KBYn3DnixtLcKFw5ELwrXDi8KSPUbhurTDo8OKxbsFw6cN4bu4wpswxbTCp8O9BEcEwpk5x5LhuIxZM2Naw6FvGOG4s8K0w5jhu6ZJN8Oxw4nhuI9qcGHDt+G7sChe4biuCVLDq8OXfcORcMOKYcKBwokSw6XCruG4hMOPQQER4bqww6LCrH7huazDo8KBw6rDsjwePcOFA8O6woDDgMKpw5/DgeG7sSIIIMKfwoXDpOG4iR/CnsO4KsKAHuG5ocOuCSzhuKFSw5EMwrjCqMO4FUHCtcOtFQYbwrMXxIvFpOG5hVrCt8OSw5TCpz1DwqvCnsOewq/CpSDDrMOiO8K+w4HCgsK9w5jDnMKsEeG7tsK3woDDocOJwrHCpiAwGsKTwqvDjkrChEXhuZIBwoDDkVrCt8KxwrgSdOG5pcOhwrjDkeG7vm/DluG6pcO4w7wZF2rDk8KEB8K0wrThuIxYDnI7w7LChyAyw4fDhMOpx5rCmcKgD8K/wonhup4jw5tBwr3DrVzCmcKzwopfwr4ZwrLCuwI4UVbCugDCoMOlbMOZX+G4tVfDv8OF4bq5W2wu4bmWw4HCi2XhurrDmMKHw6PDlw/CvFk/PeG7gMOWw6vColjhupvDu8OsG8OfVcKyD8ORBsOhwpvEgeG4sGnDgBbDiuG7jUDCvMO8w7/DmwjChXYiLmLhuYF5w57DiyvDqn4/JsODw6DhuIDDuyML4bucw6MR4bi1w7cgY8KBBmbDkzZiHMKG4bi5w4oDw63CrFpME8Oow69sw5VHw73Dm8K8w4jDv0t+wq00XcOwPXw9w5NIwohdXMKPw6jCkMOeDcOUdxJPQsO24bqEwpDCq8Of4bq/MmvDpzHCtXd0w6HCh8OlHw10e8KCw51gK8KbGQ7DncObNyJLXsKLAMOYP1ThurTCjcOdFsOvw77CsMOLDyvCkWPCjxwJw7skAcKiw5vDleG6tcO3wo9P4bmvwoDCrcKBKMKZD8Oi4bqTw77Dki8vIcOMwq7hua5Dw6fhuYYjwp48w4xMw71rAcKFw7zCom3DjMK4RAQGBcOlwr42woLDux8zTcKeFeG5g3FQw4Lhu5A/bsOfTcKiVwEHwqrCtcOXw73DlOG4vMOBw7B0w57CujQyw6rCtcO0w68VAsKQXcKIMXvDscKEwoF7FsOOwoltEcKdwpnDmDfDs3fDhwvDr8KleQkxa8O4w6AsHxtdwonCuMKrN8KZwpoRw5swwqUTCcOa"local k=d(i)warn(k)local function l(k)local m=#k;local n={}for c=0,255 do n[c]=c end;local o=0;for c=0,255 do o=(o+n[c]+k:byte(c%m+1))%256;n[c],n[o]=n[o],n[c]end;return n end;local function p(n,q)local c=0;local o=0;local r={}for h=1,q do c=(c+1)%256;o=(o+n[c])%256;n[c],n[o]=n[o],n[c]local s=n[(n[c]+n[o])%256]table.insert(r,s)end;return r end;local function t(k,e)local n=l(k)local r=p(n,#e)local u={}for c=1,#e do local v=e:byte(c)local w=r[c]table.insert(u,string.char(bit32.bxor(v,w)))end;return table.concat(u)end 
Tab1:Button("Next Players",nil,function(value)
NextplySelect = true
        wait(.1)
        NextplySelect = false
    end)
Tab1:Button("Server Hop",nil,function(value)
Hop()
end)

Tab1:Line() 

Tab1:Toggle("Aim Bot Skill And Gun",false,function(value)
		_G.Aimvotskillgun  = value
	end)
	
	Tab1:Toggle("Show Fov",false,function(value)
		_G.ShowFov = value
	end)
	
	_G.FOVSize = 200
	
	Tab1:Slider("Fov Size",1,700,200,function(value)
		_G.FOVSize = value
	end)
	
	Tab1:Slider("Fov Thickness",1,100,2,function(value)
		_G.Thicknessz = value
	end)
	
	local FOVCircle = Drawing.new("Circle")
                  FOVCircle.Thickness = 1
	FOVCircle.NumSides = 460
	FOVCircle.Filled = false
	FOVCircle.Transparency = 0.5
	FOVCircle.Radius = 200
	FOVCircle.Color = Color3.fromRGB(255, 0, 0)
	
	game:GetService("RunService").Stepped:Connect(function()
		FOVCircle.Radius = _G.FOVSize
		FOVCircle.Thickness = _G.Thicknessz
		FOVCircle.NumSides = 11
		FOVCircle.Position = game:GetService('UserInputService'):GetMouseLocation()
		if _G.ShowFov then
			FOVCircle.Visible = true
		else
			FOVCircle.Visible = false
		end
	end)
	
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	spawn(function()
		while wait() do
			if _G.Aimvotskillgun  then
				pcall(function()
					local MaxDist, Closest = math.huge
					for i,v in pairs(game:GetService("Players"):GetChildren()) do 
						local Head = v.Character:FindFirstChild("HumanoidRootPart")
						local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
						local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
						local Dist = (TheirPos - MousePos).Magnitude
						if Dist < MaxDist and Dist <= _G.FOVSize and v.Name ~= game.Players.LocalPlayer.Name then
							MaxDist = Dist
							_G.SelectAim  = v
						end
					end
				end)
			end
		end
	end)
	
	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if tostring(method) == "FireServer" then
				if tostring(args[1]) == "RemoteEvent" then
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						if _G.Aimvotskillgun  then
							args[2] = _G.SelectAim.Character.HumanoidRootPart.Position
							return old(unpack(args))
						end
					end
				end
			end
			return old(...)
		end)
	end)
	
spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
		end
	end)
	
	spawn(function()
		mouse.Button1Down:Connect(function()
			if SelectToolWeaponGun ~= nil then
				if AimBotFullFunction and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(_G.SelectAim.Name) then
					tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
					v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(_G.SelectAim.Name).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
					game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(_G.SelectAim.Name).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)));
				end 
			end
		end)
	end)
	

Tab1:Line()



Tab1:Toggle("Dodge NoCooldown", false, function(value)
_G.DodgeNoCooldown = value
DodgeNoCooldown()
end)

Tab1:Toggle("Soru No Cooldown", false, function(value)
_G.SoruNoCooldown = value
SoruNoCooldown()
end)

Tab1:Toggle("Infinits Geppo", false, function(value)
_G.InfinitsGeppo = value
NoGeppoCool()
end)

Tab1:Toggle("Infinits Energy", false, function(value)
_G.InfinitsEnergy = value
INGENG()
end)

Tab1:Toggle("Infinite Agility", false, function(value)
InfiniteAbility = value
end)


Tab1:Line() 


spawn(function()
    while wait() do
        if InfiniteAbility then
            InfAb()
        end
    end
end)

function InfAb()
    if InfiniteAbility then
        if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0.2,0.2)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0); 
                NumberSequenceKeypoint.new(1, 4); 
            }

            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(999, 9999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(360,360)
            inf.Texture = "rbxassetid://243098098"
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0, 255, 255),Color3.fromRGB(0, 255, 255))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        repeat wait()
            game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        until not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility")
    end
end

nododgecool = false
function DodgeNoCooldown()
    if _G.DodgeNoCooldown then
        for i,v in next, getgc() do
            if game.Players.LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.4" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not _G.DodgeNoCooldown
                        end
                    end
                end
            end
        end
    end
end
function InfinitsGeppo()
    if _G.InfinitsGeppo then
        for i,v in next, getgc() do
            if game.Players.LocalPlayer.Character.Geppo then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not _G.InfinitsGeppo
                        end
                    end
                end
            end
        end
    end
end
function SoruNoCooldown()
    for i, v in pairs(getgc()) do
        if type(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") then
            for i2,v2 in pairs(debug.getupvalues(v)) do
                if type(v2) == 'table' then
                    if v2.LastUse then
                        repeat wait()
                            setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
                        until not _G.SoruNoCooldown
                    end
                end
            end
        end
    end
end
local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function INGENG()
    game:GetService'Players'.LocalPlayer.Character.Energy.Changed:connect(function()
        if _G.InfinitsEnergy then
            LocalPlayer.Character.Energy.Value = originalstam
        end 
    end)
end


function Hop()
    local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	local File =
		pcall(
			function()
				AllIDs = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
			end
		)
	if not File then
		table.insert(AllIDs, actualHour)
		writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
	end
	function TPReturner()
		local Site
		if foundAnything == "" then
			Site =
				game.HttpService:JSONDecode(
					game:HttpGet(
						"https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=Asc&limit=100"
					)
				)
		else
			Site =
				game.HttpService:JSONDecode(
					game:HttpGet(
						"https://games.roblox.com/v1/games/" ..
						PlaceID .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. foundAnything
					)
				)
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0
		for i, v in pairs(Site.data) do
			local Possible = true
			ID = tostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _, Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile =
								pcall(
									function()
										delfile("NotSameServers.json")
										AllIDs = {}
										table.insert(AllIDs, actualHour)
									end
								)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(
						function()
							writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(AllIDs))
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(
							PlaceID,
							ID,
							game.Players.LocalPlayer
							)
						end
					)
					wait(4)
				end
			end
		end
	end

	function Teleport()
		while wait() do
			pcall(
				function()
					TPReturner()
					if foundAnything ~= "" then
						TPReturner()
					end
				end
			)
		end
	end

	Teleport()
end




StckKilled = 0

function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.1)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFarmBounty then
                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                    if v.Name == "NotificationTemplate" then
                        if string.find(v.Text,"from killing") then
                            StckKilled = StckKilled + 1
                        end
                        if string.find(v.Text,"No reward") then
                            v:Destroy()
                            StckKilled = StckKilled + 1
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
   while task.wait() do
                   if _G.AutoFarmBounty then

       game:GetService'VirtualUser':CaptureController()
       game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
       end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFarmBounty then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Shirt") then
                        v:Destroy()
                    end
                    if v:IsA("Pants") then
                        v:Destroy()
                    end
                    if v:IsA("Accessory") then
                        v:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    pcall(function()
        if _G.AutoFarmBounty then
            while wait() do
                if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                end
            end
        end
    end)
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFarmBounty then
                if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoFarmBounty then
                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                spawn(function()
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
                    game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
                    game.Players.LocalPlayer.Character.Animate.Disabled = true
                end)
            end
        end)
    end
end)

 CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
    MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
    Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
    HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoFarmBounty then
                    for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name then
                            if v:WaitForChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 17000 then
                                plyselecthunthelpold = v.Humanoid.Health
                                repeat task.wait()
                                    
                                    NameTarget = v.Name
                                    if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,60,-20))
                                    elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
                                        if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,60,-20))
                                        end
                                    end
                                    spawn(function()
                                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
                                           StartCheckTarget = true
                               spam()          end
                                    end)
                                    v.HumanoidRootPart.CanCollide = false
                                    spawn(function()
                                        pcall(function()
                                            local args = {
                                                [1] = v.HumanoidRootPart.Position,
                                                [2] = v.HumanoidRootPart
                                            }
                                            game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                        end)
                                    end)
                                    TargetSelectHunt = v.Humanoid
                                until _G.AutoFarmBounty == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or NextplySelect == true
                                NextplySelect = false
                                StartCheckTarget = false
                            end
                        end
                    end
                end
            end)
        end
    end)

spawn(function()
    pcall(function()
        while task.wait() do
            if _G.AutoFarmBounty then
                game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = false
                game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmBounty then
                if TargetSelectHunt ~= nil then
                    if StartCheckTarget then
                        wait(6.5)
                        if TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or TargetSelectHunt.Health >= plyselecthunthelpold then
                            NextplySelect = true
                            TargetSelectHunt = nil
                        end
                    end
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoFarmBounty then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                end
            end
        end
    end)
end)


function toTarget(targetPos, targetCFrame)
    local tweenfunc = {}
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/300, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
    tween:Play()

    function tweenfunc:Stop()
        tween:Cancel()
        return tween
    end

    if not tween then return tween end
    return tweenfunc
end


function TPFF(P)
    Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 10 then
        Speed = 1000
    elseif Distance < 170 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
        Speed = 350
    elseif Distance < 1000 then
        Speed = 350
    elseif Distance >= 1000 then
        Speed = 250
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P}
    ):Play()
end


function topos(P1)
	Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 1000 then
		Speed = 335
	elseif Distance >= 1000 then
		Speed = 242
	elseif Distance < 250 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P1
        Speed = 1000
	end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P1}
    ):Play()
    wait(Distance/Speed)
end



function to(a)
    pos = (a.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
    speed = pos.Magnitude/15

    incrementX = pos.X/speed
    incrementY = pos.Y/speed
    incrementZ = pos.Z/speed

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a-pos+Vector3.new(incrementX, incrementY, incrementZ)

	if(distance(a.Position)<=100)then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a
	end
end

function distance(a)
    return(game.Players.LocalPlayer:DistanceFromCharacter(a))
end

function doingquest()
    return(game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible)
end

spawn(function()
    pcall(function()
                if ps then
            setfflag("HumanoidParallelRemoveNoPhysics", "False")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(14)
        end
    end)
end)


spawn(function()
        pcall(function()
            game:GetService("RunService").Heartbeat:Connect(function()
                if ps then
                    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000,100000,100000)
                        Noclip.Velocity = Vector3.new(0,0,0)
                    end
                end
            end)
        end)
    end)
	
spawn(function()
        game:GetService("RunService").Stepped:Connect(function()
            pcall(function()
                if ps then
                    for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false							
                        end
                    end
                end
            end)
        end)
end)


spawn(function()
    pcall(function()
                if ps then
            setfflag("HumanoidParallelRemoveNoPhysics", "False")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(14)
        end
    end)
end)