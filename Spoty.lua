local uis = game:GetService("UserInputService")
local tweenService = game:GetService("TweenService")
local debris = true
local debris2 = true
local debris3 = true
local debris4 = true
local debris5 = true
local debris6 = true
local debounce = true
local Start = false

local PlayerDebris = true
local GamePlayDebris = false
local ThemeDebris = false

local plr = game.Players.LocalPlayer
local camera = workspace.CurrentCamera
local Mouse = plr:GetMouse()
--INTERFACE


local Gui = Instance.new("ScreenGui",plr.PlayerGui)
Gui.Name = "SpotyHub"

local Embed = Instance.new("Frame",Gui)
Embed.Name = "EmbedBg"
Embed.BackgroundColor3 = Color3.new(0,0,0)
Embed.Position = UDim2.new(0.196, 0,0.269, 0)
Embed.Size = UDim2.new(0.558, 0,0.463, 0)
Embed.Transparency = 0.9

local Other = Instance.new("Folder",Embed)
Other.Name = "Other"

local Main = Instance.new("Folder",Embed)
Main.Name = "Main"

local cor = Instance.new("UICorner",Embed)
cor.CornerRadius = UDim.new(0,4)

local Stroke = Instance.new("UIStroke",Embed)
Stroke.Color = Color3.new(0.243137, 0.243137, 0.243137)
Stroke.Transparency = 0.61
Stroke.Thickness = 1

local Line = Instance.new("Frame",Other)
Line.Name = "Line"
Line.Size = UDim2.new(0.998, 0,0.003, 0)
Line.Position = UDim2.new(0, 0,0.093, 0)
Line.Transparency = 0.8
Line.BackgroundColor3 = Color3.new(0.243137, 0.243137, 0.243137)

local OHabe = Instance.new("TextLabel",Main)
OHabe.Name = "OHabe"
OHabe.Text = "SPOTY HUB"
OHabe.TextScaled = true
OHabe.TextColor3 = Color3.new(1,1,1)
OHabe.Font = Enum.Font.SourceSans

OHabe.BackgroundTransparency = 1
OHabe.Size = UDim2.new(0.2, 0,0.1, 0)
OHabe.Position = UDim2.new(0.016, 0,0, 0)

local Prermium = Instance.new("TextLabel",Main)
Prermium.Name = "Prermium"
Prermium.Text = "PREMIUM"
Prermium.TextScaled = true
Prermium.TextColor3 = Color3.new(0.054902, 1, 0.321569)
Prermium.Font = Enum.Font.SourceSans

Prermium.BackgroundTransparency = 1
Prermium.Size = UDim2.new(0.2, 0,0.066, 0)
Prermium.Position = UDim2.new(0.016, 0,0.502, 0)

local Title = Instance.new("TextLabel",Embed)
Title.Name = "Title"
Title.Text = "PLAYER"
Title.TextScaled = true
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontFace.Weight = Enum.FontWeight.Bold
Title.Font = Enum.Font.Ubuntu

Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0.222, 0,0.156, 0)
Title.Position = UDim2.new(0.242, 0,0.093, 0)

local UnFuc = Instance.new("TextButton",Other)
UnFuc.Name = "Line"
UnFuc.Size = UDim2.new(0.067, 0,0.1, 0)
UnFuc.Position = UDim2.new(0.931, 0,0, 0)
UnFuc.BackgroundColor3 = Color3.new(1,1,1)
UnFuc.BackgroundTransparency = 1
UnFuc.TextScaled = true
UnFuc.Text = "×"
UnFuc.Font = Enum.Font.SourceSans
UnFuc.TextColor3 = Color3.new(1,1,1)

--FOR FOLDER INTERFACE
local TheListsFolder = Instance.new("Folder",Embed)
TheListsFolder.Name = "TheLists"

local PlayerFolder = Instance.new("Folder",TheListsFolder)
PlayerFolder.Name = "Player"

local GAMEPLAY = Instance.new("Folder",TheListsFolder)
GAMEPLAY.Name = "GAMEPLAY"

local ThemeFolder = Instance.new("Folder",TheListsFolder)
ThemeFolder.Name = "Theme"

local LookTp = Instance.new("Frame",GAMEPLAY)
LookTp.Name = "LookTp"

