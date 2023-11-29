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

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

Set(4)

