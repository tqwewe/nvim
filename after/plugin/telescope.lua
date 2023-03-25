local project_actions = require("telescope._extensions.project.actions")
require('telescope').setup {
    extensions = {
        project = {
            on_project_selected = function(prompt_bufnr)
                project_actions.change_working_directory(prompt_bufnr)
                require("nvim-tree.api").tree.open()
            end
        }
    }
}

require 'telescope'.load_extension('project')

local builtin = require('telescope.builtin')
local project = require('telescope').extensions.project.project

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fp', project, {})

-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>ps', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)
