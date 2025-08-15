return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup({})

    -- Keymaps:
    vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")                -- Shows docs on cursor
    vim.keymap.set("n", "ca", "<cmd>Lspsaga code_action<CR>")             -- Show code actions on cursor
    vim.keymap.set("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>") -- Open modal with definition
    vim.keymap.set("n", "<S-,", "<cmd>Lspsaga diagnostic_jump_prev")      -- Jump to prev diagnostic
    vim.keymap.set("n", "<S-.", "<cmd>Lspsaga diagnostic_jump_next")      -- Jump to next diagnostic
    vim.keymap.set("n", "<leader>re", "<cmd>Lspsaga finder<CR>")          -- Shows references and implementations
    vim.keymap.set({ 'n', 't' }, 'T', '<cmd>Lspsaga term_toggle<CR>')     -- Toggle terminal
    vim.keymap.set({ "n", "v" }, "<leader>rp", "<cmd>Lspsaga rename<CR>") -- Rename globally
  end,

  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons',     -- optional
  },
  opts = {
    lightbulb = {
      enable = false
    }
  }
}
