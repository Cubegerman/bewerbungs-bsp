--[[minetest.register_chatcommand("enable_hud", {
    func = function(name,param)
        local player = minetest.get_player_by_name(name)
        local meta        = player:get_meta()
        local digs_text   = "Digs: " .. meta:get_int("score:digs")
        local places_text = "Places: " .. meta:get_int("score:places")

        player:hud_add({
            hud_elem_type = "text",
            position  = {x = 1, y = 0.5},
            offset    = {x = -120, y = -25},
            text      = "Stats",
            alignment = 0,
            scale     = { x = 100, y = 30},
            number    = 0xFFFFFF,
        })
        
        player:hud_add({
            hud_elem_type = "text",
            position  = {x = 1, y = 0.5},
            offset    = {x = -180, y = 0},
            text      = digs_text,
            alignment = -1,
            scale     = { x = 50, y = 10},
            number    = 0xFFFFFF,
        })
        
        player:hud_add({
            hud_elem_type = "text",
            position  = {x = 1, y = 0.5},
            offset    = {x = -70, y = 0},
            text      = places_text,
            alignment = -1,
            scale     = { x = 50, y = 10},
            number    = 0xFFFFFF,
        })
    end
})

score = {}
local saved_huds = {}

function score.update_hud(player)
    local player_name = player:get_player_name()

    -- Get the dig and place count from storage, or default to 0
    local meta        = player:get_meta()
    local digs_text   = "Digs: " .. meta:get_int("score:digs")
    local places_text = "Places: " .. meta:get_int("score:places")

    local ids = saved_huds[player_name]
    if ids then
        player:hud_change(ids["places"], "text", places_text)
        player:hud_change(ids["digs"],   "text", digs_text)
    else
        ids = {}
        saved_huds[player_name] = ids

        -- create HUD elements and set ids into `ids`
        player:hud_add({
            hud_elem_type = "text",
            position  = {x = 1, y = 0.5},
            offset    = {x = -120, y = -25},
            text      = "Stats",
            alignment = 0,
            scale     = { x = 100, y = 30},
            number    = 0xFFFFFF,
        })
        
        player:hud_add({
            hud_elem_type = "text",
            position  = {x = 1, y = 0.5},
            offset    = {x = -180, y = 0},
            text      = digs_text,
            alignment = -1,
            scale     = { x = 50, y = 10},
            number    = 0xFFFFFF,
        })
        
        player:hud_add({
            hud_elem_type = "text",
            position  = {x = 1, y = 0.5},
            offset    = {x = -70, y = 0},
            text      = places_text,
            alignment = -1,
            scale     = { x = 50, y = 10},
            number    = 0xFFFFFF,
        })
    end
end

minetest.register_on_joinplayer(score.update_hud)

minetest.register_on_leaveplayer(function(player)
    saved_huds[player:get_player_name()] = nil
end)
]]--
--[[
minetest.register_chatcommand("hud", {
    func = function(name,param)
        local player = minetest.get_player_by_name(name)
        player:hud_add({
            hud_elem_type = "text",
            position  = {x = 1, y = 0.5},
            offset    = {x = -75, y = -25},
            text      = "Stats",
            alignment = -1,
            scale     = { x = 100, y = 30},
            number    = 0xFFFFFF,
        })

        player:hud_add({
            hud_elem_type = "text",
            position  = {x = 1, y = 0.5},
            offset    = {x = -100, y = 0},
            text      = "Playtime: ???",
            alignment = -1,
            scale     = { x = 100, y = 30},
            number    = 0xFFFFFF,
        })

        player:hud_add({
            hud_elem_type = "text",
            position  = {x = 1, y = 0.5},
            offset    = {x = -100, y = 20},
            text      = "Punkte: ???",
            alignment = -1,
            scale     = { x = 100, y = 30},
            number    = 0xFFFFFF,
        })
    end
})]]--

