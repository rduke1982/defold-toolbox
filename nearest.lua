local M = {}

M.enemies = {}

function M.add_enemy(id)
	table.insert(M.enemies, id)
end

function M.remove_enemy(id)
	for i = #M.enemies, 1, -1 do
		if M.enemies[i] == id then
			table.remove(M.enemies, i)
		end
	end
end

function M.enemy(pos)
	local nearest_enemy = nil
	local nearest_dist = math.huge

	if #M.enemies == 0 then return end

	for _, enemy in pairs(M.enemies) do
		local enemy_pos = go.get_position(enemy)
		local dist = vmath.length(enemy_pos - pos)

		if nearest_enemy == nil or dist < nearest_dist then
			nearest_enemy = enemy
			nearest_dist = dist
		end
	end

	return nearest_enemy
end

return M
