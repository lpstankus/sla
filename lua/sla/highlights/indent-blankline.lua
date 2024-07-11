local M = {}

function M.get(c)
  return {
    IblScope                   = { fg = c.red0, nocombine = true },
    IblIndent                  = { fg = c.gra1, nocombine = true },
    IndentBlanklineChar        = { fg = c.gra1, nocombine = true },
    IndentBlanklineContextChar = { fg = c.gra1, nocombine = true },
  }
end

return M
