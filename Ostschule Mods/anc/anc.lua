minetest.register_chatcommand("anc",  {
    privs = {server = true},
    func = function(name ,msg)
        minetest.chat_send_all(string.char(0x1b).."(c@#ff0000)".."Announcement: "..msg)
    end
})

minetest.register_chatcommand("warning", {
    privs = {server = true},
    func = function(name, msg)
        minetest.chat_send_all(string.char(0x1b).."(c@#fff000)".."ACHTUNG: "..msg)
    end
})

--[[
minetest.register_chatcommand("as", {
    privs = {server = true},
    func = function(name, time)
        local aush = time * 60
        lasti = aush - 60
        minetest.after(lasti, )
        minetest.chat_send_all(string.char(0x1b).."(c@#ff0000)".."ACHTUNG noch 1 Minute!")
        minetest.after(60, )
        minetest.request_shutdown("Das wars für heute ab in die Pause", false, 0)
    end
})
]]--

minetest.register_chatcommand("cc", {
    privs = {server = true},
    func = function(name, msg)
        local parts = msg:split(" ")
        if string.len(parts[1]) == 6 then
            minetest.chat_send_all(string.char(0x1b).."(c@#"..parts[1]..")"..parts[2])
        else
        end
    end
})