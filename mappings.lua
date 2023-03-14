-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- local cmp = require('cmp')
-- local luasnip = require('luasnip')

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-y>"] = { "<Cmd>call copilot#Accept()<CR>", desc = "copilot Accept suggestion" },
    -- ['<Tab>'] = { function()
    --   local cmp = require("cmp")
    --   local luasnip = require("luasnip")
    --   cmp.mapping(function(fallback)
    --     local copilot_keys = vim.fn['copilot#Accept']()
    --     if cmp.visible() then
    --       cmp.select_next_item()
    --     elseif luasnip.expand_or_jumpable() then
    --       luasnip.expand_or_jump()
    --     elseif copilot_keys ~= '' and type(copilot_keys) == 'string' then
    --       vim.api.nvim_feedkeys(copilot_keys, 'i', true)
    --     else
    --       fallback()
    --     end
    --   end)
    -- end,
    --   remap = true,
    --   desc = "cmp complete",
    -- },
  }
}
