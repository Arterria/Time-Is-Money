
function love.load()
    --[[
        Runs before the game loop. Currently loads three variables into the global scope.
    ]]

    function warn(msg)
        print("[WARNING]: " .. msg)
    end

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

    -- Could shift the above declerations to its own init file. 
    -- Wrapper function could be used to request a module through 'require'

    mainMenu= require(guiPath .. "MainMenu")
    
   

    --print(mainMenu["panel"]["anchor"])
    

    GuiController.createGUI("title",mainMenu.panel)
    GuiController.createGUI("game",mainMenu.gamePanel)
    GuiController.loadGUI("title")

end

function love.mousepressed(x, y, mouseButton, is_Touch, presses)
    Button.mousepressed(x,y,mouseButton,is_Touch,presses)
end


function love.update()
    GuiController.updateAll()
end

function love.draw() -- Needs to be replaced with other stuff. Probably a game handler. Something that can switch stuff around. Like from main menu to game.
    love.graphics.setColor(theme.backgroundColor)
    love.graphics.rectangle("fill", 0, 0, screenWidth, screenHeight)
    GuiController.drawAll()
end

