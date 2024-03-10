minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    minetest.chat_send_player(name,string.char(0x1b).."(c@#00fff0)".."Wilkommen zurück "..name.." :D")
end)

minetest.register_on_newplayer(function(player)
    local name = player:get_player_name()
    local text = "Willkommen "
    --minetest.chat_send_all(string.char(0x1b).."(c@#ffffff)Wilkommen "..string.char(0x1b).."(c@#00ffff)"..name)
    minetest.chat_send_all(string.char(0x1b).."(c@#ffff00)"..text..name)
end)

minetest.register_on_dieplayer(function(player, reason)
    local name = player:get_player_name()
    minetest.chat_send_all(string.char(0x1b).."c@#ffff00".. name.."ist zu früh von uns gegangen! Todesursache: "..reason)
end)

minetest.register_on_newplayer(function(player)
    local name = player:get_player_name()
    minetest.set_player_privs(name, {
        interact = true,
        shout = true,
        home = true
    })
end)


local function time()
    minetest.set_timeofday(0.5)
    minetest.after(2, time)
end

minetest.register_on_joinplayer(time)
