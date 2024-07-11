local M = {}

function M.get(c)
  return {
    Normal    = { fg = c.fg0, bg = c.bg0 },
    NormalNC  = { fg = c.fg0, bg = c.bg0 },
    Bold      = { fg = c.fg, bold = true },
    Italic    = { fg = c.fg0, italic = true },
    Emph      = "Italic",
    Underline = { fg = c.fg0, underline = true },
    Strike    = { fg = c.fg0, strikethrough = true },
    Comment   = { fg = c.gra0 },
    Conceal   = { fg = c.gra1 },

    Cursor       = { fg = c.bg0, bg = c.fg1 },
    lCursor      = { fg = c.bg0, bg = c.fg1 },
    CursorIM     = { fg = c.bg0, bg = c.fg1 },
    CursorColumn = { bg = c.bg1 },
    CursorLine   = { bg = c.bg1 },
    ColorColumn  = { bg = c.bg3 },

    LineNr       = { fg = c.gra1, bg = c.bg0 },
    CursorLineNr = { fg = "#ffffff", bg = c.bg1, bold = true },
    LineNrAbove  = "LineNr",
    LineNrBelow  = "LineNr",

    SignColumn   = { fg = c.fg1, bg = c.bg1 },
    Folded       = { fg = c.gra0, bg = c.bg3 },
    FoldColumn   = { fg = c.gra0, bg = c.bg3 },

    NormalSB     = "Normal",
    SignColumnSB = "SignColumn",

    StatusLine   = { fg = c.bg0, bg = c.fg0 },
    StatusLineNC = { fg = c.fg0, bg = c.bg1 },
    WinSeparator = { fg = c.fg0, bg = c.bg0 },
    VertSplit    = "WinSeparator",
    TabLine      = { fg = c.fg0, bg = c.bg1 },
    TabLineSel   = { fg = c.fg0, bg = c.bg0 },
    TabLineFill  = { fg = c.fg0, bg = c.bg2 },
    WinBar       = "StatusLine",
    WinBarNC     = "StatusLineNC",

    NormalFloat = { fg = c.fg0, bg = c.bg0 },
    FloatBorder = { fg = c.fg0, bg = c.bg0 },
    FloatTitle  = { fg = c.fg0, bg = c.bg0 },

    Title      = { fg = c.red0 },
    Directory  = { fg = c.red0 },

    Visual     = { bg = c.bg2 },
    VisualNOS  = { bg = c.bg2 },

    Question   = { fg = c.fg0 },
    ModeMsg    = { fg = c.fg0 },
    MoreMsg    = { fg = c.fg0 },
    ErrorMsg   = { fg = c.fg1 },
    WarningMsg = { fg = c.fg1 },
    MsgArea    = { fg = c.fg0, bg = c.bg0 },

    Search     = { fg = c.bg0, bg = c.fg1 },
    IncSearch  = { fg = c.bg0, bg = c.red1 },
    CurSearch  = "IncSearch",
    Substitute = "IncSearch",

    WildMenu   = { fg = c.fg0,  bg = c.bg1 },
    Pmenu      = { fg = c.fg0,  bg = c.bg1 },
    PmenuSel   = { fg = c.bg1,  bg = c.fg0 },
    PmenuSbar  = { bg = c.bg2 },
    PmenuThumb = { bg = c.fg0 },

    SpellBad   = { fg = c.red0, underline = true },
    SpellCap   = { fg = c.fg1, underline = true },
    SpellRare  = { fg = c.red1, underline = true },
    SpellLocal = { fg = c.gre2, underline = true },

    MatchParen   = { fg = c.bg0, bg = c.fg1, bold = true },
    QuickFixLine = { fg = c.bg0, bg = c.fg0 },

    NonText     = { fg = c.gra1 },
    SpecialKey  = { fg = c.gra1 },
    Whitespace  = { fg = c.gra1 },
    EndOfBuffer = { fg = c.gra1 },

    DiffAdd    = { fg = c.add },
    DiffChange = { fg = c.mod },
    DiffText   = { fg = c.mod },
    DiffDelete = { fg = c.rem },

    healthError   = { fg = c.bg0, bg = c.err },
    healthWarning = { fg = c.bg0, bg = c.war },
    healthSuccess = { fg = c.bg0, bg = c.suc },


    Constant  = { fg = c.gre2 },
    Number    = { fg = c.gre2 },
    Boolean   = { fg = c.gre2 },
    Float     = { fg = c.gre2 },
    String    = { fg = c.gre1 },
    Character = { fg = c.gre0 },

    Identifier = { fg = c.fg0 },
    Function   = { fg = c.fg1 },

    Operator    = { fg = c.fg1 },
    Statement   = { fg = c.red0 },
    Conditional = { fg = c.red0 },
    Repeat      = { fg = c.red0 },
    Label       = { fg = c.red2 },
    Keyword     = { fg = c.red0 },
    Exception   = { fg = c.red0 },

    PreProc   = { fg = c.gre0 },
    Include   = { fg = c.gre0 },
    Macro     = { fg = c.gre0 },
    PreCondit = { fg = c.gre0 },

    Type         = { fg = c.red1 },
    StorageClass = { fg = c.red0 },
    Structure    = { fg = c.red0 },
    Typedef      = { fg = c.red0 },

    Special        = { fg = c.fg1 },
    Delimiter      = { fg = c.fg1 },
    SpecialChar    = { fg = c.gre0 },
    Tag            = { fg = c.red0 },
    SpecialComment = { fg = c.red0 },

    Debug           = { fg = c.red0, bold = true },
    DebugBreakpoint = "Debug",
    DebugPc         = "Debug",

    Ignore = { fg = c.gra0 },

    Underlined = { fg = c.gre2, underline = true },
    Error      = { fg = c.bg0, bg = c.err },
    Todo       = { fg = c.gre0,  bold = true },

    LspReferenceText            = { fg = c.fg0 },
    LspReferenceRead            = { fg = c.fg2 },
    LspReferenceWrite           = { fg = c.fg2 },
    LspSignatureActiveParameter = { fg = c.fg1 },
    LspCodeLens                 = { fg = c.gra1 },
    LspInlayHint                = { fg = c.gra1 },
    LspInfoBorder               = "FloatBorder",

    DiagnosticError            = { fg = c.err },
    DiagnosticWarn             = { fg = c.war },
    DiagnosticOk               = { fg = c.oka },
    DiagnosticHint             = { fg = c.hin },
    DiagnosticInfo             = { fg = c.hin },
    DiagnosticUnnecessary      = { fg = c.hin },
    DiagnosticVirtualTextError = "DiagnosticError",
    DiagnosticVirtualTextWarn  = "DiagnosticWarn",
    DiagnosticVirtualTextInfo  = "DiagnosticInfo",
    DiagnosticVirtualTextHint  = "DiagnosticHint",
    DiagnosticUnderlineError   = { sp = c.err, undercurl = true },
    DiagnosticUnderlineWarn    = { sp = c.war, undercurl = true },
    DiagnosticUnderlineOk      = { sp = c.oka, undercurl = true },
    DiagnosticUnderlineInfo    = { sp = c.hin, undercurl = true },
    DiagnosticUnderlineHint    = { sp = c.hin, undercurl = true },

    -- diff (not needed anymore?)
    diffAdded     = { fg = c.add },
    diffRemoved   = { fg = c.rem },
    diffChanged   = { fg = c.mod },
    diffOldFile   = { fg = c.red1 },
    diffNewFile   = { fg = c.red2 },
    diffFile      = { fg = c.red2 },
    diffLine      = { fg = c.gre0 },
    diffIndexLine = { fg = c.gre2 },
  }
end

return M
