local opt = vim.opt
local o = vim.o
local g = vim.g


--============================================================================
-- Indenting
--============================================================================

-- Use the appropriate number of spaces to insert a <Tab>. To insert a real tab
-- when `expandtab` is on, use CTRL-V<Tab>.
opt.expandtab = true

-- Number of spaces to use for each step of (auto)indent.
opt.shiftwidth = 4

-- Recognize specific code structures and keywords to adjust indentation
-- levels automatically.
opt.smartindent = true

-- Number of spaces that a <Tab> counts for.
opt.tabstop = 4

-- Number of spaces a <Tab> appears to be.
opt.softtabstop = 4

-- Copy indent from current line when starting a new line.
opt.autoindent = true

--============================================================================
-- UI/Cursor
--============================================================================

-- Display line numbers.
opt.number = true

-- Highlight the text line of the cursor with CursorLine `hl-CursorLine`.
opt.cursorline = true

-- When a bracket is inserted, briefly jump to the matching one. The time to
-- show the match can be set with `matchtime`. The `matchpairs` option can be
-- used to specify the characters to show matches for.
opt.showmatch = true

--============================================================================
-- Searching
--============================================================================

-- Ignore case in search patterns. Also used when searching in the tags file.
opt.ignorecase = true

-- Override the `ignorecase` option if the search pattern contains uppercase
-- characters.
opt.smartcase = true

-- When there is a previous search pattern, highlight all its matches. The
-- `hl-Search` highlight group determines the highlighting.
opt.hlsearch

-- While typing a search command show matches for the pattern as typed so
-- far. You can use CTRL-G and CTRL-T to move to the next or previous match.
opt.incsearch

--============================================================================
-- Invisible Characters
--============================================================================

-- Useful to see the difference between tabs and spaces and for trailing
-- whilespace. Further changed by the `listchars` option.
opt.list = true
-- Strings to use in `list` mode.
opt.listchars = {
  tab = "| ",
  trail = ".",
  precedes = "<",
  extends = ">"
}

--============================================================================
-- Command/UI Behavior
--============================================================================

-- Show (partial) command in the last line of the screen.
opt.showcmd = true

-- Enables "enhanced mode" of command-line completion. When user hits <Tab> (or
-- `wildchar`) to invoke completion, the possible matches are shown in a menu
-- just above the command-line, with the first match highlighted. `hl-WildMenu`
-- highlights the current match.
opt.wildmenu = true

-- Completion mode that is used for the character specified with `wildchar`.
opt.wildmode = {"longest", "full"}

-- Only show status line if there are at least two windows.
opt.laststatus = 1

-- The screen will not be redrawn while executing macros, registers, and other
-- commands that have not been typed.
opt.lazyredraw = true

-- Time in milliseconds to wait for a mapped sequence to complete.
opt.timeoutlen = 500

-- Splitting a window will put the new window below the current one.
opt.splitbelow = true

-- Splitting a window will put the new window right of the current one.
opt.splitright = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 99999

-- Set how automatic formatting is done. See `:help fo-table`.
opt.formatoptions = "tcrqljp"

-- Enable 24-bit RGB color.
opt.termguicolors = true

-- Save undo history.
opt.undofile = true

-- Set the default listing style to tree style listing.
g.netrw_liststyle = 3

-- Write the contents of the file, if it has been modified, on each :next
-- :rewind, :last, :first, :previous, :stop, :suspend, :tag, :!, :make, CTRL-]
-- and CTRL-^ command.
opt.autowrite = true

-- Disable mouse
-- opt.mouse = ""

