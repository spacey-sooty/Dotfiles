require("remap")
require("display")

P = function(v) 
	print(vim.inspect(v))
	return v
end

Set = function (num)
	vim.cmd.set(string.format("tabstop=%s", num))
	vim.cmd.set(string.format("shiftwidth=%s", num))
	vim.cmd.set("expandtab")
end

Set(4)

