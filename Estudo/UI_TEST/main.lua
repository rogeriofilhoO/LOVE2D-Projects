local love = require "love"

local fonts = {
    default = {
        font = love.graphics.setNewFont(16),
        size = 16
    }
}


function love.load()

end

function love.update(dt)
    -- ESC pra sair
    if love.keyboard.isDown('escape') then
        love.event.quit()
    end
end

function love.draw()
    -- Mostrar FPS
    love.graphics.printf("FPS: " .. love.timer.getFPS(),
        fonts.default.font,
        10,
        love.graphics.getHeight() - 30,
        love.graphics.getWidth()
    )
end
