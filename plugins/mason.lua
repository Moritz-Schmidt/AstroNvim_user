-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "docker_compose_language_service",
        "dockerls",
        "bashls",
        "denols",
        "emmet_ls",
        "eslint",
        "html",
        "jsonls",
        "pyright",
        "rust_analyzer",
        "stylelint_lsp",
        "tsserver",
        "volar",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "prettier",
        "stylua",
        "hadolint",
        "jsonlint",
        "markdownlint",
        "flake8",
        "pydocstyle",
        "mypy",
        "pylint",
        "eslint_d",
        "autopep8",
        "black",
        "isort",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "debugpy", "firefox-debug-adapter" },
    },
  },
}
