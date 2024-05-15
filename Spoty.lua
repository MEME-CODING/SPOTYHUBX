local uis = game:GetService("UserInputService")
local tweenService = game:GetService("TweenService")
local debris = true
local debris2 = true
local debris3 = true
local debris4 = true
local debounce = true
local plr = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

--FOR INTERFACE CUSTOM
local debrisGui = true

local Gui = Instance.new("ScreenGui",plr.PlayerGui)
Gui.Name = "HackTo"

local WallHack = Instance.new("TextButton",Gui)
WallHack.Name = "WallHack"

local NoClip = Instance.new("TextButton",Gui)
NoClip.Name = "NoClip"

local CreatePoint = Instance.new("TextButton",Gui)
CreatePoint.Name = "CreatePoint"

local TpToPoint = Instance.new("TextButton",Gui)
TpToPoint.Name = "TpToPoint"

local DelAllPoint = Instance.new("TextButton",Gui)
DelAllPoint.Name = "DelAllPoint"

local RtxMode = Instance.new("TextButton",Gui)
RtxMode.Name = "RtxMode"

local NightEdition = Instance.new("TextButton",Gui)
NightEdition.Name = "NightEdition"

for _, v in pairs(Gui:GetDescendants()) do
	if v:IsA("TextButton") then
		v.TextColor3 = Color3.new(0, 1, 0.235294)
		v.Font = Enum.Font.JosefinSans
		v.BackgroundColor3 = Color3.new(0,0,0)
		local Corner = Instance.new("UICorner",v)
		Corner.CornerRadius = UDim.new(0,3)
		
		
		if v.Name == "NoClip" or v.Name == "DelAllPoint" or v.Name == "RtxMode" or v.Name == "CreatePoint" or v.Name == "TpToPoint" or v.Name == "NightEdition" then
			v.TextSize = 14
		end
		
		if v.Name == "WallHack" then
			v.TextScaled = true
			v.Position = UDim2.new(0.006, 0,0.881, 0)
			v.Size = UDim2.new(0.026, 0,0.038, 0)
			v.Text = "ALT"
		end
		
		if v.Name == "NoClip" then
			v.Position = UDim2.new(0.04, 0,0.881, 0)
			v.Size = UDim2.new(0.026, 0,0.038, 0)
			v.Text = "X"
		end
		
		if v.Name == "CreatePoint" then
			v.Position = UDim2.new(0.006, 0,0.786, 0)
			v.Size = UDim2.new(0.06, 0,0.038, 0)
			v.Text = "O"
		end
		
		if v.Name == "TpToPoint" then
			v.Position = UDim2.new(0.006, 0,0.737, 0)
			v.Size = UDim2.new(0.06, 0,0.038, 0)
			v.Text = "i"
		end
		
		if v.Name == "DelAllPoint" then
			v.Position = UDim2.new(0.04, 0,0.833, 0)
			v.Size = UDim2.new(0.026, 0,0.038, 0)
			v.Text = "0"
		end
		
		if v.Name == "RtxMode" then
			v.Position = UDim2.new(0.006, 0,0.833, 0)
			v.Size = UDim2.new(0.026, 0,0.038, 0)
			v.Text = "V"
		end
		
		if v.Name == "NightEdition" then
			v.Position = UDim2.new(0.006, 0,0.69, 0)
			v.Size = UDim2.new(0.06, 0,0.038, 0)
			v.Text = "J"
		end
	end
end

uis.InputBegan:Connect(function(inp)
	if inp.KeyCode == Enum.KeyCode.F2 then
		if debrisGui == true then
			plr.PlayerGui:FindFirstChild("HackTo").Enabled = false
			debrisGui = false
		elseif debrisGui == false then
			plr.PlayerGui:FindFirstChild("HackTo").Enabled = true
			debrisGui = true
		end
	end
end)

