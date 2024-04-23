-- local cmp = require "cmp"

---@type MappingsTable
local M = {}

M.general = {
  n = {
    --[";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    -- Y yank entire line
    ["Y"] = { "yy", "yank entire line" },

    ["<leader>gd"] = { ":DiffviewOpen\r", "Open diffview" },
    ["<leader>gD"] = { ":DiffviewClose\r", "Close diffview" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
  -- i = {
  --   ["<Tab>"] = cmp.confirm { select = true },
  --   ["<C-j>"] = cmp.select_next_item(),
  --   ["<C-k>"] = cmp.select_prev_item(),
  -- },
}

-- more keybinds!

return M
