-- para configurar

-- variavel "t" com informações gerais
function love.conf(t)
    -- Configurando a janela do jogo

    t.window.title = "Cool Ball Game"
    -- t.window.icon = "Cool Ball Game"

    t.window.width = 1200
    t.window.height = 700

    --min
    t.window.minwidth = 1000
    t.window.minheight = 500 

    --pode ser resizeble
    t.window.resizeble = false
    -- save file
    t.identity = "data/saves"

    -- posição da janela
    -- t.window.x = ...
    -- t.window.y =  ...

    -- qual monitor
    -- t.window.display = 1

    --Fullscreen
    --t.window.fullscreen = false

    -- Tem que ser opcional 1 - 10
    --t.window.vsync = 1

    -- tira a borda(não é muito bom)
    --t.window.borderless = true

    --versão 
    -- t.version = "1.0.0"

    -- para tirar o console de aparecer quando iniciar
    --(apenas windws)
    --t.console = false

    -- prompt para usar o mic no mobile
    --t.audio.mic = true


    --(android only!) salvar em outros lugares sem ser na memoria
    -- t.externalstorgae = true

    --corrigir o gamma??
    --t.gammacorrect = true
end
