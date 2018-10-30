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
	composer.gotoScene("conte","fade", 500 )

end

function scene:create( event )
	local sceneGroup = self.view
    local phase = event.phase
    
local as = display.newImage("fundo.png",display.actualContentWidth,display.actualContentHeight)
as.anchorX = 0
as.anchorY = 0
as.x = 0 + display.screenOriginX 
as.y = 0 + display.screenOriginY
sceneGroup:insert(as)

local logo = display.newImage("logo.png",display.contentCenterX, 300)
sceneGroup:insert(logo)

g = display.newImageRect("entrar.png", 250,80)
g.x = display.contentCenterX
g.y = 780
sceneGroup:insert(g)
g:addEventListener("touch", redirecionarConte)

saida = display.newImageRect("saida.png", 80,80)
saida.x = display.contentCenterX + 330
saida.y = display.contentCenterY + 630
sceneGroup:insert(saida)
end

scene:addEventListener( "create", scene ) -- adiciona o evento da funcao de criar 

return scene