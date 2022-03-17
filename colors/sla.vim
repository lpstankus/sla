" Initialization: {{{

set background=dark
hi clear
if exists('syntax_on') | syntax reset | endif
if !(has('termguicolors')) | finish | endif
let g:colors_name='sla'

function! s:hi(group, fg, ...)
  " Arguments: group, guifg, guibg, gui
  if a:0 >= 1 | let bg  = a:1 | else | let bg  = "none" | endif
  if a:0 >= 2 | let gui = a:2 | else | let gui = "none" | endif
  exec "hi! " . a:group . " guifg=" . a:fg . " guibg=" . bg . " gui=" . gui
endfunction

" }}}
" Memoization And Variables: {{{

let s:bg0  = '#00161d'
let s:bg1  = '#052029'
let s:bg2  = '#122b34'
let s:bg3  = '#031b23'
let s:fg0  = '#d1b896'
let s:fg1  = '#e8dccb'
let s:gra0 = '#667377'
let s:gra1 = '#33454a'
let s:blu0 = '#7aa6ff'
let s:gre0 = '#8cde94'
let s:gre1 = '#2ec09c'
let s:gre2 = '#7ad0c6'
let s:red0 = '#c03b3b'
let s:red1 = '#bf616a'
let s:red2 = '#d0675b'

let s:err = '#aa0000'
let s:war = '#ffcc66'
let s:suc = '#99ff99'

let s:add = '#b8cc52'
let s:mod = '#59c2ff'
let s:rem = '#ff3333'

" Color hi groups
call s:hi('fg0',  s:fg0 )
call s:hi('fg1',  s:fg1 )
call s:hi('gra0', s:gra0)
call s:hi('gra1', s:gra1)
call s:hi('blu0', s:blu0)
call s:hi('gre0', s:gre0)
call s:hi('gre1', s:gre1)
call s:hi('gre2', s:gre2)
call s:hi('red0', s:red0)
call s:hi('red1', s:red1)
call s:hi('red2', s:red2)

" FIXME: Properly color groups with link to na
call s:hi('na', '#ff00ff')

" }}}
" Vanilla Hi Groups: {{{

" User Interface: {{{

call s:hi('Normal', s:fg0, s:bg0)

call s:hi('Cursor',       s:bg0,  s:gre1)
call s:hi('CursorLine',   'none', s:bg1)
call s:hi('CursorColumn', 'none', s:bg1)
call s:hi('ColorColumn',  'none', s:bg1)

call s:hi('LineNr',       s:gra1,    s:bg0)
call s:hi('CursorLineNr', '#ffffff', s:bg1, 'bold')

call s:hi('Search',    s:bg0, s:fg1 )
call s:hi('IncSearch', s:bg0, s:red1)

call s:hi('Visual',    'none', s:bg2)
call s:hi('VisualNOS', 'none', s:bg2)

call s:hi('WildMenu',   s:fg0,  s:bg1)
call s:hi('Pmenu',      s:fg0,  s:bg1)
call s:hi('PmenuSel',   s:bg1,  s:fg0)
call s:hi('PmenuSbar',  'none', s:bg2)
call s:hi('PmenuThumb', 'none', s:fg0)

call s:hi('VertSplit',    s:bg0, s:bg1)
call s:hi('StatusLine',   s:bg0, s:fg0)
call s:hi('StatusLineNC', s:fg0, s:bg1)
call s:hi('TabLine',      s:fg0, s:bg1)
call s:hi('TabLineSel',   s:fg0, s:bg0)
call s:hi('TabLineFill',  s:fg0, s:bg2)

call s:hi('SpellBad',   s:red0, 'none', 'underline')
call s:hi('SpellCap',   s:fg1,  'none', 'underline')
call s:hi('SpellRare',  s:red1, 'none', 'underline')
call s:hi('SpellLocal', s:gre2, 'none', 'underline')

call s:hi('Folded',     s:gra0, s:bg0)
call s:hi('FoldColumn', s:gra0, s:bg0)
call s:hi('SignColumn', s:fg1,  s:bg1)

call s:hi('MatchParen',   s:bg0, s:fg1, 'bold')
call s:hi('QuickFixLine', s:bg0, s:fg0)

