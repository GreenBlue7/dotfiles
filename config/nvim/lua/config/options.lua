-- Leader key: must be set before lazy.nvim loads plugins
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable netrw; nvim-tree replaces it
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Line numbers: absolute on cursor line, relative elsewhere
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Indentation: 2 spaces
vim.opt.expandtab = true   -- insert spaces instead of tab characters
vim.opt.tabstop = 2        -- width of an existing tab character
vim.opt.shiftwidth = 2     -- width used by >>, <<, and auto-indent

vim.opt.termguicolors = true
vim.opt.showmode = false  -- lualine already shows the current mode
