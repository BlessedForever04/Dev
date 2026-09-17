local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs / indentation
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

-- UI
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true

-- Wrapping
opt.wrap = false

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Faster update time
opt.updatetime = 250

-- Don't show mode since statusline already does
opt.showmode = false

-- Clipboard
opt.clipboard = "unnamedplus"

-- V:
opt.timeoutlen = 300
