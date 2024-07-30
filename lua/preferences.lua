-- set leader key - SPACE
vim.g.mapleader = " "

-- some keybindings
vim.keymap.set("n", "<C-s>", ":w<CR>", {})
vim.keymap.set("n", "<C-x>", ":q!<CR>", {})
vim.keymap.set("n", "<C-M-x>", ":wqa<CR>", {})

-- typesetting
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")


