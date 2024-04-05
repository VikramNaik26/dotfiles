return {
  'hadronized/hop.nvim',
  config = function()
    require('hop').setup()
    -- vim.keymap.set('n', '<leader><leader>', ':HopWord<CR>', {})
    vim.api.nvim_set_keymap('n', '<leader><leader>', "<cmd>lua require'hop'.hint_words()<cr>", { silent = true })
  end
}
