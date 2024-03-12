-- AdiMon Nset.ons

local set = vim.opt

-- Make line numbers default (not opt)
vim.wo.number = true
vim.wo.relativenumber = true

-- Disable show mode, is already in status
set.showmode = false

--set.guicursor = ''

--set.backspace = '2'
--set.laststatus = 2

-- Highlight the current line
set.cursorline = true

--set.autowrite = true
--set.autoread = true
--set.showcmd = false

-- Indent
-- Enable smart indent
set.smartindent = true
-- Lenght of and actual \t character
set.tabstop = 4
-- Length to use when editing text (eg. TAB and BS keys) -- (0 = 'tabstops', -1 = 'shiftwidth', # = value)
set.softtabstop = -1
-- Length to use when shifting text (eg. <<, >> and == commands) -- (0 = 'tabstops', # = value)
set.shiftwidth = 0
-- Round indentation to multipes of 'shiftwidth' when shifting text - (like Ctrl-D / Ctrl-T)
set.shiftround = true
-- If set, only insert spaces; otherwise insert \t and complete with spaces
set.expandtab = true

-- Disable swapfile (vim .swp)
set.swapfile = false

-- Disable backup
set.backup = false

-- Set undo dir location
set.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Minimal number of screen lines to keep above and below the cursor
set.scrolloff = 10

-- Max single line marker (?)
set.colorcolumn = "160"

--
set.isfname:append("@-@")

-- Set highlight on search
--set.hlsearch = false

-- Enable mouse mode
set.mouse = "a"

-- Disable line wrap
set.wrap = false

-- Sync clipboard between OS and Neovim. Remove this option if you want your OS clipboard to remain independent. See `:help 'clipboard'`
--set.clipboard = "unnamedplus"

-- Enable break indent
--set.breakindent = true

-- Save undo history
set.undofile = true

-- Case-insensitive search Unleass \C or Capital
set.ignorecase = true
set.smartcase = true

-- Sign column on by default
set.signcolumn = "yes"

-- Configure how new splits should be opened
set.splitright = true
set.splitbelow = true

-- Preview substitutions live, as you type! (split = in a split window)
set.inccommand = "split" -- "nosplit"

-- Highlight every match
set.incsearch = true

-- Sets how neovim will display certain whitespace in the editor. --  See :help 'list' --  and :help 'listchars'
set.list = true
set.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
--set.listchars = { tab = '» ', trail = '.', nbsp = '.', eol = '|', extends = '>', precedes = '<' }

-- Time to check for errors
set.updatetime = 300
-- Time to accept commands
set.ttimeoutlen = 100 -- timeoutlen ?
set.timeout = true

-- Conceal
--set.concealcursor = "$"
-- Conceal level
set.conceallevel = 1

----------------------------

-- Set completeopt to have a better completion experience
set.completeopt = "noinsert,menuone,noselect"

-- Expands the number of usable colors -- NOTE: You should make sure your terminal supports this
set.termguicolors = true

-- Disable on adding comments, new line will inject comments
--set.formatoptions = "cro"

-- Treesitter: improve code folding behaviorr
set.foldexpr = "nvim_treesitter#foldexpr()"
set.foldmethod = "manual"

-- Hide unused buffers
set.hidden = true

-- Shows the title of the file
set.title = true

-- Advanced menu for autocomplete suggestions
set.wildmenu = true

-- Apply the color set to dark screens
set.background = "dark"
