return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "github/copilot.vim",
    event = "BufEnter",
  },
  {
    "mg979/vim-visual-multi",
    event = "BufEnter",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      format = { timeout_ms = 5000 },
    },
  },
}