local ChangeTheme = Instance.new("Frame",ThemeFolder)
ChangeTheme.Name = "ChangeTheme"

local WayPointCreate = Instance.new("Frame",GAMEPLAY:WaitForChild("LookTp"))
WayPointCreate.Name = "WayPointCreate"

local TpToWayPoint = Instance.new("Frame",GAMEPLAY:WaitForChild("LookTp"))
TpToWayPoint.Name = "TpToWayPoint"

local DelAllPoint = Instance.new("Frame",GAMEPLAY:WaitForChild("LookTp"))
DelAllPoint.Name = "DelAllPoint"

local WallHack = Instance.new("Frame",PlayerFolder)
WallHack.Name = "WallHack"

local NoClip = Instance.new("Frame",PlayerFolder:WaitForChild("WallHack"))
NoClip.Name = "NoClip"

local RtxMode = Instance.new("Frame",PlayerFolder:WaitForChild("WallHack"))
RtxMode.Name = "RtxMode"

for _, v in pairs(Embed:GetDescendants()) do
	if v:IsA("Folder") then
		if v.Name == "TheLists" then
			for _, v in pairs(v:GetDescendants()) do
				if v.Name == "Player" then
					for _, v in pairs(v:GetDescendants()) do
						if v:IsA("Frame") then
							
							if PlayerDebris == false then
								WallHack.Visible = false
								WallHack.Interactable = false
							end
							
							if v.Name == "WallHack" then
								v.Size = UDim2.new(0.636, 0,0.143, 0)
								v.Position = UDim2.new(0.242, 0,0.256, 0)
								v.BackgroundColor3 = Color3.new(0,0,0)
								v.BackgroundTransparency = 0.8
								v.BorderSizePixel = 0
								
								local ActivateWallHack = Instance.new("TextButton",v)
								ActivateWallHack.Name = "ActivateWallHack"
								ActivateWallHack.BackgroundTransparency = 1
								ActivateWallHack.TextColor3 = Color3.new(1,1,1)
								ActivateWallHack.TextSize = 23
								ActivateWallHack.Text = "LEFT ALT"
								
								ActivateWallHack.Position = UDim2.new(0.749, 0,0, 0)
								ActivateWallHack.Size = UDim2.new(0.251, 0,1, 0)
								ActivateWallHack.Font = Enum.Font.SourceSans
								
								local Description = Instance.new("TextLabel",v)
								Description.Name = "Description"
								Description.BackgroundTransparency = 1
								Description.TextColor3 = Color3.new(1,1,1)
								Description.TextScaled = true
								Description.Text = "ESP / WALLHACK"

								Description.Position = UDim2.new(0, 0,0.302, 0)
								Description.Size = UDim2.new(0.387, 0,0.395, 0)
								Description.Font = Enum.Font.SourceSans
								
								
															
							end
							
							if v.Name == "NoClip" then
								v.Size = UDim2.new(1, 0,1, 0)
								v.Position = UDim2.new(-0.002, 0,1.163, 0)
								v.BackgroundColor3 = Color3.new(0,0,0)
								v.BackgroundTransparency = 0.8
								v.BorderSizePixel = 0
								
								local ActivateNoclip = Instance.new("TextButton",v)
								ActivateNoclip.Name = "ActivateNoclip"
								ActivateNoclip.BackgroundTransparency = 1
								ActivateNoclip.TextColor3 = Color3.new(1,1,1)
								ActivateNoclip.TextSize = 23
								ActivateNoclip.Text = "X"

								ActivateNoclip.Position = UDim2.new(0.749, 0,0, 0)
								ActivateNoclip.Size = UDim2.new(0.251, 0,1, 0)
								ActivateNoclip.Font = Enum.Font.SourceSans

								local Description = Instance.new("TextLabel",v)
								Description.Name = "Description"
								Description.BackgroundTransparency = 1
								Description.TextColor3 = Color3.new(1,1,1)
								Description.TextScaled = true
								Description.Text = "NOCLIP"

								Description.Position = UDim2.new(0, 0,0.302, 0)
								Description.Size = UDim2.new(0.226, 0,0.395, 0)
								Description.Font = Enum.Font.SourceSans
							end
							
							if v.Name == "RtxMode" then
								v.Size = UDim2.new(1, 0,1, 0)
								v.Position = UDim2.new(-0.002, 0,2.326, 0)
								v.BackgroundColor3 = Color3.new(0,0,0)
								v.BackgroundTransparency = 0.8
								v.BorderSizePixel = 0

								local ActivateRtxMode = Instance.new("TextButton",v)
								ActivateRtxMode.Name = "ActivateNoclip"
								ActivateRtxMode.BackgroundTransparency = 1
								ActivateRtxMode.TextColor3 = Color3.new(1,1,1)
								ActivateRtxMode.TextSize = 23
								ActivateRtxMode.Text = "V"

								ActivateRtxMode.Position = UDim2.new(0.749, 0,0, 0)
								ActivateRtxMode.Size = UDim2.new(0.251, 0,1, 0)
								ActivateRtxMode.Font = Enum.Font.SourceSans

								local Description = Instance.new("TextLabel",v)
								Description.Name = "Description"
								Description.BackgroundTransparency = 1
								Description.TextColor3 = Color3.new(1,1,1)
								Description.TextScaled = true
								Description.Text = "RTX MODE"

								Description.Position = UDim2.new(0, 0,0.302, 0)
								Description.Size = UDim2.new(0.226, 0,0.395, 0)
								Description.Font = Enum.Font.SourceSans
							end
							local cor = Instance.new("UICorner",v)
							cor.CornerRadius = UDim.new(0,4)
							
							v.MouseEnter:Connect(function()
								local tween = tweenService:Create(v,TweenInfo.new(0.3),{BackgroundColor3 = Color3.new(0.054902, 1, 0.321569)})
								tween:Play()
							end)
							v.MouseLeave:Connect(function()
								local tween = tweenService:Create(v,TweenInfo.new(0.3),{BackgroundColor3 = Color3.new(0, 0, 0)})
								tween:Play()
							end)
							local deb1 = true
							local deb2 = true
							local deb3 = true
							
							uis.InputBegan:Connect(function(inp)
								if inp.KeyCode == Enum.KeyCode.LeftAlt then
									if deb1 == true then
										Embed:WaitForChild("TheLists").Player.WallHack.ActivateWallHack.TextColor3 = Color3.new(0.054902, 1, 0.321569)
										deb1 = false
									elseif deb1 == false then
										Embed:WaitForChild("TheLists").Player.WallHack.ActivateWallHack.TextColor3 = Color3.new(1, 1, 1)
										deb1 = true
									end
								end
							end)
							
							uis.InputBegan:Connect(function(inp)
								if inp.KeyCode == Enum.KeyCode.X then
									if deb2 == true then
										
										Embed:WaitForChild("TheLists").Player.WallHack.NoClip.ActivateNoclip.TextColor3 = Color3.new(0.054902, 1, 0.321569)
										deb2 = false
									elseif deb2 == false then
										Embed:WaitForChild("TheLists").Player.WallHack.NoClip.ActivateNoclip.TextColor3 = Color3.new(1, 1, 1)
										deb2 = true
									end
								end
								if inp.KeyCode == Enum.KeyCode.Space then
									Embed:WaitForChild("TheLists").Player.WallHack.NoClip.ActivateNoclip.TextColor3 = Color3.new(1, 1, 1)
									deb2 = false
								end
							end)
							
							uis.InputBegan:Connect(function(inp)
								if inp.KeyCode == Enum.KeyCode.V then
									if deb3 == true then
										Embed:WaitForChild("TheLists").Player.WallHack.RtxMode.ActivateNoclip.TextColor3 = Color3.new(0.054902, 1, 0.321569)
										deb3 = false
									elseif deb3 == false then
										Embed:WaitForChild("TheLists").Player.WallHack.RtxMode.ActivateNoclip.TextColor3 = Color3.new(1, 1, 1)
										deb3 = true
									end
								end
							end)
						end
					end
				end
			end
		end
	end
