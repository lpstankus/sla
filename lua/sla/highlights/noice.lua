local M = {}

function M.get(c)
  return {
    NoiceCmdlinePopup             = { fg = c.fg0 },
    NoiceCmdlinePrompt            = { fg = c.fg0 },
    NoiceCmdline                  = { fg = c.fg0 },
    NoiceCmdlineIcon              = { fg = c.fg0 },
    NoiceCmdlinePopupTitle        = { fg = c.fg0 },
    NoiceCmdlinePopupBorder       = { fg = c.fg0 },
    NoiceCmdlineIconSearch        = { fg = c.fg0 },
    NoiceCmdlinePopupBorderSearch = { fg = c.fg0 },
  }
end

return M
