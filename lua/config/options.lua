-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.winbar = "%=%m %f"
-- vim.cmd("let g:indent_guides_enable_on_vim_startup = 1")
vim.cmd("set so=999")
vim.g.copilot_assume_mapped = true
-- Use the system clipboard
vim.opt.clipboard = "unnamedplus"

