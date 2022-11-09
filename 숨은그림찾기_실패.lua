-----------------------------------------------------------------------------------------
--
-- view2.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view

	local background= display.newImageRect("이미지/숨은그림찾기/white.png",1280,720)
	background.x,background.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(background)

	local t= display.newImageRect("이미지/숨은그림찾기/실패테두리.png",500,500)
	t.x,t.y = display.contentWidth/2,display.contentHeight/2
	sceneGroup:insert(t)
	

	local hintText = display.newText("실패!",display.contentWidth*0.5, display.contentHeight*0.5,"font/NanumSquare_acB.ttf")
	hintText:setFillColor(0)
	hintText.size = 100
	sceneGroup:insert(hintText)
	
	local somsom = display.newImageRect("이미지/숨은그림찾기/솜솜이_실패.png",800,800)
	somsom.x,somsom.y = display.contentWidth*0.67,display.contentHeight*0.2
	sceneGroup:insert(somsom)


	
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if phase == "will" then
		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		-- Called when the scene is now on screen
		-- 
		-- INSERT code here to make the scene come alive
		-- e.g. start timers, begin animation, play audio, etc.
	end	
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase
	
	if event.phase == "will" then
		-- Called when the scene is on screen and is about to move off screen
		--
		-- INSERT code here to pause the scene
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
		-- Called when the scene is now off screen
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
	
	-- Called prior to the removal of scene's "view" (sceneGroup)
	-- 
	-- INSERT code here to cleanup the scene
	-- e.g. remove display objects, remove touch listeners, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
