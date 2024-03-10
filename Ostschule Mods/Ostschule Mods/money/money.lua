money = {}
local money.counter = {}
local money.saved_huds = {}
money.money_count_int = 0

local function money.counter(player)
    local meta        = player:get_meta()
    local player_name = player:get_player_name()
    
    local dig_count    = "Blöcke abgebaut: ".. meta:get_int("score:digs")
    local places_count = "Blöcke platziert: ".. meta:get_int("score:places")
    --local money_count = "Geld: "..money_count_int

    local ids = saved_huds[player_name]
    if ids then
        player:hud_change(ids["places"], "text", places_count)
        player:hud_change(ids["digs"],   "text", dig_count)
        player:hud_change(ids["money"],   "text", money_count)
    else
        ids = {}
        money.saved_huds[player_name] = ids

    player:hud_add({
        hud_elem_type = "text",
        position  = {x = 1, y = 0.8},
        offset    = {x = -100, y = 0},
        text      = dig_count,
        alignment = -1,
        scale     = { x = 30, y = 30},
        number    = 0xFFFF00,
        z_index = 0,
    })

    player:hud_add({
        hud_elem_type = "text",
        position  = {x = 1, y = 0.8},
        offset    = {x = -100, y = 20},
        text      = places_count,
        alignment = -1,
        scale     = { x = 30, y = 30},
        number    = 0xFFFF00,
        z_index = 0,
    })

    money_count_int = money_count_int + 1
    money_count = "Geld: "..money_count_int

    player:hud_add({
        hud_elem_type = "text",
        position  = {x = 1, y = 0.8},
        offset    = {x = -100, y = 40},
        text      = money_count,
        alignment = -1,
        scale     = { x = 30, y = 30},
        number    = 0xFFFF00,
        z_index = 0,
    })

    end
end



local function money_updater()
    --local player_name = player:get_player_name
    money.counter()
    minetest.after(1, money_updater)
end

minetest.register_on_joinplayer(money.count)
minetest.register_on_joinplayer(money_updater)

minetest.register_chatcommand("pay", {
    params = "",
    description = "Paying a person money ig",
    func = function(name, param)
        local parts = param:split(" ")
        local cmd = parts[1]

        local player = minetest.get_player_by_name(cmd)
        local player2 = minetest.get_player_by_name(name)
        local amount = parts[2]

        money.money_count_int[player2] = money.money_count_int[player2] - amount
    end,    

})