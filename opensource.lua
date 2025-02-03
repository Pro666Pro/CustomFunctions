-- This script made by nexer1234
--Also its made for low level executors cuz they are SO TRASH so i upgrading them + custom functions

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character.Humanoid
local ass = Character.HumanoidRootPart or Character:WaitForChild("HumanoidRootPart")

local TS = game:GetService("TweenService")
local vimGeneral = Instance.new("VirtualInputManager") or game:GetService("VirtualInputManager")
local vimComponent = game or game:GetService("VirtualInputManager")


local function presskey(key)
  vimGeneral:SendKeyEvent(true, key, false, vimGeneralComponent)
  task.wait()
  vimGeneral:SendKeyEvent(false, key, false, vimGeneralComponent)
end

local function holdkey(key)
  vimGeneral:SendKeyEvent(true, key, false, vimGeneralComponent)
end

local function releasekey(key)
  vimGeneral:SendKeyEvent(false, key, false, vimGeneralComponent)
end

local function pressleftmouse(x, y)
  coordinatex = x or 0
  coordinatey = y or 0
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 0, true, vimGeneralComponent, false)
  task.wait()
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 0, false, vimGeneralComponent, false)
end

local function holdleftmouse(x, y)
  coordinatex = x or 0
  coordinatey = y or 0
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 0, true, vimGeneralComponent, false)
end

local function releaseleftmouse(x, y)
  coordinatex = x or 0
  coordinatey = y or 0
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 0, false, vimGeneralComponent, false)
end

local function pressrightmouse(x, y)
  coordinatex = x or 0
  coordinatey = y or 0
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 1, true, vimGeneralComponent, false)
  task.wait()
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 1, false, vimGeneralComponent, false)
end

local function holdrightmouse(x, y)
  coordinatex = x or 0
  coordinatey = y or 0
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 1, true, vimGeneralComponent, false)
end

local function releaserightmouse(x, y)
  coordinatex = x or 0
  coordinatey = y or 0
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 1, false, vimGeneralComponent, false)
end

local function tptoinstancecframe(instance)
  place = instance
  if place then
    ass.CFrame = place.CFrame\
  elseif place == nil then
    error("cmd: tptoinstancecframe, instance not found")
  end
end

local function tptocframe(pos)
  place = pos
  if place then
    ass.CFrame = CFrame.new(place)
  elseif place == nil then
    error("cmd: tptocframe, set cframe coordinates xyz like this: x,y,z")
  end
end

local function tptopos(pos)
  place = pos
  if place then
    ass.Position = Vector3.new(place)
  elseif place == nil then
    error("cmd: tptopos, set pos coordinates xyz like this: x,y,z")
  end
end

local function flytoinstance(instance, seconds)
  place = instance
  time = seconds or 5
  if place then
    local settings = TweenInfo.new(
	    time,
	    Enum.EasingStyle.Linear,
	    Enum.EasingDirection.Out
    )
    local goal = {}
    goal.Position = place.Position
    local tween = TS:Create(ass, settings, goal)
    tween:Play()
    tween.Completed:Wait()
  elseif place == nil then
    error("cmd: flytoinstance, instance not found")
  end
end

local function esp(instance)
  place = instance
  if place then
    Instance.new("Highlight", place)
  elseif place == nil then
    error("cmd: esp, instance not found")
  end
end

local function touchinstance(instance)
  part = instance
  if part then
    firstset = part.CFrame
    secondset = part.CanCollide
    part.CanCollide = false
    part.CFrame = ass.CFrame
    task.wait()
    part.CFrame = firstset
    part.CanCollide = secondset
  else part == nil then
    error("cmd: touchinstance, instance not found")
  end
end

local function setwalkspeed(power)
  number = power
  if number then
    Humanoid.WalkSpeed(number)
  elseif number == nil then
    error("cmd: changewalkspeed, didnt set power")
  end
end

local function setjumppower(power)
  number = power
  if number then
    Humanoid.JumpPower(number)
  elseif number == nil then
    error("cmd: changejumppower, didnt set power")
  end
