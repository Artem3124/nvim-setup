return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        local conf = require("telescope.config").values

        harpoon.setup({
            settings = {
                save_on_toggle = true,
            }
        })

        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table({
                    results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
            }):find()
        end

        vim.keymap.set("n", "<C-q>", function() toggle_telescope(harpoon:list()) end,
            { desc = "Open harpoon window" })
        vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

        vim.keymap.set("n", "<C-a>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-f>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<C-y>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<C-p>", function() harpoon:list():select(4) end)

        vim.keymap.set("n", "<C-b>", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<C-n>", function() harpoon:list():next() end)

        -- Colorscheme adjustments
        vim.cmd("hi clear  Visual")
        vim.cmd("hi link Visual  SpellBad")
        vim.cmd("hi clear  NormalFloat")
        vim.cmd("hi link NormalFloat  NormalNC")
        vim.cmd("hi clear FloatBorder")
        vim.cmd("hi link FloatBorder  NormalNC")
        vim.cmd("hi clear DiagnosticUnderlineError")
        vim.cmd("hi clear DiagnosticUnderlineHint")
        vim.cmd("hi clear DiagnosticUnderlineInfo")
        vim.cmd("hi clear DiagnosticUnderlineOk")
        vim.cmd("hi clear DiagnosticUnderlineWarn")
    end
}
