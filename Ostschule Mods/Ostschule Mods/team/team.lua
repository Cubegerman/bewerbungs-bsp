local M = minetest.get_meta


--[[local Teams = {Admin,Mods,a9}

local Admin = {Cube}
local Mods = {}
local a9 = {Fynn,Cube,Alessandro,Ben}]]--

--[[minetest.register_chatcommand("team", {
    description = "to complex",
    params = "<cmd> <team> <player>",  -- Short parameter description
    privs = {
        interact = true,
        shout =  true,
        server = true,
    },
    func = function(name, param)
        local parts = param:split(" ")
        local cmd = parts[1]

        if cmd == "join"  then
            local team_name = parts[2]
            if team_name == "Admin" then
                local player = parts[3]
                --Admin={next=Admin,value=player}
                table.insert(Admin, player)
                minetest.chat_send_all(dump(Admin))
                return true, ":) You added " .. player .. " to "..team_name.."!"
            elseif  team_name == "9a" then
                local player = parts[3]
                --Admin={next=Admin,value=player}
                table.insert(a9, player)
                minetest.chat_send_all(dump(Admin))
                return true, ":) You added " .. player .. " to "..team_name.."!"
            end
        elseif cmd == "remove" then
            local team_name =parts [2]
            if team_name == "9a" then
                local player = parts[3]
                size = table.getn(Admin)
                table.remove(a9, size, player)
                minetest.chat_send_all(dump(Admin))
                return true, ":) You removed " .. player .. " from "..team_name.."!"
            end
        end
        return true
    end,
})

minetest.register_on_chat_message(function(name, message)
    minetest.chat_send_all(name .. " said " .. message)
    return false
end)]]--

--[[local function set_nametag(name)
    local privs = minetest.get_player_privs(name) or {}
    local player = minetest.get_player_by_name(name)
    if player then
        if player:get_meta():get_string("miniminer_hide") ~= "true" then
            if privs.server then
                player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[ADM]"..string.char(0x1b).."(c@#ffffff) "..name})
            elseif privs.miniminer then
                player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#ffc700)[MOD]"..string.char(0x1b).."(c@#ffffff) "..name})
            end
        else
            player:set_nametag_attributes({color = "0x00000000"})
        end
    end
end]]--


minetest.register_privilege("moderator", {
    description = "Moderatoren"
})

minetest.register_privilege("a9", {
    description = "Klasse 9a priv"
})

minetest.register_privilege("b9", {
    description = "Klasse 9b priv"
})

minetest.register_privilege("a10", {
    description = "Klasse 10 priv"
})

minetest.register_privilege("a8", {
    description = "Klasse 8a priv"
})

minetest.register_privilege("b8", {
    description = "Klasse 8b priv"
})

minetest.register_privilege("c8", {
    description = "Klasse 8c priv"
})
minetest.register_privilege("a7", {
    description = "Klasse 7a priv"
})

minetest.register_privilege("b7", {
    description = "Klasse 7b priv"
})

minetest.register_privilege("c7", {
    description = "Klasse 7c priv"
})

minetest.register_privilege("a6", {
    description = "Klasse 6a priv"
})

minetest.register_privilege("b6", {
    description = "Klasse 6b priv"
})

minetest.register_privilege("c6", {
    description = "Klasse 6c priv"
})

minetest.register_privilege("a5", {
    description = "Klasse 5a priv"
})

minetest.register_privilege("b5", {
    description = "Klasse 5b priv"
})

minetest.register_privilege("c5", {
    description = "Klasse 5c priv"
})

minetest.register_privilege("Ali", {
    description = "ALihas Priv"
})

minetest.register_privilege("ben", {
    description = "WW-FAN"
})


local function set_nametag(name)
    local privs = minetest.get_player_privs(name) or {}
    local player = minetest.get_player_by_name(name)
    if player then  --immer true 
        if privs.server then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#ffff00)["..string.char(0x1b).."(c@#ff0000)A"..string.char(0x1b).."(c@#ffff00)D"..string.char(0x1b).."(c@#00ff00)M"..string.char(0x1b).."(c@#00ffff)I"..string.char(0x1b).."(c@#0000ff)N"..string.char(0x1b).."(c@#ffff00)]"..string.char(0x1b).."(c@#ff0000) "..name})
        
        elseif privs.moderator then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#ffff00)[MOD]"..string.char(0x1b).."(c@#ffffff) "..name})

        elseif privs.Ali then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#ff8000)[Ali]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.ben then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#ff0f0f)[WW-FAN]"..string.char(0x1b).."(c@#ffffff) "..name..string.char(0x1b).."(c@#ff00ff)[STEALTH-GAMER]"})

        elseif privs.a9 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[9a]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.b9 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[9b]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.a10 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#f000ff)[10]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.a8 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ffff)[8a]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.b8 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[8b]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.c8 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[8c]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.a7 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[7a]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.b7 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[7b]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.c7 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[7c]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.a6 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[6a]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.b6 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[6b]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.c6 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[6c]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.b5 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[5a]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.b5 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[5b]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        elseif privs.c5 then
            player:set_nametag_attributes({color = "0xFF000000", text = string.char(0x1b).."(c@#00ff00)[5c]"..string.char(0x1b).."(c@#ffffff) "..name})
        
        end
    end
end

minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    set_nametag(name)
end)

