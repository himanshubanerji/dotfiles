return {
  -- add gruvbox
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
    config = function()
      -- Lua initialization file
      vim.g.nightflyTransparent = true
      vim.g.nightflyNormalFloat = true
      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "single",
      })
      vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signatureHelp, {
        border = "single",
      })
      vim.diagnostic.config({ float = { border = "single" } })
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nightfly",
    },
  },
}
