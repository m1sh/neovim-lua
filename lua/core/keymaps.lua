vim.g.mapleader = ','
local keymap = vim.keymap

keymap.set('n', '<up>', '<nop>')
keymap.set('n', '<down>', '<nop>')
keymap.set('n', '<left>', '<nop>')
keymap.set('n', '<right>', '<nop>')
keymap.set('i', '<up>', '<nop>')
keymap.set('i', '<down>', '<nop>')
keymap.set('i', '<left>', '<nop>')
keymap.set('i', '<right>', '<nop>')
keymap.set('v', '<up>', '<nop>')
keymap.set('v', '<down>', '<nop>')
keymap.set('v', '<left>', '<nop>')
keymap.set('v', '<right>', '<nop>')

keymap.set('n', '<leader>s', '<cmd>update<cr>', {remap = false})
keymap.set('v', '<leader>s', '<c-c><cmd>update<cr>', {remap = false})
keymap.set('i', '<leader>s', '<c-o><cmd>update<cr>', {remap = false})

keymap.set('n', '<leader>q', '<cmd>quit<cr>', {remap = false})

keymap.set('n', '<leader>m', '<cmd>bn<cr>', {remap = false})
keymap.set('n', '<leader>n', '<cmd>bp<cr>', {remap = false})
keymap.set('n', '<leader>c', '<cmd>bd!<cr>', {remap = false})

keymap.set('', '<leader>c', '<cmd>bd<cr>', {remap = false})

keymap.set('v', '>', '<gv', {remap = false})
keymap.set('v', '<', '>gv', {remap = false})

keymap.set('n', '<c-j>', '<cmd>m .+1<cr>==', {remap = false})
keymap.set('n', '<c-k>', '<cmd>m .-2<cr>==', {remap = false})
keymap.set('i', '<c-j>', '<esc><cmd>m .+1<cr>==gi', {remap = false})
keymap.set('i', '<c-k>', '<esc><cmd>m .-2<cr>==gi', {remap = false})
keymap.set("v", "<c-k>", ":move '<-2<CR>gv=gv", {})
keymap.set("v", "<c-j>", ":move '>+1<CR>gv=gv", {})

keymap.set('n', '<c-p>', '<cmd>Glcd<cr><bar><cmd>Telescope find_files<cr>')
keymap.set('n', '<c-g>', '<cmd>Glcd<cr><bar><cmd>Telescope live_grep<cr>')
keymap.set('n', '<c-s>', '<cmd>Glcd<cr><bar><cmd>Telescope grep_string<cr>')

keymap.set('n', '<leader>h', '<cmd>nohl<cr>')
