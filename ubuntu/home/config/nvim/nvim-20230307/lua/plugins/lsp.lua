return {

    --
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    -- Install language servers from popup menu
    {
        "williamboman/nvim-lsp-installer",
        config = function()
            require("nvim-lsp-installer").setup()
        end,
    },

    --
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "volar",
                    "lua_ls",
                    "emmet_ls",
                    "tsserver",
                    "tailwindcss",
                    "intelephense",
                    --"phpactor",
                    --"selene",
                    --"luacheck",
                    --"shellcheck",
                    --"shfmt",
                    --"tailwindcss-language-server",
                    --"typescript-language-server",
                    --"css-lsp",
                },
            })
        end,
    },

    -- Enable language server support
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                intelephense = {
                    settings = {
                        format = {
                            braces = "k&r",
                        },
                    },
                },
            },
        },
        config = function()
            local lspconfig = require("lspconfig")
            local caps = vim.lsp.protocol.make_client_capabilities()
            local no_format = function(client, bufnr)
                client.resolved_capabilities.document_formatting = false
            end

            -- Capabilities
            caps.textDocument.completion.completionItem.snippetSupport = true

            lspconfig.lua_ls.setup({ capabilities = caps })
            lspconfig.volar.setup({ capabilities = caps })
            lspconfig.tsserver.setup({ capabilities = caps, on_attach = no_format })
            lspconfig.tailwindcss.setup({ capabilities = caps })
            --lspconfig.phpactor.setup({ capabilities = caps })
            lspconfig.intelephense.setup({ capabilities = caps })

            lspconfig.emmet_ls.setup({
                capabilities = caps,
                filetypes = {
                    "css",
                    "html",
                    "less",
                    "sass",
                    "scss",
                    "javascriptreact",
                    "typescriptreact",
                },
            })

            --vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            --vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
