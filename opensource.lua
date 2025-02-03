-- This script made by nexer1234
--Also its made for low level executors cuz they are SO TRASH so i upgrading them with custom functions

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character.Humanoid
local ass = Character.HumanoidRootPart or Character:WaitForChild("HumanoidRootPart")

local TS = game:GetService("TweenService")
local vimGeneral = Instance.new("VirtualInputManager") or game:GetService("VirtualInputManager")
local vimComponent = game or game:GetService("VirtualInputManager")

local function checkpath(instance)
    local path = {}
    local currentInstance = instance
    while currentInstance do
        table.insert(path, 1, currentInstance.Name)
        currentInstance = currentInstance.Parent
    end
    return table.concat(path, ".")
end


local function clickkey(key)
  vimGeneral:SendKeyEvent(true, key, false, vimGeneralComponent)
  task.wait()
  vimGeneral:SendKeyEvent(false, key, false, vimGeneralComponent)
end

local function presskey(key)
  vimGeneral:SendKeyEvent(true, key, false, vimGeneralComponent)
end

local function releasekey(key)
  vimGeneral:SendKeyEvent(false, key, false, vimGeneralComponent)
end

local function clickleftmouse(x, y)
  coordinatex = x or 0
  coordinatey = y or 0
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 0, true, vimGeneralComponent, false)
  task.wait()
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 0, false, vimGeneralComponent, false)
end

local function pressleftmouse(x, y)
  coordinatex = x or 0
  coordinatey = y or 0
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 0, true, vimGeneralComponent, false)
end

local function releaseleftmouse(x, y)
  coordinatex = x or 0
  coordinatey = y or 0
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 0, false, vimGeneralComponent, false)
end

local function clickrightmouse(x, y)
  coordinatex = x or 0
  coordinatey = y or 0
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 1, true, vimGeneralComponent, false)
  task.wait()
  vimGeneral:SendMouseButtonEvent(coordinatex, coordinatey, 1, false, vimGeneralComponent, false)
end

local function pressrightmouse(x, y)
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
    ass.CFrame = place.CFrame
  else
    error("cmd: tptoinstancecframe, instance not found")
  end
end

local function tptoinstancepos(instance)
  place = instance
  if place then
    ass.Position = place.Position
  else
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
  else
    error("cmd: flytoinstance, instance not found")
  end
end

local function esp(instance)
  place = instance
  if place then
    Instance.new("Highlight", place)
  else
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
  else
    error("cmd: touchinstance, instance not found")
  end
end

local function setwalkspeed(power)
  number = power
  if number then
    Humanoid.WalkSpeed(number)
  elseif number == nil then
    error("cmd: setwalkspeed, didnt set power")
  end
end

local function setjumppower(power)
  number = power
  if number then
    Humanoid.JumpPower(number)
  elseif number == nil then
    error("cmd: setjumppower, didnt set power")
  end
end

local function sethipheight(power)
  number = power
  if number then
    Humanoid.HipHeight(number)
  elseif number == nil then
    error("cmd: sethipheight, didnt set number")
  end
end

local function setgravity(power)
  number = power
  if number then
       workspace.Gravity(number)
  elseif number == nil then
    error("cmd: setgravity, didnt set number")
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

local function setrig(rigtype)
  type = rigtype
  if type == "R6" or type == "R15" then
  Humanoid.RigType = type
  elseif type == nil then
  error("cmd: setrig, didnt set rig type or set to invalid (only set R6/R15)")
  end
  end

local function spoofuserid(userid)
if game.CreatorType == Enum.CreatorType.User then
local OwnerID = game.CreatorId
	elseif game.CreatorType == Enum.CreatorType.Group then
		local OwnerID = game.GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
end

id = userid or OwnerID

Player.UserId = id

  end
  
local function disableremote(instance)
remote = instance
if remote.ClassName == "RemoteEvent" or remote.ClassName == "RemoteFunction" then

remote:Destroy()

else
  error("cmd: disableremote, instance not found or instance isnt remote event or remote function")
  end
  end
  
  
local function sethitbox(size, transparency)

size = size or 5
transparency = transparency or .8

for i,v in ipairs(Players:GetChildren()) do
if v and v ~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
v.Character:FindFirstChild("HumanoidRootPart").Size = Vector3.new(size,size,size)
v.Character:FindFirstChild("HumanoidRootPart").Transparency = transparency
v.Character:FindFirstChild("HumanoidRootPart").CanCollide = false
end
end
end

