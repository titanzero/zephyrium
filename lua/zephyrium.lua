-- Theme: zephyrium
-- Author: titanzero
-- License: MIT
-- Source: https://github.com/titanzero/zephyrium
-- Based on: https://github.com/glepnir/zephyr-nvim
local zephyrium = {
  base0 = '#1B2229';
  base1 = '#1c1f24';
  base2 = '#202328';
  base3 = '#23272e';
  base4 = '#3f444a';
  base5 = '#5B6268';
  base6 = '#73797e';
  base7 = '#9ca0a4';
  base8 = '#b1b1b1';

  bg = '#282a36';
  bg1 = '#504945';
  bg_popup = '#3E4556';
  bg_highlight  = '#2E323C';
  bg_visual = '#b3deef';

  fg = '#bbc2cf';
  fg_alt  = '#5B6268';

  red = '#e95678';

  redwine = '#d16d9e';
  orange = '#D98E48';
  yellow = '#f0c674';

  light_green = '#abcf84';
  green = '#afd700';
  dark_green = '#98be65';

  cyan = '#36d0e0';
  blue = '#61afef';
  violet = '#b294bb';
  magenta = '#c678dd', 
  teal = '#1abc9c';
  grey = '#928374';
  brown = '#c78665';
  black = '#000000';

  bracket = '#80A0C2';
  none = 'NONE';
}

function zephyrium.terminal_color()
  vim.g.terminal_color_0 = zephyrium.bg
  vim.g.terminal_color_1 = zephyrium.red
  vim.g.terminal_color_2 = zephyrium.green
  vim.g.terminal_color_3 = zephyrium.yellow
  vim.g.terminal_color_4 = zephyrium.blue
  vim.g.terminal_color_5 = zephyrium.violet
  vim.g.terminal_color_6 = zephyrium.cyan
  vim.g.terminal_color_7 = zephyrium.bg1
  vim.g.terminal_color_8 = zephyrium.brown
  vim.g.terminal_color_9 = zephyrium.red
  vim.g.terminal_color_10 = zephyrium.green
  vim.g.terminal_color_11 = zephyrium.yellow
  vim.g.terminal_color_12 = zephyrium.blue
  vim.g.terminal_color_13 = zephyrium.violet
  vim.g.terminal_color_14 = zephyrium.cyan
  vim.g.terminal_color_15 = zephyrium.fg
end

