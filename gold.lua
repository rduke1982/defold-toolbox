-- For keeping track of resources (gold, wood, etc.)

local M = {}

M.current = 10

function M.add(self, amount)
	M.current = M.current + amount
end

function M.remove(self, amount)
	if M.current >= amount then
		M.current = M.current - amount
	else
		print("Not enough gold!")
	end
end

function M.get(self)
	return M.current
end


return M
