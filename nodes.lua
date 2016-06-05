
local default_material = {
		{"default:cobble", "default_cobble", "Cobble", {cracky = 3, not_in_creative_inventory=1}},
		{"default:stone","default_stone", "Stone", {cracky = 3, not_in_creative_inventory=1}},
		{"default:desert_stone","default_desert_stone", "Desert Stone", {cracky = 3, not_in_creative_inventory=1}},
		{"default:desert_cobble","default_desert_cobble", "Desert Cobble", {cracky = 3, not_in_creative_inventory=1}},
		}
for i in ipairs (default_material) do
local item = default_material [i][1]
local mat = default_material [i][2]
local desc = default_material [i][3]
local gro = default_material [i][4]
minetest.register_node("mymasonhammer:"..mat.."_foot", {
	description =  desc.." Foot Hold Block",
	drawtype = "nodebox",
	tiles = {
		mat..".png",
		mat..".png",
		mat..".png",
		mat..".png",
		mat..".png",
		mat..".png^mymasonhammer_tint2.png",
		},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	climbable = true,
	drop = item,
	groups = gro,
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.3125, 0.5, 0.5, 0.5},
			{-0.375, -0.3125, -0.3125, -0.125, -0.125, -0.435},
			{0.125, 0.1875, -0.3125, 0.375, 0.375, -0.435},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.15, 0.5, 0.5, 0.5},
		}
	},
   collision_box = {
      type="fixed",
      fixed = {
         {-0.5, -0.5, -0.15, 0.5, 0.5, 0.5},
      }
   },
})

end
