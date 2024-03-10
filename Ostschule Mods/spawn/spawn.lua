spawn_command = {}
spawn_command.pos = {x=0, y=7.0, z=0}

starterarea_commands = {}
starterarea_commands.pos  =  {x=0, y=5.5, z=0}

schule = {}
schule.pos = {x=-125, y=17.5, z=529}

if minetest.setting_get_pos("static_spawnpoint") then
    spawn_command.pos = minetest.setting_get_pos("static_spawnpoint")
end

function teleport_to_starterarea(name)
    local player = minetest.get_player_by_name(name)
    if player == nil then

        return false
    end
    player:set_pos(starterarea_commands.pos)
    minetest.chat_send_player(name, "Teleported zur "..string.char(0x1b).."(c@#00ff00)Starter-Area"..string.char(0x1b).."(c@#ffffff)!")
end

function teleport_to_spawn(name)
    local player = minetest.get_player_by_name(name)
    if player == nil then
        -- just a check to prevent the server crashing
        return false
    end
    player:set_pos(spawn_command.pos)
    minetest.chat_send_player(name, "Teleported zum "..string.char(0x1b).."(c@#0000ff)Spawn"..string.char(0x1b).."(c@#ffffff)!")
end

function teleport_to_schule(name)
    local player = minetest.get_player_by_name(name)
    if player == nil then

        return false
    end
    player:set_pos(schule.pos)
    minetest.chat_send_player(name, "Teleported zur "..string.char(0x1b).."(c@#00ffff)Schule"..string.char(0x1b).."(c@#ffffff)!")
end

minetest.register_chatcommand("spawn", {
    description = "Teleport you to spawn point.",
    func = teleport_to_spawn,
})

minetest.register_chatcommand("starter-area",{
    description = "Teleports you to Starter-Area.",
    func = teleport_to_starterarea,
})

minetest.register_chatcommand("schule",{
    description = "Teleports you to Schule.",
    func = teleport_to_schule,
})

minetest.register_chatcommand("oh", {
    description = "Zeigt TP Commands",
    func = function(name)
        minetest.chat_send_player(name,string.char(0x1b).."(c@#00ffff)/schule"..string.char(0x1b).."(c@#ffffff)-> teleportiert dich zur Schule \n"..string.char(0x1b).."(c@#0000ff)/spawn"..string.char(0x1b).."(c@#ffffff)-> teleportiert(bringt) dich zum Ursprung \n"..string.char(0x1b).."(c@#00ff00)/starter-area"..string.char(0x1b).."(c@#ffffff)-> teleportiert(bringt) dich zur allgemeinen Starterumgebung \n"..string.char(0x1b).."(c@#b88600) /sethome"..string.char(0x1b).."(c@#ffffff)-> daamit setz du eine ZuHause-Position \n"..string.char(0x1b).."(c@#b88600) /home"..string.char(0x1b).."(c@#ffffff) -> Teleportiert(bringt) dich zum mit /sethome gesetzten Punkt")
    end
})