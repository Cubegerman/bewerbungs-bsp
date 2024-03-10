local colors = {
    {"white","Weißer"},
    {"black","Schwarzer"},
    {"yellow","Gelber"},
    {"blue","Blauer"},
    {"brown","Brauner"},
    {"cyan","Türkiser"},
    {"dark_green","Dunkelgrüner"},
    {"dark_grey","Dunkelgrauer"},
    {"green","Grüner"},
    {"grey","Grauer"},
    {"magenta","Magenta"},
    {"natural","Naturaler"},
    {"orange","Oranger"},
    {"pink","Pinker"},
    {"red","Roter"},
    {"violet","Violetter"}
}

for _, colors in pairs(colors) do

minetest.register_node("ostschule_mods:"..colors[1].."bogen", {
	description = (colors[2].." Bogen"),
	tiles = {"baked_clay_"..colors[1]..".png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "mesh",
	visual_scale = 1,
    mesh = "models.obj"
})

end


minetest.register_node("ostschule_mods:tisch", {
	description = ("Tisch"),
	tiles = {"table.png"},
    sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3,ostschule_mods= 1},
    wield_scale = {x = 0.5, y = 0.5, z = 0.5},
    paramtype = "light",
	paramtype2 = "facedir",
    drawtype = "mesh",
	visual_scale = 1,
    mesh = "tisch.obj"
})