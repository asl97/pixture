--
-- Default mod
-- By Kaadmy, for Pixture
--

default = {}

default.SWAMP_WATER_ALPHA = 220
default.SWAMP_WATER_VISC = 4

default.RIVER_WATER_ALPHA = 160
default.RIVER_WATER_VISC = 2

default.WATER_ALPHA = 200
default.WATER_VISC = 1

default.LIGHT_MAX = 14

function default.log(text, type)
   minetest.log("action", "Pixture ["..type.."] "..text)
end

function default.dumpvec(v)
   return v.x..":"..v.y..":"..v.z
end

minetest.nodedef_default.stack_max = 60
minetest.craftitemdef_default.stack_max = 60

function minetest.nodedef_default.on_receive_fields(pos, form_name, fields, player)
   default.ui.receive_fields(player, form_name, fields)
end

dofile(minetest.get_modpath("default").."/formspec.lua")
dofile(minetest.get_modpath("default").."/functions.lua")
dofile(minetest.get_modpath("default").."/sounds.lua")
dofile(minetest.get_modpath("default").."/nodes.lua")
dofile(minetest.get_modpath("default").."/craftitems.lua")
dofile(minetest.get_modpath("default").."/crafting.lua")
dofile(minetest.get_modpath("default").."/tools.lua")
dofile(minetest.get_modpath("default").."/furnace.lua")
dofile(minetest.get_modpath("default").."/mapgen.lua")
dofile(minetest.get_modpath("default").."/hud.lua")
dofile(minetest.get_modpath("default").."/player.lua")
dofile(minetest.get_modpath("default").."/model.lua")

default.log("mod:default", "loaded")