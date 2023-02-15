print("JK loaded")

-- default tab size
--
--

local set = vim.opt -- set options

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.autochdir = true
set.relativenumber = true
set.scrolloff = 8

vim.g.netrw_banner = false
vim.g.netrw_liststyle=3

vim.keymap.set("i", "\"", "\"\"<left>", {remap = false, silent = true})
vim.keymap.set("i", "'", "''<left>", {remap = false, silent = true})
vim.keymap.set("i", "(", "()<left>", {remap = false, silent = true})
vim.keymap.set("i", "[", "[]<left>", {remap = false, silent = true})
vim.keymap.set("i", "{", "{}<left>", {remap = false, silent = true})
vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>O", {remap = false, silent = true})
vim.keymap.set("i", "{;<CR>", "{<CR>};<ESC>O", {remap = false, silent = true})

vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", {silent = true})
vim.keymap.set("n", "<leader>bn", ":bNext<CR>", {silent = true})
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", {silent = true})
vim.keymap.set("n", "<leader>ee", ":Ex<CR>", {silent = true})
vim.keymap.set("n", "<leader>eh", ":Sex<CR>", {silent = true})
vim.keymap.set("n", "<leader>ev", ":Vex<CR>", {silent = true})
vim.keymap.set("n", "<leader>tt", ":term ")

vim.o.background = "light"
-- auto closing brackets
-- autocomplete
--

vim.api.nvim_create_user_command('Jktest', function ()
  print("hello from jk test")
end, {})
