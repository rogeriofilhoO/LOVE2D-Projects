local love = require "love"

function love.conf(t)
    t.window.vsync = 1
    t.window.fullscreen = false
end
