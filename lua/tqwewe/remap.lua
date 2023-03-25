-- Copy to clipboard
vim.api.nvim_set_keymap('n', '<C-S-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-S-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('s', '<C-S-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('x', '<C-S-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('o', '<C-S-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('!', '<C-S-c>', '"+y', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-S-c>', '<C-o>"+y', { noremap = true })
vim.api.nvim_set_keymap('l', '<C-S-c>', '<C-o>"+y', { noremap = true })

-- Paste from clipboard
vim.api.nvim_set_keymap('n', '<C-S-v>', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-S-v>', '"+p', { noremap = true })
vim.api.nvim_set_keymap('s', '<C-S-v>', '"+p', { noremap = true })
vim.api.nvim_set_keymap('x', '<C-S-v>', '"+p', { noremap = true })
vim.api.nvim_set_keymap('o', '<C-S-v>', '"+p', { noremap = true })
vim.api.nvim_set_keymap('!', '<C-S-v>', '"+p', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-S-v>', '<C-r>+', { noremap = true })
vim.api.nvim_set_keymap('l', '<C-S-v>', '<C-r>+', { noremap = true })
