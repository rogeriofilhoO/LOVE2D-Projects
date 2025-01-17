function love.load()
    anim8 = require 'libraries/anim8'

    -- Quando usa o scale ele arruma o blur
    love.graphics.setDefaultFilter("nearest", "nearest")


    player = {}
    player.x = 400
    player.y = 200
    player.speed = 4
    player.spriteSheet = love.graphics.newImage('sprites/Green-Cap-Character-16x18.png')
    player.grid = anim8.newGrid( 16, 18, player.spriteSheet:getWidth(), player.spriteSheet:getHeight())

    player.animations = {}
    player.animations.down = anim8.newAnimation( player.grid('1-3', 1), 0.2 )
    player.animations.left = anim8.newAnimation( player.grid('1-3', 3), 0.2 )
    player.animations.right = anim8.newAnimation( player.grid('1-3', 4), 0.2 )
    player.animations.up = anim8.newAnimation( player.grid('1-3', 2), 0.2 )

    player.anim = player.animations.up

end

function love.update(dt)
    local isMoving = false

    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed
        player.anim = player.animations.right
        isMoving = true
    end
    if love.keyboard.isDown("a") then
        player.x = player.x - player.speed
        player.anim = player.animations.left
        isMoving = true
    end


--A parte "Y" é ao contrário

    if love.keyboard.isDown("w") then
        player.y = player.y - player.speed
        player.anim = player.animations.up
        isMoving = true
    end
    if love.keyboard.isDown("s") then
        player.y = player.y + player.speed
        player.anim = player.animations.down
        isMoving = true
    end

    if isMoving == false then
        player.anim:gotoFrame(1)
    end

    player.anim:update(dt)
end

function love.draw()
    player.anim:draw(player.spriteSheet, player.x, player.y, nil, 10, nil, 8, 9)
end    