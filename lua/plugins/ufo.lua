return {
  {
    'kevinhwang91/nvim-ufo',
    dependencies = {
      'kevinhwang91/promise-async',
      {
        "chrisgrieser/nvim-origami",
        event = "VeryLazy",
        opts = {}, -- needed even when using default config
      },
    },
    config = function ()
      -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
      vim.keymap.set('n', 'zO', require('ufo').openAllFolds)
      vim.keymap.set('n', 'zC', require('ufo').closeAllFolds) 
      vim.keymap.set('v', 'F', "<cmd>'<,'>fold<CR>")
    end
  }
}
