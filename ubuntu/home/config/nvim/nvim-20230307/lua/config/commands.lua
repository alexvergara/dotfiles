---------------------------------
-- Add automatic syntax detection
--filetype plugin indent on
vim.cmd([[
    syntax on
    colorscheme tokyonight
]])
--

---------------------------------
-- Floating diagnostics message
vim.diagnostic.config({
	float = { source = "always", border = border },
	virtual_text = false,
	signs = true,
})
vim.cmd([[ autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, { focus = false })]])
--

---------------------------------
-- Avoid tab's auto-indent
--vim.cmd([[ autocmd BufEnter * if &filetype == "" | setlocal noxpandtab | setlocal noautoindent | endifn ]])
--vim.cmd([[ autocmd! BufEnter * if &filetype == "" | setlocal noxpandtab | setlocal noautoindent | endifn ]])
--
