local M = {
	"rcarriga/nvim-dap-ui",
	dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local cs_conf = require("lazy-setup.configs.dap.cs_dap")
		local dap_global = require("lazy-setup.configs.dap.dap_global")

		dapui.setup()
		dap.adapters.coreclr = cs_conf.adapters_coreclr
		dap.configurations.cs = cs_conf.configuration

		dap_global:config_ui(dap, dapui)
		dap_global:config_keymaps(dap, dapui)
	end,
}

return M
