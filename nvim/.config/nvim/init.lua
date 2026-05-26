-- ~/.config/nvim/init.lua
vim.g.mapleader = ' '
require('lualine').setup {
  options = {
    theme = 'auto', -- matches your colorscheme automatically
  }
}

-- Fuzzy finder
local fzf = require('fzf-lua')

vim.keymap.set('n', '<leader>ff', fzf.files,     { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', fzf.buffers,   { desc = 'Find buffers' })
