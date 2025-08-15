return {
  {
    "ggandor/flit.nvim",
    dependencies = {
      "ggandor/leap.nvim",
      "tpope/vim-repeat"
    },
    setup = function()
      require("flit").setup()
    end
  }
}