--[[
biome = {}
saved_huds = {}
function biome.update_hud(player)
    local player_name = player:get_player_name()

    -- Get the dig and place count from storage, or default to 0
    local meta          = player:get_meta()
   -- local biome_id      = minetest.get_biome_id()
   -- local biome_name    = minetest.get_biome_name(biome_id)
    local biome_text    = "Biome: "--..biome_name

    local hud = saved_huds[player_name]
    if hud then
        player:hud_change(hud.id, "text", biome_text)
    else
        hud = {}
        saved_huds[player_name] = hud

        -- create HUD elements and set ids into `ids`
        hud.id = player:hud_add({
            hud_elem_type = "text",
            position  = {x = 0, y = -0.75},
            offset    = {x = 0, y = 0},
            text      = biome_text,
            alignment = 0,
            scale     = { x = 100, y = 30},
            number    = 0xFFFF00,
        })
    end
end
]]--

biome = {}
saved_huds = {}

--[[minetest.register_globalstep(function(dtime)
    
    function biome.update_hud(player)
        local player_name = player:get_player_name()
    
        -- Get the dig and place count from storage, or default to 0
        local meta          = player:get_meta()
       -- local biome_id      = minetest.get_biome_id()
       -- local biome_name    = minetest.get_biome_name(biome_id)
        local biome_text    = "Biome: "--..biome_name
        
        player:hud_add({
            hud_elem_type = "text",
            position  = {x = 0, y = 0},
            offset    = {x = 0, y = 0},
            text      = biome_text,
            alignment = 0,
            scale     = { x = 30, y = 30},
            number    = 0xFFFF00,
            name      = "test",
            z_index = 0,
        })

        local hud = saved_huds[player_name]
        if hud then
            player:hud_change(hud.id, "text", biome_text)
        else
            hud = {}
            saved_huds[player_name] = hud
    
            -- create HUD elements and set ids into `ids`
            --hud.id = 
            player:hud_add({
                hud_elem_type = "text",
                position  = {x = 0, y = 0},
                offset    = {x = 0, y = 0},
                text      = biome_text,
                alignment = 0,
                scale     = { x = 30, y = 30},
                number    = 0xFFFF00,
                name      = "test",
                z_index = 0,
            })
        end
    end
end)]]--



function biome.hud(player)
    local player_name = player:get_player_name()
    local class = 1
    local privs = minetest.get_player_privs(player_name) or {}
    local playername = minetest.get_player_by_name(player_name)
    local role = 1

    if playername then
        if privs.a9 then
            class = "9a"
        
        elseif privs.b9 then
            class = "9b"
        
        elseif privs.a10 then
            class = "10a"
        
        elseif privs.a5 then
            class = "5a"

        end
        
        if privs.server then
            role = "[ADMIN]"
        
        elseif privs.moderator then
            role = "[MOD]"

        elseif privs.Ali then
            role = "Custom Role"
        
        elseif privs.ben then
            role = "Costum Role"

        end
    end
    local class_text = "Klasse: "..class
    local role_text = "Rolle: "..role

    player:hud_add({
        hud_elem_type = "text",
        position  = {x = 1, y = 0.5},
        offset    = {x = -100, y = 0},
        text      = player_name,
        alignment = -1,
        scale     = { x = 30, y = 30},
        number    = 0xFFFFFF,
        z_index = 0,
    })

    player:hud_add({
        hud_elem_type = "text",
        position  = {x = 1, y = 0.5},
        offset    = {x = -95, y = 20},
        text      = class_text,
        alignment = -1,
        scale     = { x = 30, y = 30},
        number    = 0xFFFFFF,
        z_index = 0,
    })

    player:hud_add({
        hud_elem_type = "text",
        position  = {x = 1, y = 0.5},
        offset    = {x = -100, y = 40},
        text      = role_text,
        alignment = -1,
        scale     = { x = 30, y = 30},
        number    = 0xFFFFFF,
        z_index = 0,
    })

end
minetest.register_on_joinplayer(biome.hud)
