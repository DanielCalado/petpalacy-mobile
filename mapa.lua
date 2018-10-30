-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar( display.HiddenStatusBar )

-- include the Corona "composer" module
local composer = require "composer"
local scene = composer.newScene()

local function redirecionarConte()
	composer.gotoScane("conte")
end

function scene:create( event )
	local sceneGroup = self.view
    local phase = event.phase
    


local as2 = display.newImageRect("fundo2.png",display.actualContentWidth,display.actualContentHeight)
as2.anchorX = 0
as2.anchorY = 0
as2.x = 0 + display.screenOriginX 
as2.y = 0 + display.screenOriginY + 85
sceneGroup:insert(as2)

local botao = display.newRect(195,32,380,80)
sceneGroup:insert(botao)

local voltar = display.newRect(35,-72,60,70)
sceneGroup:insert(voltar)

local butaoPS = display.newImageRect("buttonPS.png", 300,300)
butaoPS.x = display.contentCenterX - 200
butaoPS.y = display.contentCenterY + 250
sceneGroup:insert(butaoPS)

local butaoCV = display.newImageRect("buttonCV.png", 300,300)
butaoCV.x = display.contentCenterX + 200
butaoCV.y = display.contentCenterY + 250
sceneGroup:insert(butaoCV)

local logo2 = display.newImageRect("superior2.png",display.actualContentWidth, 250)
logo2.x = display.contentCenterX
logo2.y =display.screenOriginY + 125
sceneGroup:insert(logo2)

local link = display.newImageRect("linkSite.png",80,80)
link.x = display.contentCenterX + 330
link.y = display.contentCenterY - 595
sceneGroup:insert(link)

function parteSuperior2(event)
	if event.phase == "began" then
		composer.gotoScene("conte")
	
end
end

function voltarParaOMenur(event)
	if event.phase == "began" then
		composer.gotoScene("menu")
end
end

function ligar(event)
	if event.phase == "began" then
		system.openURL( "tel:+5515087981572591" )

end
end
function mapa2(event)
	if event.phase == "began" then
		system.openURL( "https://www.google.com/maps/d/viewer?mid=1rUIUGl3TB5gwNJ0CzUSxMAGGD2J0ty5U&ll=-8.894561793163597%2C-36.48407814999996&z=14" )

end
end

function mapa1(event)
	if event.phase == "began" then
		system.openURL( "https://www.google.com/maps/d/viewer?mid=1ZRT3XjMknz0S1V9YM8j-HRtr1Tv_m0fY&ll=-8.888852758099008%2C-36.487715449999996&z=15" )

end
end

butaoCV:addEventListener("touch", mapa2)
butaoPS:addEventListener("touch", mapa1)

voltar:addEventListener("touch", voltarParaOMenur)


botao:addEventListener("touch", parteSuperior2)

end

scene:addEventListener( "create", scene ) -- adiciona o evento da funcao de criar 

return scene