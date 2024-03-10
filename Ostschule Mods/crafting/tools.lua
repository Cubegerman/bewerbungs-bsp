minetest.register_tool("ostschule_mods:admin_paxel", {
    description = "Admin Paxel",
    inventory_image = "paxel_admin.png",
    tool_capabilities = {
        full_punch_interval = 0.25,
        max_drop_level = 1,
        groupcaps = {
            crumbly = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=0.2, [2]=0.2, [3]=0.2 }
            },
            cracky = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=0.2, [2]=0.2, [3]=0.2 }
            },
            choppy = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=0.2, [2]=0.2, [3]=0.2 }
            },
            fleshy = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=0.2, [2]=0.2, [3]=0.2 }
            },
        },
        damage_groups = {fleshy=100},
    },
})