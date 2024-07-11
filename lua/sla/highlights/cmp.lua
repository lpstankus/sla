local M = {}

function M.get(c)
  return {
    CmpItemKind               = { fg = c.bg0, bg = c.fg0, bold = true },
    CmpItemKindText           = "CmpItemKind",
    CmpItemKindComment        = "CmpItemKind",
    CmpItemKindVariable       = "CmpItemKind",
    CmpItemKindTreesitter     = "CmpItemKind",
    CmpItemKinDVariableMember = "CmpItemKind",

    CmpItemKindFunction    = { fg = c.bg0, bg = c.fg1, bold = true },
    CmpItemKindOperator    = "CmpItemKindFunction",
    CmpItemKindConstructor = "CmpItemKindFunction",
    CmpItemKindMethod      = "CmpItemKindFunction",

    CmpItemKindField    = { fg = c.bg0, bg = c.fg2, bold = true },
    CmpItemKindProperty = "CmpItemKindField",

    CmpItemKindEvent     = { fg = c.bg0, bg = c.gre0, bold = true },
    CmpItemKindUnit      = "CmpItemKindEvent",
    CmpItemKindReference = "CmpItemKindEvent",

    CmpItemKindString = { fg = c.bg0, bg = c.gre1, bold = true },
    CmpItemKindColor  = "CmpItemKindString",

    CmpItemKindConstant   = { fg = c.bg0, bg = c.gre2, bold = true },
    CmpItemKindValue      = "CmpItemKindConstant",
    CmpItemKindEnumMember = "CmpItemKindConstant",

    CmpItemKindKeyword = { fg = c.bg0, bg = c.red0, bold = true },
    CmpItemKindModule  = "CmpItemKindKeyword",
    CmpItemKindFile    = "CmpItemKindKeyword",
    CmpItemKindFolder  = "CmpItemKindKeyword",

    CmpItemKindStruct        = { fg = c.bg0, bg = c.red1, bold = true },
    CmpItemKindClass         = "CmpItemKindStruct",
    CmpItemKindEnum          = "CmpItemKindStruct",
    CmpItemKindTypeParameter = "CmpItemKindStruct",
    CmpItemKindInterface     = "CmpItemKindStruct",

    CmpItemKindSnippet = { fg = c.bg0, bg = c.blu0, bold = true },
    CmpItemKindCopilot = "CmpItemKindSnippet",
  }
end

return M
