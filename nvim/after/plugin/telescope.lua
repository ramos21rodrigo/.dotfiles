local builtin = require('telescope.builtin')
local keymap = vim.keymap
require('telescope').load_extension('emoji')

keymap.set('n', '<leader>ff', builtin.find_files, { desc = "[f]ind [f]ile" })
keymap.set('n', '<leader>fg', builtin.git_files, { desc = "[f]ind in [g]it" })
keymap.set('n', '<leader>fe', ':Telescope emoji<CR>', { desc = "[f]ind [e]moji" })

keymap.set('v', '<leader>fw', function() builtin.live_grep({ default_text = "<cword>" }) end)
keymap.set('n', '<leader>fw', function() builtin.live_grep() end, { desc = "[f]ind [w]ord" })

keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "([f]ind) [k]eys" })
