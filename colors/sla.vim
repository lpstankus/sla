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

let s:bg0  = '#00161D'
let s:bg1  = '#052029'
let s:bg2  = '#122B34'
let s:bg3  = '#031B23'
let s:fg0  = '#D1B896'
let s:fg1  = '#F1EAE0'
let s:fg2  = '#E4D5C2'
let s:gra0 = '#667377'
let s:gra1 = '#33454A'
let s:blu0 = '#7AA6FF'
let s:gre0 = '#8CDE94'
let s:gre1 = '#2EC09C'
let s:gre2 = '#7AD0C6'
let s:red0 = '#C03B3B'
let s:red1 = '#BF616A'
let s:red2 = '#D0675B'

let s:err = '#AA0000'
let s:war = '#FFCC66'
let s:suc = '#A0DD80'
let s:hin = '#FFF0D0'
let s:id  = '#BDD3FF'

let s:add = '#B8CC52'
let s:mod = '#59C2FF'
let s:rem = '#FF3333'

" Color hi groups
call s:hi('fg0',  s:fg0 )
call s:hi('fg1',  s:fg1 )
call s:hi('fg2',  s:fg2 )
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

call s:hi('Normal',    s:fg0, s:bg0)
call s:hi('Emph',      s:fg0, 'none', 'italic')
call s:hi('Underline', s:fg0, 'none', 'underline')
call s:hi('Strike',    s:fg0, 'none', 'strikethrough')

call s:hi('Cursor',       s:bg0,  s:gre1)
call s:hi('CursorLine',   'none', s:bg1)
call s:hi('CursorColumn', 'none', s:bg1)
call s:hi('ColorColumn',  'none', s:bg3)

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

call s:hi('WinSeparator', s:fg0, s:bg0)
call s:hi('StatusLine',   s:bg0, s:fg0)
call s:hi('StatusLineNC', s:fg0, s:bg1)
call s:hi('TabLine',      s:fg0, s:bg1)
call s:hi('TabLineSel',   s:fg0, s:bg0)
call s:hi('TabLineFill',  s:fg0, s:bg2)

call s:hi('SpellBad',   s:red0, 'none', 'underline')
call s:hi('SpellCap',   s:fg1,  'none', 'underline')
call s:hi('SpellRare',  s:red1, 'none', 'underline')
call s:hi('SpellLocal', s:gre2, 'none', 'underline')

call s:hi('Folded',     s:gra0, s:bg3)
call s:hi('FoldColumn', s:gra0, s:bg3)
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
  let g:terminal_color_0  = '#131415'
  let g:terminal_color_8  = '#131415'

  let g:terminal_color_1  = '#C03B3B'
  let g:terminal_color_9  = '#C03B3B'

  let g:terminal_color_2  = '#2EC09C'
  let g:terminal_color_10 = '#2EC09C'

  let g:terminal_color_3  = '#E7C547'
  let g:terminal_color_11 = '#E7C547'

  let g:terminal_color_4  = '#7AA6FF'
  let g:terminal_color_12 = '#7AA6FF'

  let g:terminal_color_5  = '#D4BFFF'
  let g:terminal_color_13 = '#D4BFFF'

  let g:terminal_color_6  = '#7AD0C6'
  let g:terminal_color_14 = '#7AD0C6'

  let g:terminal_color_7  = '#E8DCCB'
  let g:terminal_color_15 = '#E8DCCB'
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

hi! link Ignore gra0

call s:hi('Underlined', s:gre2, 'none', 'underline')
call s:hi('Error', s:bg0, s:err)
call s:hi('Todo', s:gre0, 'none', 'bold')

call s:hi('DiagnosticError', s:err, 'none')
call s:hi('DiagnosticWarn',  s:war, 'none')
call s:hi('DiagnosticInfo',  s:suc, 'none')
call s:hi('DiagnosticHint',  s:hin, 'none')
call s:hi('Identifier',      s:id,  'none')

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
" Rust: {{{

hi! link rustMacro         fg1
hi! link rustSigil         fg1
hi! link rustModPath       red0
hi! link rustStorage       red0
hi! link rustMacroVariable red2
hi! link rustModSep        red2
hi! link rustSelf          red2

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
hi! link vimUserFunc     fg1
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

hi! link @none                  na
hi! link @text                  fg0
hi! link @text.emphasis         Emph
hi! link @text.strike           Strike
hi! link @text.underline        Underline
hi! link @text.diff.add         DiffAdd
hi! link @text.diff.delete      DiffDelete

hi! link @variable              fg0
hi! link @variable.builtin      fg1
hi! link @variable.builtin.rust red2

hi! link @type                  red1
hi! link @type.wgsl             red1
hi! link @type.qualifier        red0

hi! link @exception             red0
hi! link @namespace             red0
hi! link @label                 red2

hi! link @keyword               red0
hi! link @keyword.operator      fg1

hi! link @operator              fg1
hi! link @conditional.ternary   fg1

hi! link @field                 fg0
hi! link @property              fg0
hi! link @parameter             fg0

hi! link @function              fg1
" hi! link @function.builtin      gre0

hi! link @storageclass          red0
hi! link @storageclass.zig      red1
hi! link @storageclass.lifetime red2

hi! link @constant              gre2
hi! link @constant.builtin      gre2

hi! link @include               gre0
hi! link @include.rust          red0
hi! link @attribute             red0

hi! link @punctuation              fg0
hi! link @punctuation.bracket      fg2
hi! link @punctuation.special      fg1
hi! link @punctuation.special.rust gre0

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
