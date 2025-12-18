
local textlabel = {}
textlabel.__index = textlabel



function textlabel.new(instance)
    --[[
        textlabel constructor.
    ]]
    instance.class = "textlabel"
    instance.x = 0
    instance.y = 0
    instance.width = 200
    instance.height = 50
    instance.limit = 200
    instance.anchor = {x=0,y=0}
    instance.text = "text"
    instance.font = fontNormal
    instance.textColor = colorTheme.textColor
    for k,v in pairs(textlabel) do instance[k] = v end -- Assigns key value pairs for all the functions in textlabel onto Instance.

    
    return instance
end

function textlabel:setPos(x,y)
    if type(X) == "table" then
        self.x = x["x"]
        self.y = x["y"]
    else
        self.x = X
        self.y = Y
    end
end

function textlabel:setSize(width,height)
    if type(Width) == "table" then
        self.width = width["width"] 
        self.height = width["height"] 
    else
        self.width = width 
        self.height = height
    end
end

function textlabel:draw()

    local xPos = self.x + self.anchor.x
    local yPos = self.y + self.anchor.y 

    love.graphics.setColor(self.textColor)
    love.graphics.setFont(self.font)
    love.graphics.printf(self.text,xPos,yPos + (self.height - love.graphics.getFont():getHeight())/2 ,self.limit,"center")
end

function textlabel:update()
    
end


return textlabel
