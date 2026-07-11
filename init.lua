vim.g.start_time = vim.fn.reltime()
vim.loader.enable() --  SPEEEEEEEEEEED 

local plugins = {
    {src = 'https://github.com/catppuccin/nvim', name = 'catppuccin'},
    'https://github.com/nvim-lualine/lualine.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/norcalli/nvim-colorizer.lua',
    'https://github.com/nvim-tree/nvim-tree.lua',
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/windwp/nvim-autopairs',
    'https://github.com/ibhagwan/fzf-lua',
    'https://github.com/goolord/alpha-nvim',
    'https://github.com/folke/which-key.nvim',
    'https://github.com/mfussenegger/nvim-lint',
    'https://github.com/mluders/comfy-line-numbers.nvim',
    'https://github.com/folke/twilight.nvim',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/mbbill/undotree',
    'https://github.com/tpope/vim-fugitive',
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/mason-org/mason-lspconfig.nvim',
    'https://github.com/numToStr/FTerm.nvim',
}

vim.pack.add(plugins)

require("config.theme")
require("config.mappings")
require("config.options")

require("plugins.alpha")
require("plugins.colorizer")
require("plugins.colorscheme")
require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.treesitter")
require("plugins.autopairs")
require("plugins.fzf-lua")
require("plugins.which-key")
require("plugins.nvim-lint")
require("plugins.comfy-line-numbers")
require("plugins.twilight")
require("plugins.lsp")
require("plugins.fterm")

load_theme()
