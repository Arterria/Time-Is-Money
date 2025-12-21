
local Textlabel = {}
Textlabel.__index = Textlabel


function Textlabel.new(instance)
    --[[
        Textlabel constructor.
    ]]
    instance.class = "Textlabel"
    instance.x = 0
    instance.y = 0
    instance.width = 200
    instance.height = 50
    instance.limit = 200
    instance.anchor = {x=0,y=0}
    instance.text = "text"
    instance.font = fontNormal
    instance.textColor = colorTheme.textColor

    for k,v in pairs(Textlabel) do instance[k] = v end -- Assigns key value pairs for all the functions in Textlabel onto Instance.

    return instance
end

function Textlabel:setPos(x,y)
    if type(x) == "table" then
        self.x = x["x"]
        self.y = x["y"]
    else
        self.x = x
        self.y = y
    end
end

function Textlabel:setSize(width,height)
    if type(Width) == "table" then
        self.width = width["width"] 
        self.height = width["height"] 
    else
        self.width = width 
        self.height = height
    end
end

function Textlabel:draw()
    
    local xPos = self.x + self.anchor.x
    local yPos = self.y + self.anchor.y 

    love.graphics.setColor(self.textColor)
    love.graphics.setFont(self.font)
    love.graphics.printf(self.text,xPos,yPos + (self.height - love.graphics.getFont():getHeight())/2 ,self.limit,"center")
end

function Textlabel:update()
    
end


return Textlabel
