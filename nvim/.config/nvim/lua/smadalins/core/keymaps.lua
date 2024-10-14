-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------
-- clear search highlights
keymap.set("n", "<leader><CR>", ":nohl<CR>", { silent = true })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<leader>a", "gg<S-v>G")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- leader close/save
keymap.set("n", "<leader>w", ":w!<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- move lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- indent block
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- join cursor stay in place
keymap.set("n", "J", "mzJx`z")

-- keep in the middle
keymap.set("n", "n", "nzzzv") -- search
keymap.set("n", "N", "Nzzzv")
keymap.set("n", "<C-d>", "<C-d>zz") -- up/down
keymap.set("n", "<C-u>", "<C-u>zz")

-- paste without yank
keymap.set("x", "<leader>p", '"_dP')
