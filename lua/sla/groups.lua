local M = {}

local groups = {
  "base",
  "cmp",
  "gitsigns",
  "indent-blankline",
  "neogit",
  "noice",
  "semantic_tokens",
  "treesitter",
}

---@param colors sla.ColorMap
function M.build_groups(colors)
  local highlights = {}
  for _, group in pairs(groups) do
    local h = require("sla.highlights." .. group).get(colors)
    highlights = vim.tbl_deep_extend("force", highlights, h)
  end
  return highlights
end

return M