end

local function sethipheight(power)
  number = power
  if number then
    Humanoid.HipHeight(number)
  elseif number == nil then
    error("cmd: changehipheight, didnt set number")
  end
end

local function sethealth(power)
  number = power
  if number then
    Humanoid.Health(number)
  elseif number == nil then
    error("cmd: changehealth, didnt set number")
  end
end

if fireproximityprompt then
warn("fireproximityprompt arleady supported in your executor")
else
local function fireproximityprompt(instance)
instance = instance
  if instance then
if not instance.ClassName == "ProximityPrompt" then
  for i,v in ipairs(instance:GetChildren()) do
	if v.ClassName == "ProximityPrompt" then
	instance = v
	end
  end
end
  if instance.ClassName == "ProximityPrompt" then
  local old = nil; local Enabled = instance.Enabled; local MaxActivationDistance = instance.MaxActivationDistance; local HoldDuration = instance.HoldDuration; local RequiresLineOfSight = instance.RequiresLineOfSight
  instance.Enabled = true; instance.MaxActivationDistance = math.huge; instance.HoldDuration = 0; instance.RequiresLineOfSight = false
  local function getthing(class)
    local ListOfPartClasses = {'BasePart','MeshPart','Part'}
    for i,v in ipairs(ListOfPartClasses) do if class:FindFirstAncestorOfClass(v) then return class:FindFirstAncestorOfClass(v) end end
  end
 local qwerty = getthing(instance)
 if not qwerty then oldparent = instance.Parent; instance.Parent = Instance.new("Part", workspace).Transparency = 1; qwerty = instance.Parent end
 old = qwerty.CFrame
 qwerty.CFrame = game:GetService("Players").LocalPlayer.Character.Head.CFrame + game:GetService("Players").LocalPlayer.Character.Head.CFrame.LookVector * 3
 task.wait(); instance:InputHoldBegin(); task.wait(); instance:InputHoldEnd()
 qwerty.CFrame = old
 instance.Enabled = Enabled; instance.MaxActivationDistance = MaxActivationDistance; instance.HoldDuration = HoldDuration; instance.RequiresLineOfSight = RequiresLineOfSight; instance.Parent = oldparent
else
error("cmd: fireproximityprompt, instance is not a proximity prompt")
end
elseif instance == nil then
error("cmd: fireproximityprompt, instance not found")
end
end
end

if fireproximityprompt then
warn("fireproximityprompt arleady supported in your executor")
else
local function fireproximityprompt(instance, anotherinstance, mode)
instance = instance
  if instance then
  if instance.ClassName == "TouchTransmitter" then
  local CFrame = instance.CFrame; local CanCollide = instance.CanCollide
  instance.Enabled = true; instance.MaxActivationDistance = math.huge; instance.HoldDuration = 0; instance.RequiresLineOfSight = false
  local function getthing(class)
    local ListOfPartClasses = {'BasePart','MeshPart','Part'}
    for i,v in ipairs(ListOfPartClasses) do if class:FindFirstAncestorOfClass(v) then return class:FindFirstAncestorOfClass(v) end end
  end
 local qwerty = getthing(instance)
 old = qwerty.CFrame
 qwerty.CFrame = game:GetService("Players").LocalPlayer.Character.Head.CFrame + game:GetService("Players").LocalPlayer.Character.Head.CFrame.LookVector * 3
 task.wait(); instance:InputHoldBegin(); task.wait(); instance:InputHoldEnd()
 qwerty.CFrame = old
 instance.Enabled = Enabled; instance.MaxActivationDistance = MaxActivationDistance; instance.HoldDuration = HoldDuration; instance.RequiresLineOfSight = RequiresLineOfSight; instance.Parent = oldparent
else
error("cmd: fireproximityprompt, instance is not a proximity prompt")
end
elseif instance == nil then
error("cmd: fireproximityprompt, instance not found")
end
end
end
