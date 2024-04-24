
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set({ 'n', 'x' }, '<D-h>', 'b', { desc = 'back one word' })
vim.keymap.set({ 'n', 'x' }, '<D-l>', 'w', { desc = 'forward one word' })
vim.keymap.set({ 'n', 'x' }, '<D-H>', '^', { desc = 'back to start of line' })
vim.keymap.set({ 'n', 'x' }, '<D-L>', '$', { desc = 'forward to end of line' })
vim.keymap.set({ 'n', 'x' }, '<D-j>', '5j', { desc = 'down 5 lines' })
vim.keymap.set({ 'n', 'x' }, '<D-J>', '15j', { desc = 'down 15 lines' })
vim.keymap.set({ 'n', 'x' }, '<D-k>', '5k', { desc = 'up 5 lines' })
vim.keymap.set({ 'n', 'x' }, '<D-K>', '15k', { desc = 'up 15 lines' })

vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })

if vim.g.neovide then
  vim.keymap.set('n', '<D-s>', ':w<CR>')
  vim.keymap.set('n', '<D-w>', ':q<CR>')
  vim.keymap.set('v', '<D-c>', '"+y')
  vim.keymap.set('n', '<D-v>', '"+P')
  vim.keymap.set('v', '<D-v>', '"+P')
  vim.keymap.set('c', '<D-v>', '<C-R>+')
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli')
end

vim.g.neovide_scale_factor = 1.0
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end
vim.keymap.set('n', '<D-+>', function()
  change_scale_factor(1.25)
end)
vim.keymap.set('n', '<D-->', function()
  change_scale_factor(1 / 1.25)
end)

-- vim: ts=2 sts=2 sw=2 et