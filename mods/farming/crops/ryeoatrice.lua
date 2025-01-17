
local S = farming.intllib

--= A nice addition from Ademant's grain mod :)

-- Rye

farming.register_plant("farming:rye", {
	description = "Rye seed",
	paramtype2 = "meshoptions",
	inventory_image = "farming_rye_seed.png",
	steps = 8,
	minlight = 15,
	maxlight = 15,
	place_param2 = 3,
	groups = {flammable = 2, snowy = 1, icy = 1}
})

minetest.override_item("farming:rye", {
	groups = {food_rye = 1, flammable = 4}
})

minetest.override_item("farming:rye_1", {
	drop = {}
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:flour",
	recipe = {
		"farming:rye", "farming:rye", "farming:rye", "farming:rye",
		"farming:mortar_pestle"
	},
	replacements = {{"group:food_mortar_pestle", "farming:mortar_pestle"}},
})

-- Oats

farming.register_plant("farming:oat", {
	description = "Oat seed",
	paramtype2 = "meshoptions",
	inventory_image = "farming_oat_seed.png",
	steps = 8,
	minlight = 15,
	maxlight = 15,
	place_param2 = 3,
	groups = {flammable = 2, grassy = 1}
})

minetest.override_item("farming:oat", {
	groups = {food_oats = 1, flammable = 4}
})

minetest.override_item("farming:oat_1", {
	drop = {}
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:flour",
	recipe = {
		"farming:oat", "farming:oat", "farming:oat", "farming:oat",
		"farming:mortar_pestle"
	},
	replacements = {{"group:food_mortar_pestle", "farming:mortar_pestle"}},
})

-- Rice

farming.register_plant("farming:rice", {
	description = "Rice grains",
	paramtype2 = "meshoptions",
	inventory_image = "farming_rice_seed.png",
	steps = 8,
	minlight = 15,
	maxlight = 15,
	place_param2 = 3,
	groups = {flammable = 2, rainy = 1}
})

minetest.override_item("farming:rice", {
	groups = {food_rice = 1, flammable = 4}
})

minetest.override_item("farming:rice_1", {
	drop = {}
})

minetest.register_craftitem("farming:rice_bread", {
	description = "Rice Bread",
	inventory_image = "farming_rice_bread.png",
	on_use = minetest.item_eat(5),
	groups = {food_rice_bread = 1, flammable = 2},
})

minetest.register_craftitem("farming:rice_flour", {
	description = "Rice Flour",
	inventory_image = "farming_rice_flour.png",
	groups = {food_rice_flour = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:rice_flour",
	recipe = {
		"farming:rice", "farming:rice", "farming:rice", "farming:rice",
		"farming:mortar_pestle"
	},
	replacements = {{"group:food_mortar_pestle", "farming:mortar_pestle"}},
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "farming:rice_bread",
	recipe = "farming:rice_flour"
})

-- Multigrain flour

minetest.register_craftitem("farming:flour_multigrain", {
	description = S("Multigrain Flour"),
	inventory_image = "farming_flour_multigrain.png",
	groups = {food_flour = 1, flammable = 1},
})

minetest.register_craft({
	type = "shapeless",
	output = "farming:flour_multigrain",
	recipe = {
		"farming:wheat", "farming:barley", "farming:oat",
		"farming:rye", "farming:mortar_pestle"
	},
	replacements = {{"group:food_mortar_pestle", "farming:mortar_pestle"}},
})

-- Multigrain bread

minetest.register_craftitem("farming:bread_multigrain", {
	description = S("Multigrain Bread"),
	inventory_image = "farming_bread_multigrain.png",
	on_use = minetest.item_eat(7),
	groups = {food_bread = 1, flammable = 2},
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "farming:bread_multigrain",
	recipe = "farming:flour_multigrain"
})

-- Fuels

minetest.register_craft({
	type = "fuel",
	recipe = "farming:rice_bread",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:bread_multigrain",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:rye",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:oat",
	burntime = 1,
})

minetest.register_craft({
	type = "fuel",
	recipe = "farming:rice",
	burntime = 1,
})
