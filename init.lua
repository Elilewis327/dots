-- default vim options
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.g.mapleader = ' '

-- vim plug config 
local vim = vim
local Plug = vim.fn['plug#']

-- vim plug plugins
vim.call('plug#begin')
Plug('Mofiqul/dracula.nvim')
Plug('MunifTanjim/nui.nvim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
Plug('echasnovski/mini.nvim')
Plug('nvim-neo-tree/neo-tree.nvim')
Plug('MeanderingProgrammer/render-markdown.nvim')
Plug('nvim-treesitter/nvim-treesitter')
vim.call('plug#end')

--dracula config
vim.cmd[[colorscheme dracula]]

--telescope config
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

--mini.nvim config
require('mini.icons').setup()
require('mini.statusline').setup()
require('mini.git').setup()
require('mini.diff').setup()

--neo-tree config
require('neo-tree').setup({
 window = {
        width = 35,
    } 
})
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>' , { desc = 'Toggle neotree' })

--TS config
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "python", "javascript", "html", "css", "markdown", "c", "sql", "json" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}
