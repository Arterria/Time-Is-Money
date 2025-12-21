local assetsPath = "Assets/"
local fontPath = assetsPath .. "Font/"
local sfxPath = assetsPath .. "Sfx/"
local imgPath = assetsPath .. "Images/"
local modulePath = assetsPath .. "Modules/"
local classesPath = modulePath .. "Classes/"
local guiPath = modulePath .. "Gui/"


GuiController = require(guiPath .. "GuiController")
Instance = require(classesPath .. "InstanceClass")
Button = require(classesPath .. "ButtonClass") 

screenHeight = love.graphics.getHeight()
screenWidth = love.graphics.getWidth()

theme = {
    backgroundColor = {love.math.colorFromBytes(80,80,80)},
    accentColor = {love.math.colorFromBytes(0,200,180)},
}

clickSfx = love.audio.newSource(sfxPath.."clickSFX1.mp3", "stream")

local myFont = fontPath.."MyFont.ttf"

fontBig = love.graphics.newFont(myFont,50)
fontNormal = love.graphics.newFont(myFont,24)
fontSmall = love.graphics.newFont(myFont,18)

local titleLabel = Instance.new("Textlabel")
debugger.recursePrint(titleLabel,"titlefresh",true)
titleLabel.text = "Time is Money"
titleLabel:setPos(10,0)
titleLabel:setSize(400,100)
titleLabel.limit = 325
titleLabel.font = fontBig
titleLabel.textColor = colorTheme.titleColor

local underTitleLabel = Instance.new("Textlabel")
underTitleLabel.text = "Version: 0.12 - Instances"
underTitleLabel:setPos(-20,55)
underTitleLabel:setSize(250,50)
underTitleLabel.anchor = titleLabel
underTitleLabel.limit = 250
underTitleLabel.font = fontSmall
underTitleLabel.textColor = colorTheme.titleColor

local startButton = Instance.new("Button")
startButton.text = "Start"
startButton:setPos(20,150)
startButton:setSize(200,50)
startButton.limit = 200
startButton.textColor = colorTheme.titleColor
startButton.click = function()
    GuiController.loadGUI("game")
end

---

local testLabel = Instance.new("Textlabel")
testLabel.text = "Main Screen"
testLabel:setPos(screenWidth*0.5-200,screenHeight*0.5-50)
testLabel:setSize(400,100)
testLabel.limit = 400
testLabel.font = fontBig
testLabel.textColor = colorTheme.titleColor

local timeLabel = Instance.new("Textlabel")
timeLabel.text = "Time:0"
timeLabel:setPos(0,0)
timeLabel:setSize(100,50)
timeLabel.limit = 100
timeLabel.font = fontSmall
timeLabel.textColor = colorTheme.titleColor
timeLabel.update = function()
    timeLabel.text = string.format("Time:%.2f",love.timer.getTime())
end


local panel = {titleLabel,underTitleLabel,startButton}
local gamePanel = {testLabel,timeLabel}
local obj = {}
obj.panel = panel
obj.gamePanel = gamePanel

return obj
