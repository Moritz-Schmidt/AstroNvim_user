local null_ls = require "null-ls"

return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    -- local null_ls = require "null-ls"
    -- config.default_timeout = 5000
    config.debug = true
    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      null_ls.builtins.code_actions.eslint_d,
      null_ls.builtins.formatting.eslint_d.with {
        timeout = 10000,
        -- prefer_local = "node_modules/.bin/",
      },
      null_ls.builtins.formatting.prettier.with {
        disabled_filetypes = { "vue", "javascript", "typescript" },
      },
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }
    return config -- return final config table
  end,
}
