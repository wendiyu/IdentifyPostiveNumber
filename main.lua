-----------------------------------------------------------------------------------------
-- main.lua
--
-- Created by: Wendi Yu
-- Created on: Mar 2018
-- 
--Indentify positive or negative number
-----------------------------------------------------------------------------------------

local answer = display.newText( "", 600, 1150, native.systemFont, 100 )

local instructionsText = display.newText( "Enter a positive or negative number: ", 1000, 500, native.systemFont, 120 )
local numberTextField = native.newTextField( display.contentCenterX - 150 , display.contentCenterY , 650, 150)
numberTextField.id = " the number "

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 600
enterButton.y = display.contentCenterY + 1
enterButton.id = "enter button"

local function positiveorNegative( event )
	-- body
	local numberUser = tonumber(numberTextField)

	if instructionsText == 0 then
		answer.text = ( "Invalid number.")
	else
		if instructionsText > 0 then
			answer.text = ("Number is positive.") 
		elseif instructionsText < 0 then
				instructionsText = ("Number is negative.")
		end	
	end 
end

enterButton:addEventListener("touch", positiveorNegative)