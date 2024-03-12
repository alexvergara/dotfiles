return {

    -- Autocomplete paths
    { "hrsh7th/cmp-path" },

    -- Enable autocomplete based on buffer (open files)
    { "hrsh7th/cmp-buffer" },

    -- Auctocomplete commands
    { "hrsh7th/cmp-cmdline" },

    -- Enable autocomplete based on lsp servers
    { "hrsh7th/cmp-nvim-lsp" },

    -- The autocomplete engine
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")

            ----------------------
            -- Config cmp
            ----------------------
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                        require("luasnip.loaders.from_vscode").lazy_load()
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    --["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.abort(),
                    --["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                    { name = "path" },
                }),
            })

            -- File types specifics
            cmp.setup.filetype("gitcommit", {
                sources = cmp.config.sources({
                    { name = "cmp_git" },
                }, {
                    { name = "buffer" },
                }),
            })

            -- Command line completion
            cmp.setup.cmdline("/", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = { { name = "buffer" } },
            })

            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = "path" },
                }, {
                    { name = "cmdline" },
                }),
            })
            ----------------------
        end,
    },
}
