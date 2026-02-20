return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
    },
    priority = 1000,
    config = function()
      vim.cmd("colorscheme catppuccin")
    end,
  },
}
