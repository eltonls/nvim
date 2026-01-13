return {
	"chrisgrieser/nvim-chainsaw",
	event = "VeryLazy",
	opts = {},
  config = function ()
    require("chainsaw").setup()

    vim.keymap.set("n", "<leader>lv", "<cmd>Chainsaw variableLog<CR>")
    vim.keymap.set("n", "<leader>lob", "<cmd>Chainsaw objectLog<CR>")
    vim.keymap.set("n", "<leader>rl", "<cmd>Chainsaw removeLogs<CR>")
  end
}
