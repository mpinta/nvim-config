--
-- nvim/lua/mpinta/core/helpers.lua
--

-- return the object in
-- the human-readable format
P = function(v)
	print(vim.inspect(v))
	return v
end