uis.InputBegan:Connect(function(inp)
	if inp.KeyCode == Enum.KeyCode.LeftAlt then
		local tween = tweenService:Create(WallHack,TweenInfo.new(0.2),{BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)})
		tween:Play()
		task.wait(0.1)
		local tween = tweenService:Create(WallHack,TweenInfo.new(0.4),{BackgroundColor3 = Color3.new(0, 0, 0)})
		tween:Play()
	end
	
	if inp.KeyCode == Enum.KeyCode.X then
		local tween = tweenService:Create(NoClip,TweenInfo.new(0.2),{BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)})
		tween:Play()
		task.wait(0.1)
		local tween = tweenService:Create(NoClip,TweenInfo.new(0.4),{BackgroundColor3 = Color3.new(0, 0, 0)})
		tween:Play()
	end
	
	if inp.KeyCode == Enum.KeyCode.O then
		local tween = tweenService:Create(CreatePoint,TweenInfo.new(0.2),{BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)})
		tween:Play()
		task.wait(0.1)
		local tween = tweenService:Create(CreatePoint,TweenInfo.new(0.4),{BackgroundColor3 = Color3.new(0, 0, 0)})
		tween:Play()
	end
	
	if inp.KeyCode == Enum.KeyCode.I then
		local tween = tweenService:Create(TpToPoint,TweenInfo.new(0.2),{BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)})
		tween:Play()
		task.wait(0.1)
		local tween = tweenService:Create(TpToPoint,TweenInfo.new(0.4),{BackgroundColor3 = Color3.new(0, 0, 0)})
		tween:Play()
	end
	
	if inp.KeyCode == Enum.KeyCode.Zero then
		local tween = tweenService:Create(DelAllPoint,TweenInfo.new(0.2),{BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)})
		tween:Play()
		task.wait(0.1)
		local tween = tweenService:Create(DelAllPoint,TweenInfo.new(0.4),{BackgroundColor3 = Color3.new(0, 0, 0)})
		tween:Play()
	end
	
	if inp.KeyCode == Enum.KeyCode.V then
		local tween = tweenService:Create(RtxMode,TweenInfo.new(0.2),{BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)})
		tween:Play()
		task.wait(0.1)
		local tween = tweenService:Create(RtxMode,TweenInfo.new(0.4),{BackgroundColor3 = Color3.new(0, 0, 0)})
		tween:Play()
	end
	
	if inp.KeyCode == Enum.KeyCode.J then
		local tween = tweenService:Create(NightEdition,TweenInfo.new(0.2),{BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)})
		tween:Play()
		task.wait(0.1)
		local tween = tweenService:Create(NightEdition,TweenInfo.new(0.4),{BackgroundColor3 = Color3.new(0, 0, 0)})
		tween:Play()
	end
end)



--FOR ESP
uis.InputBegan:Connect(function(inp)
	if inp.KeyCode == Enum.KeyCode.LeftAlt then
		if debris == true then
			for _, v in pairs(workspace:GetDescendants()) do
				if v:FindFirstChild("Humanoid") then
					local esp = Instance.new("Highlight",v)
					esp.Name = "EspBox"
					esp.FillColor = Color3.new(0.215686, 1, 0.282353)
					
					local embed = Instance.new("BillboardGui",v.Head)
					embed.Size = UDim2.new(8,0,4,0)
					embed.StudsOffset = Vector3.new(0,3,0)
					embed.AlwaysOnTop = true
					
					local Name = Instance.new("TextLabel",embed)
					Name.Size = UDim2.new(1,0,1,0)
					Name.BackgroundTransparency = 1
					Name.Font = Enum.Font.Jura
					Name.Text = v.Humanoid.DisplayName .. ": " .. v.Humanoid.Health
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
			for _, v in pairs(workspace:GetDescendants()) do
				if v:FindFirstChild("Humanoid") then
					
					if v:FindFirstChild("EspBox") then
						v:FindFirstChild("EspBox"):Destroy()
						v.Head:FindFirstChild("embed"):Destroy()
					end
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
			
			for _, v in pairs(Gui:GetDescendants()) do
				if v:IsA("TextButton") then
					local TweenToText = tweenService:Create(v,TweenInfo.new(0.8),{TextColor3 = Color3.new(1, 0.615686, 0)})
					TweenToText:Play()
				end
			end
			debris4 = false
		elseif debris4 == false then
			local TweenNightTo = tweenService:Create(game.Lighting,TweenInfo.new(0.8),{ClockTime = 14.5})
			TweenNightTo:Play()

			for _, v in pairs(Gui:GetDescendants()) do
				if v:IsA("TextButton") then
					local TweenToText = tweenService:Create(v,TweenInfo.new(0.8),{TextColor3 = Color3.new(0, 1, 0.235294)})
					TweenToText:Play()
				end
			end
			debris4 = true
		end
	end
end)
