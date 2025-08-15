return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "nvimdev/lspsaga.nvim",
    "ray-x/lsp_signature.nvim",
    "nvimtools/none-ls.nvim",
    "zeioth/none-ls-autoload.nvim",
    "rachartier/tiny-inline-diagnostic.nvim",
    "mason-org/mason-lspconfig.nvim"
  },
  config = function()
    local lspconfig = require("lspconfig")

    -- Mason-lspconfig setup with automatic installation
    require("mason-lspconfig").setup({
      -- Automatically install these LSP servers
      ensure_installed = {
        "lua_ls",   -- Lua
        "ts_ls",    -- TypeScript/JavaScript
        "html",     -- HTML
        "jsonls",   -- JSON
        "dockerls", -- Docker
      },

      -- Automatically setup LSP servers installed via Mason
      automatic_installation = true,
    })

    vim.api.nvim_create_autocmd('LspAttach', {
      desc = 'LSP actions',
      callback = function(event)
        local opts = { buffer = event.buf }

        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
      end,
    })
  end
}
