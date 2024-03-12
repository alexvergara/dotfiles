-- function Map(mode, lhs, rhs, opts)
--   local options = { noremap = true, silent = true }
--   if opts then
--     options = vim.tbl_extend('force', options, opts)
--   end
--   vim.api.nvim_set_keymap(mode, lhs, rhs, options)
-- end

local map = vim.api.nvim_set_keymap
local kmap = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- -- Movement
-- -- window
-- Map("n", "<C-h>", "<C-w>h")
-- Map("n", "<C-j>", "<C-w>j")
-- Map("n", "<C-k>", "<C-w>k")
-- Map("n", "<C-l>", "<C-w>l")

-- -- terminal
-- Map("t", "<C-h>", "<cmd>wincmd h<CR>")
-- Map("t", "<C-j>", "<cmd>wincmd j<CR>")
-- Map("t", "<C-k>", "<cmd>wincmd k<CR>")
-- Map("t", "<C-l>", "<cmd>wincmd l<CR>")

-- -- Resize
-- -- window
-- Map("n", "<C-Up>", ":resize -2<CR>")
-- Map("n", "<C-Down>", ":resize +2<CR>")
-- Map("n", "<C-Left>", ":vertical resize -2<CR>")
-- Map("n", "<C-Right>", ":vertical resize +2<CR>")

-- -- terminal
-- Map("t", "<C-Up>", "<cmd>resize -2<CR>")
-- Map("t", "<C-Down>", "<cmd>resize +2<CR>")
-- Map("t", "<C-Left>", "<cmd>vertical resize -2<CR>")
-- Map("t", "<C-Right>", "<cmd>vertical resize +2<CR>")
--
--

-- Vim
map("n", "<F5>", ":Neotree toggle<CR>", opts)
-- - map("n", "<C-q>", ":q!<CR>", opts)
-- - map("n", "<F4>", ":bd<CR>", opts)
-- - map("n", "<F6>", ":sp<CR>:terminal<CR>", opts)
-- - map("n", "<S-Tab>", "gT", opts)
-- - map("n", "<Tab>", "gt", opts)
-- - map("n", "<silent> <Tab>", ":tabnew<CR>", opts)
-- - map("n", "<C-p>", ':lua require("telescope.builtin").find_files()<CR>', opts)
-- - 
-- - -- Diagnostics
-- - kmap("n", "<space>e", vim.diagnostic.open_float, opts)
-- - kmap("n", "[d", vim.diagnostic.goto_prev, opts)
-- - kmap("n", "]d", vim.diagnostic.goto_next, opts)
-- - kmap("n", "<space>q", vim.diagnostic.setloclist, opts)
-- - 
-- - local on_attach = function(client, bufnr)
  -- - -- Enable completion triggered by <c-x><c-o>
  -- - vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
-- - 
  -- - -- Mappings.
  -- - local bufopts = { noremap = true, silent = true, buffer = bufnr }
  -- - kmap("n", "gD", vim.lsp.buf.declaration, bufopts)
  -- - kmap("n", "gd", vim.lsp.buf.definition, bufopts)
  -- - kmap("n", "K", vim.lsp.buf.hover, bufopts)
  -- - kmap("n", "gi", vim.lsp.buf.implementation, bufopts)
  -- - kmap("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
  -- - kmap("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
  -- - kmap("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
  -- - kmap("n", "<space>wl", function()
    -- - print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- - end, bufopts)
  -- - kmap("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
  -- - kmap("n", "<space>rn", vim.lsp.buf.rename, bufopts)
  -- - kmap("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
  -- - kmap("n", "gr", vim.lsp.buf.references, bufopts)
  -- - kmap("n", "<space>f", vim.lsp.buf.formatting, bufopts)
-- - end
