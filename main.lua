-----------------------------------------------------------------------------------------
--
-- This program you put in the diameter of the pizza 
--
-- Created on: 2019-02-21
-- Created by: Aden Rao
--
-----------------------------------------------------------------------------------------

--Backround & Title
display.setDefault( "background", 100/255, 155/255, 250/255 )

local myText = display.newText( "Pizza Cost Calculator", 160, 5, native.systemFont, 30 )
myText:setFillColor( 0/255, 0/255, 0 )

local pizza = display.newImageRect( "assets/pizza.jpg", 360, 240 )
pizza.x = display.contentCenterX
pizza.y = 180

--variables
local diameterOfACircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 225, 250, 30 )
diameterOfACircleTextField.id = "diameterOfACircle textField"
local myText = display.newText( "Diameter  ↓", 160, 415, native.systemFont, 20 )

local calculateButton = display.newImageRect( "./assets/button.png", 150, 50 )
calculateButton.x = display.contentCenterX
calculateButton.y = 355
calculateButton.id = "calculate button"

local priceOfPizzaTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 20 )
priceOfPizzaTextField.id = "priceOfPizza textField"
priceOfPizzaTextField:setFillColor( 1, 1, 1 )

function round(val, decimal)
  if (decimal) then
    return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(val+0.5)
  end
end

local function calculateButtonTouch( event )
 
    local diameterOfACircle
    local priceOfPizza
 
    diameterOfACircle = diameterOfACircleTextField.text
    priceOfPizza =  (diameterOfACircle * 0.5 + 1.75) * 1.13

    priceOfPizzaTextField.text = "The cost of the Pizza is " .. round(priceOfPizza,2)

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )