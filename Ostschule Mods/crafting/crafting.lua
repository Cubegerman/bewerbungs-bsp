minetest.register_craft({
    output = "default:clay 8",
    recipe = {
        {"group:sand","group:sand",         "group:sand"},
        {"group:sand","bucket:bucket_water","group:sand"},
        {"group:sand","group:sand",         "group:sand"},
    },
    replacements = {
        {"bucket:bucket_water", "bucket:bucket_empty"},
    },
})

minetest.register_craft({
    output = "default:clay 8",
    recipe = {
        {"group:sand","group:sand",         "group:sand"},
        {"group:sand","bucket:bucket_water","group:sand"},
        {"group:sand","group:sand",         "group:sand"},
    },
    replacements = {
        {"bucket:bucket_water", "bucket:bucket_water"},
    },
})

minetest.register_craft({
    output = "default:gravel 8",
    recipe = {
        {"default:cobble","default:cobble",         "default:cobble"},
        {"default:cobble","default:pick_mese",		"default:cobble"},
        {"default:cobble","default:cobble",         "default:cobble"},
    },
    replacements = {
        {"default:pick_mese", "default:pick_mese"},
    },
})

minetest.register_craft({
    output = "default:gravel 8",
    recipe = {
        {"default:cobble","default:cobble",         "default:cobble"},
        {"default:cobble","default:pick_stone",		"default:cobble"},
        {"default:cobble","default:cobble",         "default:cobble"},
    },
    replacements = {
        {"default:pick_stone", "default:pick_stone"},
    },
})

minetest.register_craft({
    output = "default:gravel 8",
    recipe = {
        {"default:cobble","default:cobble",         "default:cobble"},
        {"default:cobble","default:pick_steel",		"default:cobble"},
        {"default:cobble","default:cobble",         "default:cobble"},
    },
    replacements = {
        {"default:pick_steel", "default:pick_steel"},
    },
})

minetest.register_craft({
    output = "default:gravel 8",
    recipe = {
        {"default:cobble","default:cobble",         "default:cobble"},
        {"default:cobble","default:pick_bronze",		"default:cobble"},
        {"default:cobble","default:cobble",         "default:cobble"},
    },
    replacements = {
        {"default:pick_bronze", "default:pick_bronze"},
    },
})

minetest.register_craft({
    output = "default:gravel 8",
    recipe = {
        {"default:cobble","default:cobble",         "default:cobble"},
        {"default:cobble","default:pick_diamond",		"default:cobble"},
        {"default:cobble","default:cobble",         "default:cobble"},
    },
    replacements = {
        {"default:pick_diamond", "default:pick_diamond"},
    },
})

minetest.register_craft({
    output = "default:gravel 8",
    recipe = {
        {"default:cobble","default:cobble",         "default:cobble"},
        {"default:cobble","default:pick_wood",		"default:cobble"},
        {"default:cobble","default:cobble",         "default:cobble"},
    },
    replacements = {
        {"default:pick_wood", "default:pick_wood"},
    },
})

minetest.register_craft({
    output = "default:sand 8",
    recipe = {
        {"default:gravel","default:gravel",         "default:gravel"},
        {"default:gravel","default:shovel_bronze",		"default:gravel"},
        {"default:gravel","default:gravel",         "default:gravel"},
    },
    replacements = {
        {"default:shovel_bronze", "default:shovel_bronze"},
    },
})

minetest.register_craft({
    output = "default:sand 8",
    recipe = {
        {"default:gravel","default:gravel",         "default:gravel"},
        {"default:gravel","default:shovel_diamond",		"default:gravel"},
        {"default:gravel","default:gravel",         "default:gravel"},
    },
    replacements = {
        {"default:shovel_diamond", "default:shovel_diamond"},
    },
})

minetest.register_craft({
    output = "default:sand 8",
    recipe = {
        {"default:gravel","default:gravel",         "default:gravel"},
        {"default:gravel","default:shovel_steel",		"default:gravel"},
        {"default:gravel","default:gravel",         "default:gravel"},
    },
    replacements = {
        {"default:shovel_steel", "default:shovel_steel"},
    },
})

minetest.register_craft({
    output = "default:sand 8",
    recipe = {
        {"default:gravel","default:gravel",         "default:gravel"},
        {"default:gravel","default:shovel_mese",		"default:gravel"},
        {"default:gravel","default:gravel",         "default:gravel"},
    },
    replacements = {
        {"default:shovel_mese", "default:shovel_mese"},
    },
})

minetest.register_craft({
    output = "default:sand 8",
    recipe = {
        {"default:gravel","default:gravel",         "default:gravel"},
        {"default:gravel","default:shovel_stone",		"default:gravel"},
        {"default:gravel","default:gravel",         "default:gravel"},
    },
    replacements = {
        {"default:shovel_stone", "default:shovel_stone"},
    },
})

minetest.register_craft({
    output = "default:sand 8",
    recipe = {
        {"default:gravel","default:gravel",         "default:gravel"},
        {"default:gravel","default:shovel_wood",		"default:gravel"},
        {"default:gravel","default:gravel",         "default:gravel"},
    },
    replacements = {
        {"default:shovel_wood", "default:shovel_wood"},
    },
})
