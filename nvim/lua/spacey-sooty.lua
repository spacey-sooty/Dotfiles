require("remap")
require("display")

P = function(v) 
	print(vim.inspect(v))
	return v
end

require("tab").set(4)

