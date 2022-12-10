--- Slowly plugin manager ---
require('slowly').setup({
  plugins = {
    {url = 'https://github.com/nvim-lualine/lualine.nvim', start = true},
    {url = 'https://github.com/nvim-tree/nvim-web-devicons', start = true},
    {url = 'https://github.com/nvim-treesitter/nvim-treesitter', start = true},
    {url = 'https://github.com/NvChad/nvim-colorizer.lua', start = true},
    {url = 'https://github.com/Mofiqul/dracula.nvim', start = true},
  }
})

--- Plugins ---
require('plugins.lualine') --Statusline
require('plugins.treesitter') --Treesitter
require('plugins.colorizer') --Colorizer
require('plugins.dracula') --Dracula theme
