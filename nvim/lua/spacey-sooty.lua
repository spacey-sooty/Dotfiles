require("remap")
require("display")

P = function(v) 
	print(vim.inspect(v))
	return v
end

vim.cmd.set("tabstop=4")
vim.cmd.set("shiftwidth=4")
vim.cmd.set("expandtab")

