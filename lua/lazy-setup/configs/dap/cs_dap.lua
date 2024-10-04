local M = {}

M.adapters_coreclr = {
	type = "executable",
	command = "/usr/local/bin/netcoredbg",
	args = { "--interpreter=vscode" },
}

M.configuration = {
	{
		type = "coreclr",
		name = "launch - netcoredbg",
		request = "launch",
		program = function()
			return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug/", "file")
		end,
	},
}

return M
