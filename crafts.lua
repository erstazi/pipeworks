-- Crafting recipes for pipes

minetest.register_craft( {
	output = "pipeworks:pipe_1_empty 12",
	recipe = {
			{ "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" },
			{ "", "", "" },
			{ "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" }
	},
})

minetest.register_craft( {
	output = "pipeworks:straight_pipe_empty 3",
	recipe = {
			{ "pipeworks:pipe_1_empty", "pipeworks:pipe_1_empty", "pipeworks:pipe_1_empty" },
	},
})

minetest.register_craft( {
	output = "pipeworks:spigot 3",
	recipe = {
			{ "pipeworks:pipe_1_empty", "" },
			{ "", "pipeworks:pipe_1_empty" },
	},
})

minetest.register_craft( {
output = "pipeworks:entry_panel_empty 2",
recipe = {
	{ "", "default:steel_ingot", "" },
	{ "", "pipeworks:pipe_1_empty", "" },
	{ "", "default:steel_ingot", "" },
},
})

-- Various ancillary pipe devices

minetest.register_craft( {
	output = "pipeworks:pump_off 2",
	recipe = {
			{ "default:stone", "default:steel_ingot", "default:stone" },
			{ "default:copper_ingot", "default:mese_crystal_fragment", "default:copper_ingot" },
			{ "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" }
	},
})

minetest.register_craft( {
	output = "pipeworks:valve_off_empty 2",
	recipe = {
			{ "", "group:stick", "" },
			{ "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" },
			{ "", "default:steel_ingot", "" }
	},
})

minetest.register_craft( {
	output = "pipeworks:storage_tank_0 2",
	recipe = {
			{ "", "default:steel_ingot", "default:steel_ingot" },
			{ "default:steel_ingot", "default:glass", "default:steel_ingot" },
			{ "default:steel_ingot", "default:steel_ingot", "" }
	},
})

minetest.register_craft( {
	output = "pipeworks:grating 2",
	recipe = {
			{ "default:steel_ingot", "", "default:steel_ingot" },
			{ "", "pipeworks:pipe_1_empty", "" },
			{ "default:steel_ingot", "", "default:steel_ingot" }
	},
})

minetest.register_craft( {
	output = "pipeworks:flow_sensor_empty 2",
	recipe = {
			{ "pipeworks:pipe_1_empty", "mesecons:mesecon", "pipeworks:pipe_1_empty" },
	},
})

minetest.register_craft( {
	output = "pipeworks:fountainhead 2",
	recipe = {
			{ "pipeworks:pipe_1_empty" },
			{ "pipeworks:pipe_1_empty" }
	},
})

-- injectors

minetest.register_craft( {
	output = "pipeworks:filter 2",
	recipe = {
			{ "default:steel_ingot", "default:steel_ingot", "homedecor:plastic_sheeting" },
			{ "group:stick", "default:mese_crystal", "homedecor:plastic_sheeting" },
			{ "default:steel_ingot", "default:steel_ingot", "homedecor:plastic_sheeting" }
	},
})

minetest.register_craft( {
	output = "pipeworks:mese_filter 2",
	recipe = {
			{ "default:steel_ingot", "default:steel_ingot", "homedecor:plastic_sheeting" },
			{ "group:stick", "default:mese", "homedecor:plastic_sheeting" },
			{ "default:steel_ingot", "default:steel_ingot", "homedecor:plastic_sheeting" }
	},
})

if minetest.get_modpath("digilines") then
	minetest.register_craft( {
		output = "pipeworks:digiline_filter 2",
		recipe = {
			{ "default:steel_ingot", "default:steel_ingot", "homedecor:plastic_sheeting" },
			{ "group:stick", "digilines:wire_std_00000000", "homedecor:plastic_sheeting" },
			{ "default:steel_ingot", "default:steel_ingot", "homedecor:plastic_sheeting" }
		},
	})
end

-- other

minetest.register_craft( {
	output = "pipeworks:autocrafter 2",
	recipe = {
			{ "default:steel_ingot", "default:mese_crystal", "default:steel_ingot" },
			{ "homedecor:plastic_sheeting", "default:steel_ingot", "homedecor:plastic_sheeting" },
			{ "default:steel_ingot", "default:mese_crystal", "default:steel_ingot" }
	},
})

minetest.register_craft( {
	output = "pipeworks:steel_pane_embedded_tube 1",
	recipe = {
		{ "", "default:steel_ingot", "" },
		{ "", "pipeworks:tube_1", "" },
		{ "", "default:steel_ingot", "" }
	},
})

