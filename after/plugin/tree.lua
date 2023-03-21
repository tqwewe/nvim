-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    diagnostics = {
        enabled = true,
        show_on_dirs = true,
    },
    update_focused_file = {
        enabled = true
    },
    modified = {
        enabled = true
    }
})

local function open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    local utils = require("nvim-tree.utils")
    local api = require("nvim-tree.api")
    if #vim.api.nvim_list_wins() == 1 and utils.is_nvim_tree_buf() then
      vim.cmd "quit"
    elseif not utils.is_nvim_tree_buf() then
      api.tree.find_file()
    end
  end
})

vim.keymap.set('n', '<leader>pv', require("nvim-tree.api").tree.focus, {})
