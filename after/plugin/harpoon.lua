require("harpoon").setup({})
require("telescope").load_extension('harpoon')

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- vim.keymap.set('n', '<leader>fj', function() vim.cmd("Telescope harpoon marks") end, {})
vim.keymap.set('n', '<leader>fj', ui.toggle_quick_menu, {})
vim.keymap.set('n', '<leader>a', mark.add_file, {})