call s:hi('DiffAdd',    s:add)
call s:hi('DiffChange', s:mod)
call s:hi('DiffText',   s:mod)
call s:hi('DiffDelete', s:rem)

hi! link Question   fg0
hi! link ModeMsg    fg0
hi! link MoreMsg    fg0
hi! link ErrorMsg   fg1
hi! link WarningMsg fg1

hi! link Title       red0
hi! link Directory   red0
hi! link Conceal     gra1
hi! link NonText     gra1
hi! link SpecialKey  gra1
hi! link Whitespace  gra1
hi! link EndOfBuffer gra1

call s:hi('healthError',   s:bg0, s:err)
call s:hi('healthWarning', s:bg0, s:war)
call s:hi('healthSuccess', s:bg0, s:suc)

if has('nvim')
  let g:terminal_color_0 = s:gra1
  let g:terminal_color_8 = s:gra0

  let g:terminal_color_1 = s:red0
  let g:terminal_color_9 = s:red1

  let g:terminal_color_2 = s:gre1
  let g:terminal_color_10 = s:gre0

  " let g:terminal_color_3 = s:gb.neutral_yellow[0]
  " let g:terminal_color_11 = s:yellow[0]

  " let g:terminal_color_4 = s:gb.neutral_blue[0]
  " let g:terminal_color_12 = s:blue[0]

  " let g:terminal_color_5 = s:gb.neutral_purple[0]
  " let g:terminal_color_13 = s:purple[0]

  " let g:terminal_color_6 = s:gb.neutral_aqua[0]
  " let g:terminal_color_14 = s:aqua[0]

  let g:terminal_color_7 = s:fg0
  let g:terminal_color_15 = s:fg1
endif

" }}}
" Text And Code: {{{

hi! link Comment gra0

hi! link Constant  gre2
hi! link String    gre1
hi! link Character gre1
hi! link Number    gre2
hi! link Boolean   gre2
hi! link Float     gre2

hi! link Identifier red1
hi! link Function   fg1

hi! link Statement   red0
hi! link Conditional red0
hi! link Repeat      red0
hi! link Label       red0
hi! link Operator    fg1
hi! link Keyword     red0
hi! link Exception   red0

hi! link PreProc   gre0
hi! link Include   gre0
hi! link Macro     gre0
hi! link PreCondit gre0

hi! link Type         red1
hi! link StorageClass red0
hi! link Structure    red0
hi! link Typedef      red0

hi! link Special        fg1
hi! link SpecialChar    gre0
hi! link Tag            red0
hi! link Delimiter      fg1
hi! link SpecialComment red0
hi! link Debug          red1

call s:hi('Underlined', s:gre2, 'none', 'underline')

hi! link Ignore gra0

call s:hi('Error', s:fg1, s:err)

call s:hi('Todo', s:gre0, 'none', 'bold')

" }}}

" }}}
" Filetype Hi Groups: {{{

" Diff: {{{

hi! link DiffLine      gre0
hi! link DiffSubname   gre1
hi! link DiffIndexLine gre2
hi! link DiffFile      red2
hi! link DiffNewFile   red2
call s:hi('DiffAdded',   s:add)
call s:hi('DiffRemoved', s:rem)

" }}}
" Eruby: {{{

hi! link erubyDelimiter fg1

" }}}
" HTML: {{{

hi! link htmlArg            fg1
hi! link htmlEndTag         fg1
hi! link htmlTag            fg1
hi! link htmlH1             red0
hi! link htmlH2             red0
hi! link htmlH3             red0
hi! link htmlH4             red0
hi! link htmlH5             red0
hi! link htmlH6             red0
hi! link htmlTagN           red0
hi! link htmlTagName        red0
hi! link htmlTitle          red0
hi! link htmlSpecialChar    red1
hi! link htmlSpecialTagName red1
call s:hi('htmlBold',   s:gre2, 'none', 'bold'     )
call s:hi('htmlItalic', s:gre2, 'none', 'italic'   )
call s:hi('htmlLink',   s:gre2, 'none', 'underline')

" }}}
" Lua: {{{

hi! link luaFunc  fg1
hi! link luaTable fg1

" }}}
" Markdown: {{{

