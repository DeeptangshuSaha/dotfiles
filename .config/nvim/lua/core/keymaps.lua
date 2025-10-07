local keym = vim.keymap
local builtin = require('telescope.builtin')

-- keym.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Cancelling highlight after search is over
keym.set('n', '<leader>n', '<cmd>nohlsearch<CR>')

-- file save but not close
keym.set('n', '<leader>s', '<cmd>w<CR>')

--  file save and close
keym.set('n', '<leader>a', '<cmd>wq<CR>')

-- Syntax highlight
keym.set('n', '<C-p>', '<cmd>TSEnable highlight<CR>')

-- NERDTree related keymaps
keym.set('n', '<leader>f','<cmd>NERDTreeToggle<CR>')
-- keym.set({'n','i'}, '<leader>c','<cmd>NERDTreeClose<CR>')

-- Telescope keymaps
keym.set('n', '<leader>t','<cmd>Telescope<CR>')
keym.set('n', '<leader>tf', builtin.find_files, { desc = 'Telescope find files' })
keym.set('n', '<leader>tg', builtin.live_grep, { desc = 'Telescope live grep' })
keym.set('n', '<leader>tb', builtin.buffers, { desc = 'Telescope buffers' })
keym.set('n', '<leader>th', builtin.help_tags, { desc = 'Telescope help tags' })

-- Nvim Tree related keymaps
-- keym.set({'n','i'}, '<leader>f', '<cmd>NvimTreeToggle<CR>')