function zephyrium.highlight(group,  color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command(
      'highlight ' .. group ..
      ' ' .. style ..
      ' ' .. fg ..
      ' ' .. bg ..
      ' ' .. sp
    )
end

function zephyrium.load_syntax()
  local syntax = {
    Normal = { fg=zephyrium.fg, bg=zephyrium.bg };
    Terminal = { fg=zephyrium.fg, bg=zephyrium.bg };
    SignColumn = { fg=zephyrium.fg, bg=zephyrium.bg };
    FoldColumn = { fg=zephyrium.fg_alt, bg=zephyrium.black };
    VertSplit = { fg=zephyrium.black, bg=zephyrium.bg };
    Folded = { fg=zephyrium.grey, bg=zephyrium.bg_highlight };
    EndOfBuffer = { fg=zephyrium.bg, bg=zephyrium.none };
    IncSearch = { fg=zephyrium.bg1, bg=zephyrium.orange, style=zephyrium.none };
    Search = { fg=zephyrium.bg, bg=zephyrium.orange };
    ColorColumn = { fg=zephyrium.none, bg=zephyrium.bg_highlight };
    Conceal = { fg=zephyrium.grey, bg=zephyrium.none };
    Cursor = { fg=zephyrium.none, bg=zephyrium.none, style='reverse' };
    vCursor = { fg=zephyrium.none, bg=zephyrium.none, style='reverse' };
    iCursor = { fg=zephyrium.none, bg=zephyrium.none, style='reverse' };
    lCursor = { fg=zephyrium.none, bg=zephyrium.none, style='reverse' };
    CursorIM = { fg=zephyrium.none, bg=zephyrium.none, style='reverse' };
    CursorColumn = { fg=zephyrium.none, bg=zephyrium.bg_highlight };
    CursorLine = { fg=zephyrium.none, bg=zephyrium.bg_highlight };
    LineNr = { fg=zephyrium.base4 };
    qfLineNr = { fg=zephyrium.cyan };
    CursorLineNr = { fg=zephyrium.blue };
    DiffAdd = { fg=zephyrium.black, bg=zephyrium.dark_green };
    DiffChange = { fg=zephyrium.black, bg=zephyrium.yellow };
    DiffDelete = { fg=zephyrium.black, bg=zephyrium.red };
    DiffText = { fg=zephyrium.black, bg=zephyrium.fg };
    Directory = { fg=zephyrium.blue, bg=zephyrium.none };
    ErrorMsg = { fg=zephyrium.red, bg=zephyrium.none, style='bold' };
    WarningMsg = { fg=zephyrium.yellow, bg=zephyrium.none, style='bold' };
    ModeMsg = { fg=zephyrium.fg, bg=zephyrium.none, style='bold' };
    MatchParen = { fg=zephyrium.red, bg=zephyrium.none };
    NonText = { fg=zephyrium.bg1 };
    Whitespace = { fg=zephyrium.base4 };
    SpecialKey = { fg=zephyrium.bg1 };
    Pmenu = { fg=zephyrium.fg, bg=zephyrium.bg_popup };
    PmenuSel = { fg=zephyrium.base0, bg=zephyrium.blue };
    PmenuSelBold = { fg=zephyrium.base0, g=zephyrium.blue };
    PmenuSbar = { fg=zephyrium.none, bg=zephyrium.base4 };
    PmenuThumb = { fg=zephyrium.violet, bg=zephyrium.light_green };
    WildMenu = { fg=zephyrium.bg1, bg=zephyrium.green };
    Question = { fg=zephyrium.yellow };
    NormalFloat = { fg=zephyrium.base8, bg=zephyrium.bg_highlight };
    Tabline = { fg=zephyrium.base6, bg=zephyrium.base2 };
    TabLineFill = { style=zephyrium.none };
    TabLineSel = { fg=zephyrium.fg, bg=zephyrium.blue };
    StatusLine = { fg=zephyrium.base8, bg=zephyrium.base2, style=zephyrium.none };
    StatusLineNC = { fg=zephyrium.grey, bg=zephyrium.base2, style=zephyrium.none };
    SpellBad = { fg=zephyrium.red, bg=zephyrium.none, style='undercurl' };
    SpellCap = { fg=zephyrium.blue, bg=zephyrium.none, style='undercurl' };
    SpellLocal = { fg=zephyrium.cyan, bg=zephyrium.none, style='undercurl' };
    SpellRare = { fg=zephyrium.violet, bg=zephyrium.none, style = 'undercurl' };
    Visual = { fg=zephyrium.black, bg=zephyrium.bg_visual };
    VisualNOS = { fg=zephyrium.black, bg=zephyrium.bg_visual };
    QuickFixLine = { fg=zephyrium.violet, style='bold' };
    Debug = { fg=zephyrium.orange };
    debugBreakpoint = { fg=zephyrium.bg, bg=zephyrium.red };

    Boolean = { fg=zephyrium.orange };
    Number = { fg=zephyrium.brown };
    Float = { fg=zephyrium.brown };
    PreProc = { fg=zephyrium.violet };
    PreCondit = { fg=zephyrium.violet };
    Include = { fg=zephyrium.violet };
    Define = { fg=zephyrium.violet };
    Conditional = { fg=zephyrium.magenta };
    Repeat = { fg=zephyrium.magenta };
    Keyword = { fg=zephyrium.green };
    Typedef = { fg=zephyrium.red };
    Exception = { fg=zephyrium.red };
    Statement = { fg=zephyrium.red };
    Error = { fg=zephyrium.red };
    StorageClass = { fg=zephyrium.orange };
    Tag = { fg=zephyrium.orange };
    Label = { fg=zephyrium.orange };
    Structure = { fg=zephyrium.orange };
    Operator = { fg=zephyrium.redwine };
    Title = { fg=zephyrium.orange, style='bold' };
    Special = { fg=zephyrium.yellow };
    SpecialChar = { fg=zephyrium.yellow };
    Type = { fg=zephyrium.teal };
    Function = { fg=zephyrium.yellow };
    String = { fg=zephyrium.light_green };
    Character = { fg=zephyrium.green };
    Constant = { fg=zephyrium.cyan };
    Macro = { fg=zephyrium.cyan };
    Identifier = { fg=zephyrium.blue };

    Comment = { fg=zephyrium.base6 };
    SpecialComment = { fg=zephyrium.grey };
    Todo = { fg=zephyrium.violet };
    Delimiter = { fg=zephyrium.fg };
    Ignore = { fg=zephyrium.grey };
    Underlined = { fg=zephyrium.none, style='underline' };

    DashboardShortCut = { fg=zephyrium.magenta };
    DashboardHeader = { fg=zephyrium.orange };
    DashboardCenter = { fg=zephyrium.cyan };
    DashboardFooter = { fg=zephyrium.yellow, style='bold' };
  }
  return syntax
end

function zephyrium.load_plugin_syntax()
  local plugin_syntax = {
    TSFunction = { fg=zephyrium.cyan };
    TSMethod = { fg=zephyrium.cyan };
    TSKeywordFunction = { fg=zephyrium.red };
    TSProperty = { fg=zephyrium.yellow };
    TSType = { fg=zephyrium.teal };
    TSVariable = { fg=zephyrium.blue };
    TSPunctBracket = { fg=zephyrium.bracket };

    vimCommentTitle = { fg=zephyrium.grey, style='bold' };
    vimLet = { fg=zephyrium.orange };
    vimVar = { fg=zephyrium.cyan };
    vimFunction = { fg=zephyrium.redwine };
    vimIsCommand = { fg=zephyrium.fg };
    vimCommand = { fg=zephyrium.blue };
    vimNotFunc = { fg=zephyrium.violet, style='bold' };
    vimUserFunc = { fg=zephyrium.yellow, style='bold' };
    vimFuncName= {fg=zephyrium.yellow, style='bold' };

    diffAdded = { fg = zephyrium.dark_green };
    diffRemoved = { fg =zephyrium.red };
    diffChanged = { fg = zephyrium.blue };
    diffOldFile = { fg = zephyrium.yellow };
    diffNewFile = { fg = zephyrium.orange };
    diffFile    = { fg = zephyrium.aqua };
    diffLine    = { fg = zephyrium.grey };
    diffIndexLine = { fg = zephyrium.violet };

    gitcommitSummary = { fg = zephyrium.red };
    gitcommitUntracked = { fg = zephyrium.grey };
    gitcommitDiscarded = { fg = zephyrium.grey };
    gitcommitSelected = { fg=zephyrium.grey };
    gitcommitUnmerged = { fg=zephyrium.grey };
    gitcommitOnBranch = { fg=zephyrium.grey };
    gitcommitArrow  = { fg = zephyrium.grey };
    gitcommitFile  = { fg = zephyrium.dark_green };

    VistaBracket = { fg=zephyrium.grey };
    VistaChildrenNr = { fg=zephyrium.orange };
    VistaKind = { fg=zephyrium.purpl };
    VistaScope = { fg=zephyrium.red };
    VistaScopeKind = { fg=zephyrium.blue };
    VistaTag = { fg=zephyrium.magenta, style='bold' };
    VistaPrefix = { fg=zephyrium.grey };
    VistaColon = { fg=zephyrium.magenta };
    VistaIcon = { fg=zephyrium.yellow };
    VistaLineNr = { fg=zephyrium.fg };

    GitGutterAdd = { fg=zephyrium.dark_green };
    GitGutterChange = { fg=zephyrium.blue };
    GitGutterDelete = { fg=zephyrium.red };
    GitGutterChangeDelete = { fg=zephyrium.violet };

    GitSignsAdd = { fg=zephyrium.dark_green };
    GitSignsChange = { fg=zephyrium.blue };
    GitSignsDelete = { fg=zephyrium.red };
    GitSignsAddNr = { fg=zephyrium.dark_green };
    GitSignsChangeNr = { fg=zephyrium.blue };
    GitSignsDeleteNr = { fg=zephyrium.red };
    GitSignsAddLn = { bg=zephyrium.bg_popup };
    GitSignsChangeLn = { bg=zephyrium.bg_highlight };
    GitSignsDeleteLn = { bg=zephyrium.bg1 };

    SignifySignAdd = { fg=zephyrium.dark_green };
    SignifySignChange = { fg=zephyrium.blue };
    SignifySignDelete = { fg=zephyrium.red };

    dbui_tables = { fg=zephyrium.blue };

    -- Added from PR#20 from zephyrium-nvim
    LspReferenceRead = { bg=zephyrium.bg_highlight };
    LspReferenceText = { bg=zephyrium.bg_highlight };
    LspReferenceWrite = { bg=zephyrium.bg_highlight };

    LspDiagnosticsSignError = { fg=zephyrium.red };
    LspDiagnosticsSignWarning = { fg=zephyrium.yellow };
    LspDiagnosticsSignInformation = { fg=zephyrium.blue };
    LspDiagnosticsSignHint = { fg=zephyrium.cyan };

    -- Added from PR#23 from zephyrium-nvim
    LspDiagnosticsFloatingError = { fg=zephyrium.red };
    LspDiagnosticsFloatingWarning= {fg=zephyrium.yellow };
    LspDiagnosticsFloatingInformation = { fg=zephyrium.blue };
    LspDiagnosticsFloatingHint = { fg=zephyrium.cyan };

    LspDiagnosticsVirtualTextError = { fg=zephyrium.red };
    LspDiagnosticsVirtualTextWarning= {fg=zephyrium.yellow };
    LspDiagnosticsVirtualTextInformation = { fg=zephyrium.blue };
    LspDiagnosticsVirtualTextHint = { fg=zephyrium.cyan };

    LspDiagnosticsUnderlineError = { style="undercurl", sp=zephyrium.red };
    LspDiagnosticsUnderlineWarning = { style="undercurl", sp=zephyrium.yellow };
    LspDiagnosticsUnderlineInformation = { style="undercurl", sp=zephyrium.blue };
    LspDiagnosticsUnderlineHint = { style="undercurl", sp=zephyrium.cyan };

    -- Added from PR#18 from zephyrium-nvim
    CursorWord = { bg=zephyrium.base4 };
    CursorWord0 = { bg=zephyrium.base4 };
    CursorWord1 = { bg=zephyrium.base4 };

    NvimTreeFolderName = { fg=zephyrium.blue };
    NvimTreeRootFolder = { fg=zephyrium.red, style='bold' };
    NvimTreeSpecialFile = { fg=zephyrium.fg, bg=zephyrium.none, style='NONE' };

    TelescopeBorder = { fg=zephyrium.teal };
    TelescopePromptBorder = { fg=zephyrium.blue };
    TelescopeMatching = { fg=zephyrium.teal };
    TelescopeSelection = { fg=zephyrium.yellow, bg=zephyrium.bg_highlight, style= 'bold' };
    TelescopeSelectionCaret = { fg=zephyrium.yellow };
    TelescopeMultiSelection = { fg=zephyrium.teal };

    -- nvim v0.6.0+
    -- Added from PR#35 from zephyrium-nvim
    DiagnosticSignError = { fg=zephyrium.red };
    DiagnosticSignWarn = { fg=zephyrium.yellow };
    DiagnosticSignInfo = { fg=zephyrium.blue };
    DiagnosticSignHint = { fg=zephyrium.cyan };

    DiagnosticVirtualTextError = { fg=zephyrium.red };
    DiagnosticVirtualTextWarn = { fg=zephyrium.yellow };
    DiagnosticVirtualTextInfo = { fg=zephyrium.blue };
    DiagnosticVirtualTextHint = { fg=zephyrium.cyan };

    DiagnosticUnderlineError = { style="undercurl", sp=zephyrium.red };
    DiagnosticUnderlineWarn = { style="undercurl", sp=zephyrium.yellow };
    DiagnosticUnderlineInfo = { style="undercurl", sp=zephyrium.blue };
    DiagnosticUnderlineHint = { style="undercurl", sp=zephyrium.cyan };
  }
  return plugin_syntax
end

local async_load_plugin

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function ()
  zephyrium.terminal_color()
  local syntax = zephyrium.load_plugin_syntax()
  for group, colors in pairs(syntax) do
    zephyrium.highlight(group, colors)
  end
  async_load_plugin:close()
end))

function zephyrium.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'zephyrium'
  local syntax = zephyrium.load_syntax()
  for group, colors in pairs(syntax) do
    zephyrium.highlight(group, colors)
  end
  async_load_plugin:send()
end

zephyrium.colorscheme()

return zephyrium
