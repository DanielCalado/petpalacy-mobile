-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar( display.HiddenStatusBar )

-- include the Corona "composer" module
local composer = require "composer"
local widget = require("widget")
local string = require("String")
local scene = composer.newScene()


ligar = {}
function scene:create( event )
	local sceneGroup = self.view
    local phase = event.phase
  
	local as = display.newImage("fundoBranco.png",display.actualContentWidth,display.actualContentHeight)
as.anchorX = 0
as.anchorY = 0
as.x = 0 + display.screenOriginX 
as.y = 0 + display.screenOriginY
sceneGroup:insert(as)
	
local scro = widget.newScrollView(
	{
		top =0,
		left = 0,
		width = 768,
		height = 1200,
		scrollWidth = 600,
		scrollHeight = 800
	}
)

local function fundo()
a = 70
	for i = 1,16 do
		local lista = display.newImageRect("ds.png",display.actualContentWidth, 200)
lista.x = display.contentCenterX
lista.y =display.contentCenterY + a
scro:insert(lista)
a = a + 200
	end
end

local lista = display.newImageRect("ds.png",display.actualContentWidth, 200)
lista.x = display.contentCenterX
lista.y =display.contentCenterY - 330
scro:insert(lista)

text1 = display.newText(nome1, display.contentCenterX - 250, display.contentCenterY - 390, native.systemFont, 40)
text1:setFillColor(0,0,0)
scro:insert(text1)

text2 = display.newText(descricao1,
						 display.contentCenterX - 110, display.contentCenterY - 310, native.systemFont, 25)
text2:setFillColor(0,0,0)
scro:insert(text2)

local function ligarF(event)
	if event.phase == "began" then
		system.openURL( "tel:+5515087981572591" )

end
end

ligar[1] = display.newImageRect("ligar.png", 150,60)
ligar[1].x = display.contentCenterX + 300
ligar[1].y = display.contentCenterY -340
scro:insert(ligar[1])
ligar[1]:addEventListener("touch", ligarF)

local lista2 = display.newImageRect("ds.png",display.actualContentWidth, 200)
lista2.x = display.contentCenterX
lista2.y =display.contentCenterY - 130
scro:insert(lista2)

text1 = display.newText(nome2, display.contentCenterX - 195, display.contentCenterY - 190, native.systemFont, 40)
text1:setFillColor(0,0,0)
scro:insert(text1)

text2 = display.newText(descricao2,display.contentCenterX - 140, display.contentCenterY - 110, native.systemFont, 25)
text2:setFillColor(0,0,0)
scro:insert(text2)

ligar[2] = display.newImageRect("ligar.png", 150,60)
ligar[2].x = display.contentCenterX + 300
ligar[2].y = display.contentCenterY -140
scro:insert(ligar[2])

fundo()
local function ligacao()
	b = 60
	for i = 3,18 do
		ligar[i] = display.newImageRect("ligar.png", 150,60)
		ligar[i].x = display.contentCenterX + 300
		ligar[i].y = display.contentCenterY + b
		scro:insert(ligar[i])
		b = b + 200
	end
end
ligacao()

text3 = display.newText(nome3, display.contentCenterX - 140, display.contentCenterY + 10, native.systemFont, 40)
text3:setFillColor(0,0,0)
scro:insert(text3)

text3 = display.newText(descricao3,display.contentCenterX - 150, display.contentCenterY + 90, native.systemFont, 25)
text3:setFillColor(0,0,0)
scro:insert(text3)

text4 = display.newText(nome4, display.contentCenterX - 145, display.contentCenterY + 210, native.systemFont, 40)
text4:setFillColor(0,0,0)
scro:insert(text4)

text4 = display.newText(descricao4,display.contentCenterX - 170, display.contentCenterY + 290, native.systemFont, 25)
text4:setFillColor(0,0,0)
scro:insert(text4)

text5 = display.newText(nome5, display.contentCenterX - 220, display.contentCenterY + 410, native.systemFont, 40)
text5:setFillColor(0,0,0)
scro:insert(text5)

text5 = display.newText(descricao5,display.contentCenterX - 150, display.contentCenterY + 490, native.systemFont, 25)
text5:setFillColor(0,0,0)
scro:insert(text5)

sceneGroup:insert(scro)

local botao = display.newRect(573,32,380,80)
sceneGroup:insert(botao)

local voltar = display.newRect(35,-72,60,70)
sceneGroup:insert(voltar)


local logo2 = display.newImageRect("superior.png",display.actualContentWidth, 250)
logo2.x = display.contentCenterX
logo2.y =display.screenOriginY + 125
sceneGroup:insert(logo2)

local link = display.newImageRect("linkSite.png",80,80)
link.x = display.contentCenterX + 330
link.y = display.contentCenterY - 595
sceneGroup:insert(link)

function parteSuperior(event)
	if event.phase == "began" then
			composer.gotoScene("mapa")
		
	end
end



function voltarParaOMenur(event)
	if event.phase == "began" then
		composer.gotoScene("menu")
end
end

voltar:addEventListener("touch", voltarParaOMenur)

botao:addEventListener("touch", parteSuperior)

end

scene:addEventListener( "create", scene ) -- adiciona o evento da funcao de criar 

return scene