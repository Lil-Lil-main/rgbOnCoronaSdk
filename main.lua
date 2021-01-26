require "rgb"

local rgbOn = true
local background = display.newRect(160, 250, 720, 1080)
        
function start()
    rgbOnDelay100(background)
end

rgbTimerFirstForStart = timer.performWithDelay(0, start, 1)
rgbTimerDefault = timer.performWithDelay(3600, start, 0)

function stop()
    timer.pause(rgbTimerFirstForStart)
    timer.pause(rgbTimerDefault)
    Script_On = false
end


background:addEventListener("touch", stop)
