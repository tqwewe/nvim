require("tqwewe")

-- This snippet changes directory to the path provided to neovim
local group_cdpwd = vim.api.nvim_create_augroup("group_cdpwd", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", {
  group = group_cdpwd,
  pattern = "*",
  callback = function()
    vim.api.nvim_set_current_dir(vim.fn.expand("%:p:h"))
  end,
})

-- local augroup = vim.api.nvim_create_augroup('cdpwd', { clear = true })
--
-- vim.api.nvim_create_autocmd('VimEnter', {
--     -- group = augroup,
--     pattern = "*",
--     command = 'cd $PWD'
-- })

-- vim.api.nvim_command('augroup cdpwd')
-- vim.api.nvim_command('autocmd!')
-- vim.api.nvim_command('autocmd VimEnter * cd $PWD')
-- vim.api.nvim_command('augroup END')

