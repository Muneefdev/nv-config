return {
  'easymotion/vim-easymotion',
  config = function()
    vim.api.nvim_set_keymap('n', '<Leader><Leader>j', '<Plug>(easymotion-j)', {})
    vim.api.nvim_set_keymap('n', '<Leader><Leader>k', '<Plug>(easymotion-k)', {})
  end
}
