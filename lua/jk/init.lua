print("JK loaded")

local set = vim.opt -- set options

vim.opt.laststatus = 3
vim.opt.relativenumber = true

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

vim.keymap.set("n", "<leader>tt", ":term ")


vim.o.background = "light"

vim.api.nvim_create_user_command('Jktest', function()
    print("hello from jk test")
end, {})