end

for _, v in pairs(Embed:GetDescendants()) do
	if v:IsA("Folder") then
		if v.Name == "TheLists" then
			for _, v in pairs(v:GetDescendants()) do
				if v.Name == "GAMEPLAY" then
					for _, v in pairs(v:GetDescendants()) do
						if v:IsA("Frame") then

							if GamePlayDebris == false then
								LookTp.Visible = false
								LookTp.Interactable = false
							end

							if v.Name == "LookTp" then
								v.Size = UDim2.new(0.636, 0,0.143, 0)
								v.Position = UDim2.new(0.242, 0,0.256, 0)
								v.BackgroundColor3 = Color3.new(0,0,0)
								v.BackgroundTransparency = 0.8
								v.BorderSizePixel = 0

								local ActivateLookTp = Instance.new("TextButton",v)
								ActivateLookTp.Name = "ActivateLookTp"
								ActivateLookTp.BackgroundTransparency = 1
								ActivateLookTp.TextColor3 = Color3.new(1,1,1)
								ActivateLookTp.TextSize = 23
								ActivateLookTp.Text = "G"

								ActivateLookTp.Position = UDim2.new(0.749, 0,0, 0)
								ActivateLookTp.Size = UDim2.new(0.251, 0,1, 0)
								ActivateLookTp.Font = Enum.Font.SourceSans

								local Description = Instance.new("TextLabel",v)
								Description.Name = "Description"
								Description.BackgroundTransparency = 1
								Description.TextColor3 = Color3.new(1,1,1)
								Description.TextScaled = true
								Description.Text = "LOOK TP"

								Description.Position = UDim2.new(0, 0,0.302, 0)
								Description.Size = UDim2.new(0.226, 0,0.395, 0)
								Description.Font = Enum.Font.SourceSans



							end

							if v.Name == "WayPointCreate" then
								v.Size = UDim2.new(1, 0,1, 0)
								v.Position = UDim2.new(-0.002, 0,1.163, 0)
								v.BackgroundColor3 = Color3.new(0,0,0)
								v.BackgroundTransparency = 0.8
								v.BorderSizePixel = 0

								local WayPointCreate = Instance.new("TextButton",v)
								WayPointCreate.Name = "ActivateWayPointCreate"
								WayPointCreate.BackgroundTransparency = 1
								WayPointCreate.TextColor3 = Color3.new(1,1,1)
								WayPointCreate.TextSize = 23
								WayPointCreate.Text = "O"

								WayPointCreate.Position = UDim2.new(0.749, 0,0, 0)
								WayPointCreate.Size = UDim2.new(0.251, 0,1, 0)
								WayPointCreate.Font = Enum.Font.SourceSans

								local Description = Instance.new("TextLabel",v)
								Description.Name = "Description"
								Description.BackgroundTransparency = 1
								Description.TextColor3 = Color3.new(1,1,1)
								Description.TextScaled = true
								Description.Text = "CREATE WAYPOINT"

								Description.Position = UDim2.new(0, 0,0.302, 0)
								Description.Size = UDim2.new(0.226, 0,0.395, 0)
								Description.Font = Enum.Font.SourceSans
							end

							if v.Name == "TpToWayPoint" then
								v.Size = UDim2.new(1, 0,1, 0)
								v.Position = UDim2.new(-0.002, 0,2.326, 0)
								v.BackgroundColor3 = Color3.new(0,0,0)
								v.BackgroundTransparency = 0.8
								v.BorderSizePixel = 0

								local TpToWayPoint = Instance.new("TextButton",v)
								TpToWayPoint.Name = "ActivateTpToWayPoint"
								TpToWayPoint.BackgroundTransparency = 1
								TpToWayPoint.TextColor3 = Color3.new(1,1,1)
								TpToWayPoint.TextSize = 23
								TpToWayPoint.Text = "i"

								TpToWayPoint.Position = UDim2.new(0.749, 0,0, 0)
								TpToWayPoint.Size = UDim2.new(0.251, 0,1, 0)
								TpToWayPoint.Font = Enum.Font.SourceSans

								local Description = Instance.new("TextLabel",v)
								Description.Name = "Description"
								Description.BackgroundTransparency = 1
								Description.TextColor3 = Color3.new(1,1,1)
								Description.TextScaled = true
								Description.Text = "TP TO WAYPOINT"

								Description.Position = UDim2.new(0, 0,0.302, 0)
								Description.Size = UDim2.new(0.226, 0,0.395, 0)
								Description.Font = Enum.Font.SourceSans
							end
							
							if v.Name == "DelAllPoint" then
								v.Size = UDim2.new(1, 0,1, 0)
								v.Position = UDim2.new(-0.002, 0,3.489, 0)
								v.BackgroundColor3 = Color3.new(0,0,0)
								v.BackgroundTransparency = 0.8
								v.BorderSizePixel = 0

								local ActivateDelAllPoint = Instance.new("TextButton",v)
								ActivateDelAllPoint.Name = "ActivateTpToWayPoint"
								ActivateDelAllPoint.BackgroundTransparency = 1
								ActivateDelAllPoint.TextColor3 = Color3.new(1,1,1)
								ActivateDelAllPoint.TextSize = 23
								ActivateDelAllPoint.Text = "0"

								ActivateDelAllPoint.Position = UDim2.new(0.749, 0,0, 0)
								ActivateDelAllPoint.Size = UDim2.new(0.251, 0,1, 0)
								ActivateDelAllPoint.Font = Enum.Font.SourceSans

								local Description = Instance.new("TextLabel",v)
								Description.Name = "Description"
								Description.BackgroundTransparency = 1
								Description.TextColor3 = Color3.new(1,1,1)
								Description.TextScaled = true
								Description.Text = "DEL ALL WAYPOINT"

								Description.Position = UDim2.new(0, 0,0.302, 0)
								Description.Size = UDim2.new(0.226, 0,0.395, 0)
								Description.Font = Enum.Font.SourceSans
							end
							local cor = Instance.new("UICorner",v)
							cor.CornerRadius = UDim.new(0,4)
							
							local deb1 = true
							local deb2 = true
							local deb3 = true

							v.MouseEnter:Connect(function()
								local tween = tweenService:Create(v,TweenInfo.new(0.3),{BackgroundColor3 = Color3.new(0.054902, 1, 0.321569)})
								tween:Play()
							end)
							v.MouseLeave:Connect(function()
								local tween = tweenService:Create(v,TweenInfo.new(0.3),{BackgroundColor3 = Color3.new(0, 0, 0)})
								tween:Play()
							end)

							uis.InputBegan:Connect(function(inp)
								if inp.KeyCode == Enum.KeyCode.G then
									if deb1 == true then
										Embed:WaitForChild("TheLists").GAMEPLAY.LookTp.ActivateLookTp.TextColor3 = Color3.new(0.054902, 1, 0.321569)
										deb1 = false
									elseif deb1 == false then
										Embed:WaitForChild("TheLists").GAMEPLAY.LookTp.ActivateLookTp.TextColor3 = Color3.new(1, 1, 1)
										deb1 = true
									end
								end
							end)
						end
					end
				end
			end
		end
	end
