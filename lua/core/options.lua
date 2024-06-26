-- vim.cmd("let g:netrw_liststyle = 1")

vim.opt.guicursor = ""

vim.opt.clipboard = 'unnamedplus'
vim.opt.cursorline = true

-- better disable for transparent bg
--vim.cmd('highlight CursorLine guibg=NONE guifg=NONE gui=reverse')
--vim.api.nvim_set_hl(0, "Visual", { nil,  nil, reverse = true })

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 7
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.api.nvim_create_user_command("Cpath", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})
