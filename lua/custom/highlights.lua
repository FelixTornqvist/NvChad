-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
    fg = "#999999",
  },
  DiffAdd = {
    bg = "#004400",
    fg = "NONE",
  },
  DiffChange = {
    -- bg = "#005500",
    bg = "#003300",
    fg = "NONE",
  },
  DiffText = {
    -- bg = "#006666",
    bg = "#005533",
    fg = "NONE",
  },
  DiffModified = {
    bg = "#ff6666",
    fg = "NONE",
  },
  DiffDelete = {
    bg = "#330000",
    fg = "NONE",
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