end

for _, v in pairs(Embed:GetDescendants()) do
	if v:IsA("Folder") then
		if v.Name == "TheLists" then
			for _, v in pairs(v:GetDescendants()) do
				if v.Name == "Theme" then
					for _, v in pairs(v:GetDescendants()) do
						if v:IsA("Frame") then

			if ThemeDebris == false then
				ChangeTheme.Visible = false
				ChangeTheme.Interactable = false
			end

			if v.Name == "ChangeTheme" then
			v.Size = UDim2.new(0.636, 0,0.143, 0)
			v.Position = UDim2.new(0.242, 0,0.256, 0)
			v.BackgroundColor3 = Color3.new(0,0,0)
			v.BackgroundTransparency = 0.8
			v.BorderSizePixel = 0

			local ActivateLookTp = Instance.new("TextButton",v)
			ActivateLookTp.Name = "ActivateTheme"
			ActivateLookTp.BackgroundTransparency = 1
			ActivateLookTp.TextColor3 = Color3.new(1,1,1)
			ActivateLookTp.TextSize = 23
			ActivateLookTp.Text = "J"

			ActivateLookTp.Position = UDim2.new(0.749, 0,0, 0)
			ActivateLookTp.Size = UDim2.new(0.251, 0,1, 0)
			ActivateLookTp.Font = Enum.Font.SourceSans

			local Description = Instance.new("TextLabel",v)
			Description.Name = "Description"
			Description.BackgroundTransparency = 1
			Description.TextColor3 = Color3.new(1,1,1)
			Description.TextScaled = true
			Description.Text = "CHANGE THEME: NIGHT EDITION"

			Description.Position = UDim2.new(0, 0,0.302, 0)
			Description.Size = UDim2.new(0.524, 0,0.395, 0)
			Description.Font = Enum.Font.SourceSans
							end
						end
						local cor = Instance.new("UICorner",v)
						cor.CornerRadius = UDim.new(0,4)
					end
				end
			end
		end
	end
