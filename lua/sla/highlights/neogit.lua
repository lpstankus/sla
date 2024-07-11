local M = {}

function M.get(c)
  return {
    NeogitBranch     = { fg = c.red0, bold = true },
    NeogitBranchHead = { fg = c.fg1, bold = true },
    NeogitRemote     = { fg = c.red1, bold = true, italic = true },
    NeogitStash      = { fg = c.red1, bold = true },
    NeogitObjectId   = { fg = c.gra0 },
    NeogitFold       = { fg = c.fg1 },

    NeogitSelectionHeader = { fg = c.red0 },
    NeogitSelectionCount  = { fg = c.fg2 },

    NeogitChangeAdded    = { fg = c.add, bold = true, italic = true },
    NeogitChangeModified = { fg = c.mod, bold = true, italic = true },
    NeogitChangeDeleted  = { fg = c.rem, bold = true, italic = true },
    NeogitChangeRenamed  = { fg = c.fg0, bold = true, italic = true },
    NeogitChangeUpdated  = { fg = c.fg0, bold = true, italic = true },
    NeogitChangeCopied   = { fg = c.fg0, bold = true, italic = true },
    NeogitChangeNewFile  = { fg = c.fg2, bold = true, italic = true },
    NeogitChangeUnmerged = { fg = c.red2, bold = true, italic = true },

    NeogitDiffHeader  = { fg = c.fg1, bg = c.bg0, bold = true },
    NeogitHunkHeader  = { fg = c.fg1, bg = c.bg0, bold = true },
    NeogitDiffContext = { fg = c.fg1, bg = c.bg3 },
    NeogitDiffAdd     = { fg = c.add, bg = c.bg3 },
    NeogitDiffDelete  = { fg = c.rem, bg = c.bg3 },

    NeogitHunkHeaderHighlight  = { fg = c.bg0, bg = c.fg0, bold = true },
    NeogitDiffContextHighlight = { fg = c.fg0, bg = c.bg3 },
    NeogitDiffAddHighlight     = { fg = c.add, bg = c.bg3 },
    NeogitDiffDeleteHighlight  = { fg = c.rem, bg = c.bg3 },
    NeogitDiffHeaderCursor     = { fg = c.fg1, bg = c.bg2, bold = true },
    NeogitHunkHeaderCursor     = { fg = c.fg1, bg = c.bg2, bold = true },
    NeogitDiffContextCursor    = { fg = c.fg0, bg = c.bg0 },
    NeogitDiffAddCursor        = { fg = c.add, bg = c.bg0 },
    NeogitDiffDeleteCursor     = { fg = c.rem, bg = c.bg0 },
  }
end

return M