hi markdownH1                   guifg=#5e81ac guibg=NONE gui=NONE      cterm=NONE
hi markdownH2                   guifg=#5e81ac guibg=NONE gui=NONE      cterm=NONE
hi markdownH3                   guifg=#5e81ac guibg=NONE gui=NONE      cterm=NONE
hi markdownH4                   guifg=#5e81ac guibg=NONE gui=NONE      cterm=NONE
hi markdownH5                   guifg=#5e81ac guibg=NONE gui=NONE      cterm=NONE
hi markdownH6                   guifg=#5e81ac guibg=NONE gui=NONE      cterm=NONE
hi markdownId                   guifg=#b48ead guibg=NONE gui=NONE      cterm=NONE
hi markdownUrl                  guifg=#8fbcbb guibg=NONE gui=underline cterm=underline
hi markdownRule                 guifg=#5c6370 guibg=NONE gui=NONE      cterm=NONE
hi markdownBold                 guifg=#88c0d0 guibg=NONE gui=bold      cterm=bold
hi markdownItalic               guifg=#b48ead guibg=NONE gui=italic    cterm=italic
hi markdownLinkText             guifg=#5e81ac guibg=NONE gui=NONE      cterm=NONE
hi markdownListMarker           guifg=#bf616a guibg=NONE gui=NONE      cterm=NONE
hi markdownHeadingRule          guifg=#5c6370 guibg=NONE gui=NONE      cterm=NONE
hi markdownOrdenord11ListMarker guifg=#bf616a guibg=NONE gui=NONE      cterm=NONE
hi markdownIdDelimiter          guifg=#b48ead guibg=NONE gui=NONE      cterm=NONE
hi markdownCodeDelimiter        guifg=#a3be8c guibg=NONE gui=NONE      cterm=NONE
hi markdownLinkDelimiter        guifg=#b48ead guibg=NONE gui=NONE      cterm=NONE
hi markdownHeadingDelimiter     guifg=#bf616a guibg=NONE gui=NONE      cterm=NONE
hi markdownCode                 guifg=#a3be8c guibg=NONE gui=NONE      cterm=NONE
hi markdownCodeBlock            guifg=#a3be8c guibg=NONE gui=NONE      cterm=NONE
hi markdownBlockquote           guifg=#5c6370 guibg=NONE gui=NONE      cterm=NONE
hi markdownIdDeclaration        guifg=#5e81ac guibg=NONE gui=NONE      cterm=NONE

" }}}
" Odin: {{{

hi! link odinImport  gre0
hi! link odinForeign gre0

" }}}
" Python: {{{

hi! link pythonBuiltin gre2

" }}}
" Ruby: {{{

hi! link rubyClassName        fg1
hi! link rubyModuleName       fg1
hi! link rubyInstanceVariable gre0
hi! link rubyConstant         gre2
hi! link rubyDefine           red0
hi! link rubyMacro            red0
hi! link rubyModule           red0
hi! link rubyPseudoVariable   red1
hi! link rubySymbol           red1
call s:hi('rubyClassVariable', s:gre0, 'none', 'bold')

" }}}
" Typescript: {{{

hi! link typescriptCall                  fg0
hi! link typescriptEndColons             fg0
hi! link typescriptArrowFunc             fg1
hi! link typescriptAssign                fg1
hi! link typescriptBinaryOp              fg1
hi! link typescriptBraces                fg1
hi! link typescriptClassName             fg1
hi! link typescriptDOMDocMethod          fg1
hi! link typescriptObjectStaticMethod    fg1
hi! link typescriptParens                fg1
hi! link typescriptExport                gre0
hi! link typescriptAccessibilityModifier red0
hi! link typescriptClassKeyword          red0
hi! link typescriptVariable              red0
hi! link typescriptIdentifier            red1
hi! link typescriptObjectLabel           red1

" }}}
" Vim: {{{

hi! link vimContinue     fg0
hi! link vimFuncVar      fg0
hi! link vimGroup        fg0
hi! link vimHiGroup      fg0
hi! link vimOption       fg0
hi! link vimSynType      fg0
hi! link vimVar          fg0
hi! link vimOperParen    fg1
hi! link vimParenSep     fg1
hi! link vimSep          fg1
hi! link vimSet          fg1
hi! link vimSetEqual     fg1
hi! link vimSetSep       fg1
hi! link vimCommentTitle red0
call s:hi('vimEmbedError', s:fg0, 'none', 'italic')

