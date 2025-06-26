vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local set = vim.opt -- set options

set.laststatus = 3
set.relativenumber = true
set.number = true
set.numberwidth = 4

set.shell = '/bin/zsh'
vim.g.rustfmt_command = '/Users/johanneskuehlewindt/.cargo/bin/rustfmt'
vim.g.rustfmt_autosave = 1

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

set.scrolloff = 8

set.signcolumn = "yes"

vim.g.netrw_banner = false
vim.g.netrw_liststyle = 3

vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { silent = true })
vim.keymap.set("n", "<leader>bn", ":bNext<CR>", { silent = true })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { silent = true })

vim.keymap.set("n", "<leader>w", "<C-w>", { silent = true, noremap = true })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- fix inline error handling
vim.diagnostic.config({ virtual_text = false })
vim.keymap.set("n", "gh", ":lua vim.diagnostic.open_float(0, {scope=\"line\"})<CR>",
	{ noremap = true, silent = true })

vim.keymap.set("n", "<leader>th", ":9split term://zsh<CR><C-w><C-r>i")
vim.opt.foldenable = false
