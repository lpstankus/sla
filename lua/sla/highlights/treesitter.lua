local M = {}

function M.get(c)
  return {
    ["@none"]           = { fg = c.fg0 },
    ["@text"]           = { fg = c.fg0 },
    ["@text.emphasis"]  = "Emph",
    ["@text.strike"]    = "Strike",
    ["@text.underline"] = "Underline",

    ["@comment"]       = "Comment",
    ["@string"]        = "String",
    ["@string.escape"] = "Character",
    ["@string.regexp"] = "Constant",
    ["@character"]     = "Character",
    ["@number"]        = "Number",
    ["@boolean"]       = "Boolean",
    ["@tag"]           = "Label",
    ["@annotation"]    = "PreProc",

    ["@module"]         = "Include",
    ["@module.builtin"] = { fg = c.red2 },

    ["@variable"]                   = { fg = c.fg0 },
    ["@variable.member"]            = { fg = c.fg2 },
    ["@variable.builtin"]           = { fg = c.fg1 },
    ["@variable.builtin.rust"]      = { fg = c.red2 },
    ["@variable.parameter"]         = { fg = c.fg0 },
    ["@variable.parameter.builtin"] = { fg = c.fg1 },

    ["@type"]            = "Type",
    ["@type.wgsl"]       = "Type",
    ["@type.builtin"]    = "Type",
    ["@type.qualifier"]  = "Keyword",

    ["@exception"] = "Exception",
    ["@namespace"] = { fg = c.red0 },
    ["@label"]     = "Label",

    ["@keyword"]              = "Keyword",
    ["@keyword.import"]       = "Include",
    ["@keyword.import.rust"]  = "Keyword",
    ["@keyword.operator"]     = "Operator",
    ["@keyword.operator.cpp"] = "Keyword",

    ["@operator"]            = "Operator",
    ["@conditional"]         = "Conditional",
    ["@conditional.ternary"] = "Operator",

    ["@field"]     = { fg = c.fg2 },
    ["@property"]  = { fg = c.fg0 },
    ["@parameter"] = { fg = c.fg0 },

    ["@function"]         = "Function",
    ["@function.builtin"] = { fg = c.fg1, italic = true },
    ["@function.macro"]   = "Macro",

    ["@storageclass"]           = "Keyword",
    ["@storageclass.zig"]       = "Type",
    ["@storageclass.liefetime"] = { fg = c.red2 },

    ["@constant"]         = "Constant",
    ["@constant.builtin"] = "Constant",
    ["@constant.macro"]   = "Macro",

    ["@include"]      = "Include",
    ["@include.rust"] = "Keyword",
    ["@attribute"]    = "Keyword",

    ["@punctuation"]              = { fg = c.fg0 },
    ["@punctuation.bracket"]      = { fg = c.fg2 },
    ["@punctuation.special"]      = { fg = c.fg1 },
    ["@punctuation.special.rust"] = { fg = c.gre0 },

    ["@text.diff.add"]    = "DiffAdd",
    ["@text.diff.change"] = "DiffChange",
    ["@text.diff.delete"] = "DiffDelete",

    ["@diff.plus"]  = "DiffAdd",
    ["@diff.delta"] = "DiffChange",
    ["@diff.minus"] = "DiffDelete",

    -- ["@markup"]                     = "@none",
    -- ["@markup.emphasis"]            = { italic = true },
    -- ["@markup.environment"]         = "Macro",
    -- ["@markup.environment.name"]    = "Type",
    -- ["@markup.heading"]             = "Title",
    -- ["@markup.italic"]              = { italic = true },
    -- ["@markup.link"]                = { fg = c.teal },
    -- ["@markup.link.label"]          = "SpecialChar",
    -- ["@markup.link.label.symbol"]   = "Identifier",
    -- ["@markup.link.url"]            = "Underlined",
    -- ["@markup.list"]                = { fg = c.blue5 }, -- For special punctutation that does not fall in the categories before.
    -- ["@markup.list.checked"]        = { fg = c.green1 }, -- For brackets and parens.
    -- ["@markup.list.markdown"]       = { fg = c.orange, bold = true },
    -- ["@markup.list.unchecked"]      = { fg = c.blue }, -- For brackets and parens.
    -- ["@markup.math"]                = "Special",
    -- ["@markup.raw"]                 = "String",
    -- ["@markup.raw.markdown_inline"] = { bg = c.terminal_black, fg = c.blue },
    -- ["@markup.strikethrough"]       = { strikethrough = true },
    -- ["@markup.strong"]              = { bold = true },
    -- ["@markup.underline"]           = { underline = true },
  }
end

return M
