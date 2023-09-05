vim.opt.clipboard = "unnamedplus"
-- vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.ignorecase = true 
vim.opt.mouse = "a" 
vim.opt.showmode = false
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.smartindent = true 
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4 
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 8 
vim.opt.colorcolumn="88"
vim.opt.iskeyword = vim.opt.iskeyword + "-"

vim.cmd [[hi ColorColumn ctermbg=grey guibg=grey]]
