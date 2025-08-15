return {
  {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
    setup = function()
      vim.keymap.set("n", "<leader>fr", "<cmd>FlutterRun<CR>")
      vim.keymap.set("n", "<leader>fd", "<cmd>FlutterDevices<CR>")
      vim.keymap.set("n", "<leader>fe", "<cmd>FlutterEmulators<CR>")
      vim.keymap.set("n", "<leader>fq", "<cmd>FlutterReload<CR>")
    end
  }
}