end
--


local ListsFolder = Instance.new("Folder",Embed)
ListsFolder.Name = "Lists"


local btnTheme = Instance.new("TextButton",ListsFolder)
btnTheme.Name = "Theme"
btnTheme.TextSize = 14
btnTheme.TextColor3 = Color3.new(1,1,1)
btnTheme.BackgroundColor3 = Color3.new(0,0,0)
btnTheme.BackgroundTransparency = 0.8
btnTheme.Text = "THEME"
btnTheme.Position = UDim2.new(0.016, 0,0.376, 0)
btnTheme.Size = UDim2.new(0.2, 0,0.1, 0)
btnTheme.Font = Enum.Font.SourceSans


local btnPlayer = Instance.new("TextButton",ListsFolder)
btnPlayer.Name = "Player"
btnPlayer.TextSize = 14
btnPlayer.TextColor3 = Color3.new(1,1,1)
btnPlayer.BackgroundColor3 = Color3.new(0,0,0)
btnPlayer.BackgroundTransparency = 0.8
btnPlayer.Text = "PLAYER"
btnPlayer.Position = UDim2.new(0.016, 0,0.136, 0)
btnPlayer.Size = UDim2.new(0.2, 0,0.1, 0)
btnPlayer.Font = Enum.Font.SourceSans


