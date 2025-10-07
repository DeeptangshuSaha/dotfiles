vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'
require('plugins')
require('core.global')
require('core.options')
require('core.keymaps')
require('core.vim_cmd')
require('PluginF.gitStatus')
-- require('PluginF.status_bar')
require('PluginF.treesitter')
require('PluginF.bubbles')
