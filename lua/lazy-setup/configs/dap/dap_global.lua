local M = {}

function M:config_keymaps(dap, dapui)
	vim.keymap.set("n", "<leader>zbo", function()
		dapui.open()
	end)
	vim.keymap.set("n", "<leader>zbc", function()
		dapui.close()
	end)
	vim.keymap.set("n", "<leader>zbt", function()
		dapui.toggle()
	end)
	vim.keymap.set("n", "<leader>zbb", function()
		dap.toggle_breakpoint()
	end)
	vim.keymap.set("n", "<leader>zg", function()
		dap.continue()
	end)
	vim.keymap.set("n", "<leader>zi", function()
		dap.step_into()
	end)
	vim.keymap.set("n", "<leader>zo", function()
		dap.step_over()
	end)
end

function M:config_ui(dap, dapui)
	dap.listeners.before.attach.dapui_config = function()
		dapui.open()
	end
	dap.listeners.before.launch.dapui_config = function()
		dapui.open()
	end
	dap.listeners.before.event_terminated.dapui_config = function()
		dapui.close()
	end
	dap.listeners.before.event_exited.dapui_config = function()
		dapui.close()
	end
end

return M