local btnGameplay = Instance.new("TextButton",ListsFolder)
btnGameplay.Name = "GamePlay"
btnGameplay.TextSize = 14
btnGameplay.TextColor3 = Color3.new(1,1,1)
btnGameplay.BackgroundColor3 = Color3.new(0,0,0)
btnGameplay.BackgroundTransparency = 0.8
btnGameplay.Text = "GAMEPLAY"
btnGameplay.Position = UDim2.new(0.016, 0,0.256, 0)
btnGameplay.Size = UDim2.new(0.2, 0,0.1, 0)
btnGameplay.Font = Enum.Font.SourceSans


local btnPremium = Instance.new("TextButton",ListsFolder)
btnPremium.Name = "Premium"
btnPremium.TextSize = 14
btnPremium.TextColor3 = Color3.new(0.054902, 1, 0.321569)
btnPremium.BackgroundColor3 = Color3.new(0,0,0)
btnPremium.BackgroundTransparency = 0.8
btnPremium.Text = "PREMIUM"
btnPremium.Position = UDim2.new(0.016, 0,0.588, 0)
btnPremium.Size = UDim2.new(0.2, 0,0.1, 0)
btnPremium.Font = Enum.Font.SourceSans

for _, v in pairs(Embed:GetDescendants()) do
	if v:IsA("Folder") then
		if v.Name == "Lists" then
			for _, v in pairs(v:GetDescendants()) do
				if v:IsA("TextButton") then
					local corBtnTheme = Instance.new("UICorner",v)
					corBtnTheme.CornerRadius = UDim.new(0,4)

					local btnThemeStroke = Instance.new("UIStroke",v)
					btnThemeStroke.Color = Color3.new(0.52549, 0.52549, 0.52549)
					btnThemeStroke.Transparency = 0.61
					btnThemeStroke.Thickness = 1
					btnThemeStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					
					if v.Name == "Premium" then
						btnThemeStroke.Color = Color3.new(0.054902, 1, 0.321569)
					end
				end
			end
		end
	end
end

btnPlayer.MouseButton1Click:Connect(function()
	LookTp.Visible = false
	LookTp.Interactable = false
	
	ChangeTheme.Visible = false
	ChangeTheme.Interactable = false
	
	WallHack.Visible = true
	WallHack.Interactable = true
	Title.Text = "PLAYER"
end)

