-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "docker-compose-langserver",
        "docker-langserver",
        "bash-language-server",
        "deno",
        "emmet-ls",
        "vscode-eslint-language-server",
        "vscode-html-language-server",
        "vscode-json-language-server",
        "nginx-language-server",
        "pyright",
        "rust-analyzer",
        "sqls",
        "typescript-language-server",
        "vue-language-server",
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
