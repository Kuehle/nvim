local set = vim.opt -- set options

vim.opt.laststatus = 3
vim.opt.relativenumber = true

vim.opt.shell = '/bin/bash'
vim.g.rustfmt_command = '/Users/johanneskuehlewindt/.cargo/bin/rustfmt'
vim.g.rustfmt_autosave = 1

-- yiW yanks all the text between white space
-- C-u C-d quickly move through the pages
-- relative line numbers
-- =ap - format all the paragraph
-- o transfers cursor to either side of the highlighting mode
-- this allows you to Vi{ to select everything in the body of a function and then
-- just extend the selection to include the function header

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
-- set.autochdir = true
set.relativenumber = true
set.scrolloff = 8

vim.g.netrw_banner = false
vim.g.netrw_liststyle = 3

vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { silent = true })
vim.keymap.set("n", "<leader>bn", ":bNext<CR>", { silent = true })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { silent = true })

vim.keymap.set("n", "<leader>ee", ":Ex<CR>", { silent = true })
vim.keymap.set("n", "<leader>eh", ":Sex<CR>", { silent = true })
vim.keymap.set("n", "<leader>ev", ":Vex<CR>", { silent = true })

vim.keymap.set("n", "<leader>w", "<C-w>", { silent = true, noremap = true })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })

-- fix inline error handling
vim.diagnostic.config({ virtual_text = false })
vim.keymap.set("n", "gh", ":lua vim.diagnostic.open_float(0, {scope=\"line\"})<CR>",
    { noremap = true, silent = true })

vim.keymap.set("n", "<leader>tt", ":term://zsh<CR>i")
vim.keymap.set("n", "<leader>tv", ":vsplit term://zsh<CR><C-w><C-r>i")
vim.keymap.set("n", "<leader>th", ":9split term://zsh<CR><C-w><C-r>i")

vim.o.background = "light"