btnGameplay.MouseButton1Click:Connect(function()
	WallHack.Visible = false
	WallHack.Interactable = false

	ChangeTheme.Visible = false
	ChangeTheme.Interactable = false
	
	LookTp.Visible = true
	LookTp.Interactable = true
	Title.Text = "GAMEPLAY"
end)

btnTheme.MouseButton1Click:Connect(function()
	WallHack.Visible = false
	WallHack.Interactable = false

	LookTp.Visible = false
	LookTp.Interactable = false
	
	ChangeTheme.Visible = true
	ChangeTheme.Interactable = true
	Title.Text = "THEME"
end)

UnFuc.MouseEnter:Connect(function()
	local Tween = tweenService:Create(UnFuc,TweenInfo.new(0.2),{Rotation = 90})
	Tween:Play()
end)

UnFuc.MouseLeave:Connect(function()
	local Tween = tweenService:Create(UnFuc,TweenInfo.new(0.2),{Rotation = 0})
	Tween:Play()
end)

local Holding = Instance.new("StringValue",Embed)
Holding.Name = "Holding"
Holding.Value = "false"

Mouse.Button1Down:Connect(function()
	Holding.Value = "true"
end)

Mouse.Button1Up:Connect(function()
	Holding.Value = "false"
end)

Mouse.Move:Connect(function()
	if Holding.Value == "true" then
		Embed.Position = UDim2.new(0,Mouse.X,0,Mouse.Y)
	end
end)

--FOR ESP
uis.InputBegan:Connect(function(inp)
	if inp.KeyCode == Enum.KeyCode.LeftAlt then
		if debris == true then
			for _, v in pairs(game.Players:GetPlayers()) do
				if v.Team ~= plr.Team then
					local esp = Instance.new("Highlight",v.Character)
					esp.Name = "EspBox"
					esp.FillColor = Color3.new(0.215686, 1, 0.282353)

					local embed = Instance.new("BillboardGui",v.Character.Head)
					embed.Size = UDim2.new(8,0,4,0)
					embed.StudsOffset = Vector3.new(0,3,0)
					embed.AlwaysOnTop = true

					local Name = Instance.new("TextLabel",embed)
					Name.Size = UDim2.new(1,0,1,0)
					Name.BackgroundTransparency = 1
					Name.Font = Enum.Font.Jura
					Name.Text = v.Character.Humanoid.DisplayName .. ": " .. v.Character.Humanoid.Health
					Name.TextScaled = true
					Name.TextColor3 = Color3.new(0.227451, 1, 0.639216)

					embed.Name = "embed"
					Name.Name = "NameTag"
					if v.Humanoid.DisplayName == plr.DisplayName then
						esp:Destroy()
						embed:Destroy()
					end
				end
			end
			debris = false
		elseif debris == false then
			for _, v in pairs(game.Players:GetPlayers()) do
					if v.Character:FindFirstChild("EspBox") then
						v.Character:FindFirstChild("EspBox"):Destroy()
						v.Character.Head:FindFirstChild("embed"):Destroy()
					end
			end
			debris = true
		end
	end
end)

uis.InputBegan:Connect(function(inp)
	if inp.KeyCode == Enum.KeyCode.Up then
		camera.FieldOfView += 5
	end

	if inp.KeyCode == Enum.KeyCode.Down then
		camera.FieldOfView -= 5
	end
end)
--NOCLIP
uis.InputBegan:Connect(function(inp)
	if inp.KeyCode == Enum.KeyCode.X then
		if debris2 == true then
			for _, v in pairs(plr.Character:GetDescendants()) do
				if v:FindFirstChild("LowerTorso") then
					v.CanCollide = false
				end

				if v:FindFirstChild("UpperTorso") then
					v.CanCollide = false
				end

				if v:IsA("MeshPart") then
					v.CanCollide = false
				end

				if v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
		end
	end
end)
--TELEPORT-TO
uis.InputBegan:Connect(function(inp)
	if inp.KeyCode == Enum.KeyCode.O then
		if debounce == true then
			local PartToTeleport = Instance.new("Part",workspace)
			PartToTeleport.CFrame = camera.CFrame
			PartToTeleport.Anchored = true
			PartToTeleport.CanCollide = false
			PartToTeleport.Transparency = 0
			PartToTeleport.Material = Enum.Material.Glass

			PartToTeleport.Name = "TeleportPunct"
			PartToTeleport.Size = Vector3.new(1,1,1)
			debounce = false

			local Fill = Instance.new("Highlight",PartToTeleport)
			Fill.FillColor = Color3.new(0.921569, 1, 0.0627451)
		end
	end

	if inp.KeyCode == Enum.KeyCode.I then
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("Part") then
				if v.Name == "TeleportPunct" then
					plr.Character.HumanoidRootPart.CFrame = v.CFrame
				end
			end
		end
	end

	if inp.KeyCode == Enum.KeyCode.Zero then
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("Part") then
				if v.Name == "TeleportPunct" then
					v:Destroy()
				end
			end
		end
		debounce = true
	end
end)