local function duplicate(instance, path)
part = instance
path = path
if part and path then
local clone = part:Clone()
clone.Parent = path
else
error("cmd: duplicate, wrong instance to duplicate or wrong path to duplicate into")
  end
  end
  
local function tptoplr(player)
plr = player
if Players:FindFirstChild(plr) then
ass.CFrame = plr.Character.HumanoidRootPart.CFrame
else
error("cmd: tptoplr, nil value or incorrect player name")
  end
end


local function scannames(instancename)

target = instancename
totalscanned = 0

local services = {}
for _, service in ipairs(game:GetDescendants()) do
	local success, result = pcall(function()
		table.insert(services, service.Name)
	end)
	task.wait()
end
table.sort(services)
for i,v in ipairs(services) do
	if v.Name == target then
	print("Total instances scanned: "..totalscanned..", path: "..checkpath(v))
	end
	totalscanned = totalscanned + 1
	task.wait()
end
end

local function scanclassnames(instanceclassname)

target = instanceclassname
totalscanned = 0

local services = {}
for _, service in ipairs(game:GetDescendants()) do
	local success, result = pcall(function()
		table.insert(services, service.Name)
	end)
	task.wait()
end
table.sort(services)
for i,v in ipairs(services) do
	if v.ClassName == target then
	print("Total instances scanned: "..totalscanned..", path: "..checkpath(v))
	end
	totalscanned = totalscanned + 1
	task.wait()
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

if clickkey then
print("clickkey() loaded")
else
error("clickkey() didn't load")
end

if presskey then
print("presskey() loaded")
else
error("presskey() didn't load")
end

if releasekey then
print("releasekey() loaded")
else
error("releasekey() didn't load")
end

if releasekey then
print("releasekey() loaded")
else
error("releasekey() didn't load")
end

if clickleftmouse then
print("clickleftmouse() loaded")
else
error("clickleftmouse() didn't load")
end

if pressleftmouse then
print("pressleftmouse() loaded")
else
error("pressleftmouse() didn't load")
end

if releaseleftmouse then
print("releaseleftmouse() loaded")
else
error("releaseleftmouse() didn't load")
end

if clickrightmouse then
print("clickrightmouse() loaded")
else
error("clickrightmouse() didn't load")
end

if pressrightmouse then
print("pressrightmouse() loaded")
else
error("pressrightmouse() didn't load")
end

if clickrightmouse then
print("clickrightmouse() loaded")
else
error("clickrightmouse() didn't load")
end

if tptoinstancecframe then
print("tptoinstancecframe() loaded")
else
error("tptoinstancecframe() didn't load")
end

if tptoinstancepos then
print("tptoinstancepos() loaded")
else
error("tptoinstancepos() didn't load")
end

if tptocframe then
print("tptocframe() loaded")
else
error("tptocframe() didn't load")
end

if tptopos then
print("tptopos() loaded")
else
error("tptopos() didn't load")
end

if flytoinstance then
print("flytoinstance() loaded")
else
error("flytoinstance() didn't load")
end

if esp then
print("esp() loaded")
else
error("esp() didn't load")
end

if touchinstance then
print("touchinstance() loaded")
else
error("touchinstance() didn't load")
end

if setwalkspeed then
print("setwalkspeed() loaded")
else
error("setwalkspeed() didn't load")
end

if setjumppower then
print("setjumppower() loaded")
else
error("setjumppower() didn't load")
end

if sethipheight then
print("sethipheight() loaded")
else
error("sethipheight() didn't load")
end

if setgravity then
print("setgravity() loaded")
else
error("setgravity() didn't load")
end

if sethealth then
print("sethealth() loaded")
else
error("sethealth() didn't load")
end

if setrig then
print("setrig() loaded")
else
error("setrig() didn't load")
end


if spoofuserid then
print("spoofuserid() loaded")
else
error("spoofuserid() didn't load")
end

if disableremote then
print("disableremote() loaded")
else
error("disableremote() didn't load")
end

if sethitbox then
print("sethitbox() loaded")
else
error("sethitbox() didn't load")
end

if duplicate then
print("duplicate() loaded")
else
error("duplicate() didn't load")
end

if tptoplr then
print("tptoplr() loaded")
else
error("tptoplr() didn't load")
end

if scannames then
print("scannames() loaded")
else
error("scannames() didn't load")
end

if scanclassnames then
print("scanclassnames() loaded")
else
error("scanclassnames() didn't load")
end

if checkpath then
print("checkpath() loaded")
else
error("checkpath() didn't load")
end
