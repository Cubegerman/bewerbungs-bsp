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