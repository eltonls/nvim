return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Formatting
        null_ls.builtins.formatting.stylua,   -- Lua
        null_ls.builtins.formatting.prettier, -- JS/TS/JSON/CSS/HTML
        null_ls.builtins.formatting.dart_format,

        -- Diagnostics/Linting
        require("none-ls.diagnostics.eslint_d"),

        -- Code Actions
        require("none-ls.code_actions.eslint_d"),
        null_ls.builtins.code_actions.refactoring, -- General refactoring
      },

      -- Format on save (optional)
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ bufnr = bufnr })
            end,
          })
        end
      end,
    })
  end,
}
