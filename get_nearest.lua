-- Gets the nearest object
local M = {}

M.object = {}

-- Adds object to the table on init()
function M.add_object(id)
	local pos = go.get_position(id)
	table.insert(M.object, {id = id, x = pos.x, y = pos.y})
end

function M.get_nearest(pos)
	local nearest_object = nil
	local nearest_distance = math.huge

  -- Returns of table empty
	if #M.object == 0 then return end
	for _, object in pairs(M.object) do
		local target_position = go.get_position(target_id)
		local distance = vmath.length(target_position - unit_pos)
		
		local dx = object.x - pos.x
		local dy = object.y - pos.y

		if nearest_target_id == nil or distance < nearest_distance then
			nearest_target_id = target_id
			nearest_distance = distance
		end
	end
	return nearest_object
end

return M
