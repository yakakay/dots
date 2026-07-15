vim.g.mapleader = ' ';
vim.g.maplocalleader = ' ';

vim.o.number = true;
vim.o.relativenumber = true;

vim.o.mouse = 'a'

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false;

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.cursorline = true
vim.o.scrolloff = 8

-- oil
vim.pack.add({ 'https://github.com/stevearc/oil.nvim' })
require('oil').setup()
vim.keymap.set('n', '-', '<cmd>Oil<cr>')

-- fuzzy finder
vim.pack.add({
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>gg', builtin.live_grep)
vim.keymap.set('n', '<leader>hh', builtin.help_tags)

-- blink.cmp
vim.pack.add({
  { src = 'https://github.com/Saghen/blink.cmp', version = vim.version.range '1.*'  },
})
require('blink.cmp').setup()

-- vim-fugitive
vim.pack.add({ 'https://github.com/tpope/vim-fugitive' })

-- gitsigns
vim.pack.add({ 'https://github.com/lewis6991/gitsigns.nvim' })

-- lsp
vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })
vim.lsp.enable('gopls')
vim.lsp.enable('rust_analyzer')

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>fr', vim.lsp.buf.format)
