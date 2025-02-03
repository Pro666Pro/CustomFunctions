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

local function tptoinstancepos(instance)
  place = instance
  if place then
    ass.Position = place.Position
  elseif place == nil then
    error("cmd: tptoinstancepos, instance not found")
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

local function changewalkspeed(power)
  number = power
  if number then
    Humanoid.WalkSpeed(number)
  elseif number == nil then
    error("cmd: changewalkspeed, didnt set power")
  end
end

local function changejumppower(power)
  number = power
  if number then
    Humanoid.JumpPower(number)
  elseif number == nil then
    error("cmd: changejumppower, didnt set power")
  end
end

local function changehipheight(power)
  number = power
  if number then
    Humanoid.HipHeight(number)
  elseif number == nil then
    error("cmd: changehipheight, didnt set number")
  end
end

local function changehealth(power)
  number = power
  if number then
    Humanoid.Health(number)
  elseif number == nil then
    error("cmd: changehealth, didnt set number")
  end
end