--RTX MODE
uis.InputBegan:Connect(function(inp)
	if inp.KeyCode == Enum.KeyCode.V then
		if debris3 == true then
			local Cloud = Instance.new("Clouds",workspace.Terrain)

			local Sky = Instance.new("Sky",game.Lighting)
			Sky.MoonTextureId = "rbxassetid://6444320592"
			Sky.SkyboxBk = "rbxassetid://6444884337"
			Sky.SkyboxDn = "rbxassetid://6444884785"
			Sky.SkyboxFt = "rbxassetid://6444884337"
			Sky.SkyboxLf = "rbxassetid://6444884337"
			Sky.SkyboxRt = "rbxassetid://6444884337"
			Sky.SkyboxUp = "rbxassetid://6412503613"

			Sky.StarCount = 3000
			Sky.SunAngularSize = 11
			Sky.SunAngularSize = "rbxassetid://6196665106"

			local SunRays = Instance.new("SunRaysEffect",game.Lighting)
			SunRays.Intensity = 0.03
			SunRays.Spread = 0.03

			local ColorCorrection = Instance.new("ColorCorrectionEffect",game.Lighting)
			ColorCorrection.Contrast = 0.03
			ColorCorrection.Saturation = 0.03
			ColorCorrection.Enabled = true

			Cloud.Name = "RTX_Cloud_IN"
			Sky.Name = "RTX_Sky_IN"
			SunRays.Name = "RTX_SunRays_IN"
			ColorCorrection.Name = "RTX_Color_IN"

			for _, v in pairs(workspace:GetDescendants()) do
				if v:IsA("Part") or v:IsA("MeshPart") then
					v.Reflectance = 0.03
				end
			end

			debris3 = false
		elseif debris3 == false then
			for _, v in pairs(game.Lighting:GetDescendants()) do
				if v.Name == "RTX_Sky_IN" or v.Name == "RTX_SunRays_IN" or v.Name == "RTX_Color_IN" then
					v:Destroy()
				end
			end

			for _, v in pairs(workspace:GetDescendants()) do
				if v:IsA("Part") or v:IsA("MeshPart") then
					v.Reflectance = 0
				end
			end

			game.Workspace.Terrain:FindFirstChild("RTX_Cloud_IN"):Destroy()
			debris3 = true
		end
	end
end)

uis.InputBegan:Connect(function(inp)
	if inp.KeyCode == Enum.KeyCode.J then
		if debris4 == true then
			local TweenNightTo = tweenService:Create(game.Lighting,TweenInfo.new(0.8),{ClockTime = 0})
			TweenNightTo:Play()
			
			debris4 = false
		elseif debris4 == false then
			local TweenNightTo = tweenService:Create(game.Lighting,TweenInfo.new(0.8),{ClockTime = 14.5})
			TweenNightTo:Play()
			debris4 = true
		end
	end
end)

--TELEPORT TO LOOK
uis.InputBegan:Connect(function(inp)
	if inp.KeyCode == Enum.KeyCode.G then
		if debris5 == true then
			uis.InputBegan:Connect(function(inp)
				if inp.UserInputType == Enum.UserInputType.MouseButton1 then
					if debris5 == true then
						plr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5) 

						local cf = plr.Character.HumanoidRootPart.CFrame
						local lv = cf.lookVector
						plr.Character.HumanoidRootPart.CFrame = cf + (lv * Vector3.new(5, 5, 5))
					end
				end
			end)
			debris5 = false
		elseif debris5 == false then
			debris5 = true
		end
	end
end)
