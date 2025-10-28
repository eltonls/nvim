return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
		config = function()
			require("ibl").setup()
		end,
	},
	-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	{
		"rcarriga/nvim-notify",
		config = function()
      require("notify").setup({
			  background_colour = "#335145",
      })
			vim.notify = require("notify")

      vim.keymap.set("", "<C-n>", "<cmd>NotificationsClear<CR>")
		end,
	},
	-- Lua
	{
		"folke/zen-mode.nvim",
		config = function()
			vim.keymap.set("n", "<leader>z", function()
				require("zen-mode").toggle()
			end)
		end,
	},
	{
		"andweeb/presence.nvim",
		config = function()
			require("presence").setup()
		end,
	},
	{
		"tzachar/highlight-undo.nvim",
	},
}
