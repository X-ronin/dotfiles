--- Vanilla Config ---
require('settings')
require('plugins')

local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim" vim.cmd.source(vimrc)
