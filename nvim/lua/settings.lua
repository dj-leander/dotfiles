-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Show line numbers
vim.opt.number = true

-- Encoding
vim.opt.encoding = 'utf-8'

-- Tabulation settings for 42 school.
vim.opt.autoindent = true
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Use the clipboard for all operations (instead of interacting with the "+" 
-- and/or "*" registers explicitily
vim.opt.clipboard = unnamedplus
