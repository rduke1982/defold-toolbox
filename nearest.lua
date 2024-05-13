-- Gets the nearest object
local M = {}

M.object = {}

-- Adds object to the table on init()
function M.add_object(id)
	table.insert(M.object, {id = id})
end

-- Removes from table, call on final()
function M.remove_object(id)
	for i = #M.object, 1, -1 do
		if M.object[i].id == id then
			table.remove(M.object, i)
		end
	end
end

function M.get_nearest(pos)
	local nearest_object = nil
	local nearest_distance = math.huge
	
	if #M.object == 0 then return end
	
	for _, object in pairs(M.object) do
		local object_position = go.get_position(object.id)
		local distance = vmath.length(object_position - pos)
	
		if nearest_object == nil or distance < nearest_distance then
			nearest_object = object
			nearest_distance = distance
		end
	end
	
	return nearest_object
end

return M
