
local prompt = script.Parent.ProximityPrompt
local forward= script.Parent.Folder.forward
local backward= script.Parent.Folder.backward
local right= script.Parent.Folder.right
local left= script.Parent.Folder.left
local forwardActive= forward.ClickDetector:GetAttribute("isActive")
local backwardActive= backward.ClickDetector:GetAttribute("isActive")
local rightActive= right.ClickDetector:GetAttribute("isActive")
local leftActive=left.ClickDetector:GetAttribute("isActive")

local function pressed()
	forward.Transparency=0
	backward.Transparency=0
	right.Transparency=0
	left.Transparency=0
	
	forward.ClickDetector:SetAttribute("isActive",true)
	backward.ClickDetector:SetAttribute("isActive",true)
	right.ClickDetector:SetAttribute("isActive",true)
	left.ClickDetector:SetAttribute("isActive",true)
	
	forwardActive= forward.ClickDetector:GetAttribute("isActive")
	backwardActive= backward.ClickDetector:GetAttribute("isActive")
	rightActive= right.ClickDetector:GetAttribute("isActive")
	leftActive=left.ClickDetector:GetAttribute("isActive")
end

local function moveForward()
	if forwardActive==true then
		script.Parent.CFrame=CFrame.new(script.Parent.CFrame.X +1,script.Parent.CFrame.Y,script.Parent.CFrame.Z)
	else
		print("kesalahan")
	end
end
prompt.PromptButtonHoldEnded:Connect(pressed)
forward.ClickDetector.MouseClick:Connect(moveForward)