minetest.register_craft({
	output = "pipeworks:trashcan",
	recipe = {
		{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
		{ "default:steel_ingot", "", "default:steel_ingot" },
		{ "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" },
	},
})

minetest.register_craft( {
	output = "pipeworks:teleport_tube_1 2",
	recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "default:desert_stone", "default:mese", "default:desert_stone" },
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
	},
})

if pipeworks.enable_priority_tube then
	minetest.register_craft( {
		output = "pipeworks:priority_tube_1 6",
		recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "default:gold_ingot", "", "default:gold_ingot" },
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
		},
	})
end

if pipeworks.enable_accelerator_tube then
	minetest.register_craft( {
		output = "pipeworks:accelerator_tube_1 2",
		recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "default:mese_crystal_fragment", "default:steel_ingot", "default:mese_crystal_fragment" },
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
		},
	})
end

if pipeworks.enable_crossing_tube then
	minetest.register_craft( {
		output = "pipeworks:crossing_tube_1 5",
		recipe = {
			{ "", "pipeworks:tube_1", "" },
			{ "pipeworks:tube_1", "pipeworks:tube_1", "pipeworks:tube_1" },
			{ "", "pipeworks:tube_1", "" }
		},
	})
end

if pipeworks.enable_one_way_tube then
	minetest.register_craft({
		output = "pipeworks:one_way_tube 2",
		recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "group:stick", "default:mese_crystal", "homedecor:plastic_sheeting" },
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
		},
	})
end

if pipeworks.enable_mese_tube then
	minetest.register_craft( {
		output = "pipeworks:mese_tube_000000 2",
		recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "", "default:mese_crystal", "" },
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
		},
	})

	minetest.register_craft( {
		type = "shapeless",
		output = "pipeworks:mese_tube_000000",
		recipe = {
			"pipeworks:tube_1",
			"default:mese_crystal_fragment",
			"default:mese_crystal_fragment",
			"default:mese_crystal_fragment",
			"default:mese_crystal_fragment",
		},
	})
end

if pipeworks.enable_item_tags and pipeworks.enable_tag_tube then
	minetest.register_craft( {
		output = "pipeworks:tag_tube_000000 2",
		recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "default:book", "default:mese_crystal", "default:book" },
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
		},
	})

	minetest.register_craft( {
		type = "shapeless",
		output = "pipeworks:tag_tube_000000",
		recipe = {
			"pipeworks:mese_tube_000000",
			"default:book",
		},
	})
end

if pipeworks.enable_sand_tube then
	minetest.register_craft( {
		output = "pipeworks:sand_tube_1 2",
		recipe = {
			{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting"},
			{"group:sand",                 "group:sand",                 "group:sand"},
			{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting"}
		},
	})

	minetest.register_craft( {
		output = "pipeworks:sand_tube_1",
		recipe = {
			{"group:sand", "pipeworks:tube_1", "group:sand"},
		},
	})
end

if pipeworks.enable_mese_sand_tube then
	minetest.register_craft( {
		output = "pipeworks:mese_sand_tube_1 2",
		recipe = {
			{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{"group:sand",				 "default:mese_crystal",	   "group:sand" },
			{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
		},
	})

	minetest.register_craft( {
		type = "shapeless",
		output = "pipeworks:mese_sand_tube_1",
		recipe = {
			"pipeworks:sand_tube_1",
			"default:mese_crystal_fragment",
			"default:mese_crystal_fragment",
			"default:mese_crystal_fragment",
			"default:mese_crystal_fragment",
		},
	})
end

if pipeworks.enable_deployer then
	minetest.register_craft({
		output = "pipeworks:deployer_off",
		recipe = {
			{ "group:wood",	"default:chest",	"group:wood"	},
			{ "default:stone", "mesecons:piston",  "default:stone" },
			{ "default:stone", "mesecons:mesecon", "default:stone" },
		}
	})
end

if pipeworks.enable_dispenser then
	minetest.register_craft({
		output = "pipeworks:dispenser_off",
		recipe = {
			{ "default:desert_sand", "default:chest",	"default:desert_sand" },
			{ "default:stone",	   "mesecons:piston",  "default:stone"	   },
			{ "default:stone",	   "mesecons:mesecon", "default:stone"	  },
		}
	})
end

if pipeworks.enable_node_breaker then
	minetest.register_craft({
		output = "pipeworks:nodebreaker_off",
		recipe = {
			{ "pipeworks:gear", "pipeworks:gear",   "pipeworks:gear"	},
			{ "default:stone", "mesecons:piston",   "default:stone" },
			{ "group:wood",	"mesecons:mesecon",  "group:wood" },
		}
	})
end
