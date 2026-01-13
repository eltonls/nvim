return {
  "flashcodes-themayankjha/Fknotes.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  config = function()
    require("fknotes").setup({
      -- your configuration here
    })

    vim.keymap.set("n", "<leader>nt", ":FkNewTask<CR>")
    vim.keymap.set("n", "<leader>no", ":FkNotes<CR>")
    vim.keymap.set("n", "<leader>na", ":FkAllTasks<CR>")
  end,
}