" }}}
" Zig: {{{

hi! link zigMacro     fg1
hi! link zigBuiltinFn gre0
hi! link zigExecution red0
hi! link zigKeyword   red0
hi! link zigVarDecl   red0
hi! link zigMacro     red2
hi! link zigPreProc   red2

" }}}

" }}}
" Tree Sitter: {{{

hi! link TSText    fg0
hi! link TSError   Error
hi! link TSComment Comment

hi! link TSConstant     Constant
hi! link TSConstMacro   Constant
hi! link TSConstBuiltin Constant

hi! link TSString       String
hi! link TSStringRegex  String
hi! link TSStringEscape Character

hi! link TSCharacter Character
hi! link TSNumber    Number
hi! link TSBoolean   Boolean
hi! link TSFloat     Float

hi! link TSConditional Conditional
hi! link TSRepeat      Repeat
hi! link TSLabel       Label
hi! link TSOperator    Operator

hi! link TSMethod      Function
hi! link TSFunction    Function
hi! link TSFuncMacro   Function
hi! link TSFuncBuiltin Function
hi! link TSConstructor Function

hi! link TSField              fg0
hi! link TSProperty           fg0
hi! link TSParameter          fg0
hi! link TSParameterReference fg0
hi! link TSVariable           fg0
hi! link TSVariableBuiltin    red2

hi! link TSType            Type
hi! link TSTypeBuiltin     Type
hi! link TSTag             Keyword
hi! link TSTagDelimiter    Delimiter
hi! link TSKeyword         Keyword
hi! link TSKeywordFunction Keyword

hi! link TSInclude   Include
hi! link TSException Exception
hi! link TSNamespace Keyword

hi! link TSPunctBracket   fg0
hi! link TSPunctSpecial   Delimeter
hi! link TSPunctDelimiter Delimeter

" }}}
" Plugins Hi Groups: {{{

" GitCommit
" hi gitcommitSelectedFile  guifg=#a3be8c guibg=NONE gui=NONE cterm=NONE
" hi gitcommitDiscardedFile guifg=#bf616a guibg=NONE gui=NONE cterm=NONE
" hi gitcommitUntrackedFile guifg=#bf616a guibg=NONE gui=NONE cterm=NONE

" NeoVim LSP
" hi! link LspDiagnosticsDefaultError         lsp_err
" hi! link LspDiagnosticsUnderlineError       lsp_err
" hi! link LspDiagnosticsHint                 lsp_hin
" hi! link LspDiagnosticsUnderlineHint        lsp_hin
" hi! link LspDiagnosticsInformation          lsp_inf
" hi! link LspDiagnosticsUnderlineInformation lsp_inf
" hi! link LSPDiagnosticsWarning              lsp_war
" hi! link LspDiagnosticsUnderlineWarning     lsp_war

" Signify
call s:hi('SignifySignAdd',             s:add, s:bg1)
call s:hi('SignifySignChange',          s:mod, s:bg1)
call s:hi('SignifySignDelete',          s:rem, s:bg1)
call s:hi('SignifySignDeleteFirstLine', s:rem, s:bg1)
call s:hi('SignifyLineAdd',             s:add)
call s:hi('SignifyLineChange',          s:mod)
call s:hi('SignifyLineDelete',          s:rem)
call s:hi('SignifyLineDeleteFirstLine', s:rem)

" GitGutter
call s:hi('GitGutterAddLine',            s:add, s:bg1)
call s:hi('GitGutterChangeLine',         s:mod, s:bg1)
call s:hi('GitGutterDeleteLine',         s:rem, s:bg1)
call s:hi('GitGutterChangeDeleteLine',   s:rem, s:bg1)
call s:hi('GitGutterAddLineNr',          s:add, s:bg0)
call s:hi('GitGutterChangeLineNr',       s:mod, s:bg0)
call s:hi('GitGutterDeleteLineNr',       s:rem, s:bg0)
call s:hi('GitGutterChangeDeleteLineNr', s:rem, s:bg0)

" }}}
