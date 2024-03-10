local colors = {
    {"white","Weiße"},
    {"black","Schwarze"},
    {"yellow","Gelbe"},
    {"blue","Blaue"},
    {"brown","Braune"},
    {"cyan","Türkise"},
    {"dark_green","Dunkelgrüne"},
    {"dark_grey","Dunkelgrauer"},
    {"green","Grüne"},
    {"grey","Graue"},
    {"magenta","Magenta"},
    {"natural","Naturale"},
    {"orange","Orange"},
    {"pink","Pinke"},
    {"red","Rote"},
    {"violet","Violette"}
}

for _, colors in pairs(colors) do

	minetest.register_node("ostschule_mods:big_stair_"..colors[1], {
		description = ("Große "..colors[2].." Wendeltreppe"),
		tiles = {"baked_clay_"..colors[1]..".png"},
		sounds = default.node_sound_stone_defaults(),
		groups = {cracky = 3,ostschule_mods= 1},
		wield_scale = {x = 0.5, y = 0.5, z = 0.5},
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "nodebox",
		visual_scale = 1,
		node_box = {
			type = "fixed",
			fixed = {
						{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
						{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
						{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
						{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
						--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
						{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
						--{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
					},
		},
	})

end






--[[
minetest.register_node("ostschule_mods:big_stair_white", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_white.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_natural.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_blue", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_blue.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_red", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_red.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_black", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_black.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_brown", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_brown.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_cyan", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_cyan.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_dark_green", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_dark_green.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_dark_grey", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_dark_grey.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_green", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_green.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_grey", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_grey.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_magenta", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_magenta.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_orange", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_orange.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_pink", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_pink.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_violet", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_violet.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_node("ostschule_mods:big_stair_yellow", {
	description = ("Große Wendeltreppe"),
	tiles = {"baked_clay_yellow.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "nodebox",
	visual_scale = 1,
	node_box = {
		type = "fixed",
		fixed = {
		    		{-24/16, -8/16, -24/16, -8/16,  0/16, -8/16},
		    		{-8/16, 0/16, -8/16, 8/16,  8/16, -24/16},
		    		{8/16, 8/16, -24/16, 24/16,  16/16, -8/16},
		    		{24/16, 16/16, -8/16, 8/16,  24/16, 8/16},
		    		--{-24/16, 0/16, -8/16, -8/16,  16/16, -8/16},
		    		{-2/16, -8/16, -2/16, 2/16,  24/16, 2/16},
                    --{-16/16, 16/16, -8/16, -8/16,  24/16, -8/16},
		    	},
	},
})

minetest.register_craft({
    type = "shapeless",
    output = "ostschule_mods:big_stair 1",
    recipe = {
        "bucket:bucket_water",
        "group:ostschule_mods",
    },
})

]]--