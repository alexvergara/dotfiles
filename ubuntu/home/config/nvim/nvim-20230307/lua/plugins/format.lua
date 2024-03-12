return {

    -- Code formatting + Diagnostics
    {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")

            local completion = null_ls.builtins.completion
            local formatting = null_ls.builtins.formatting
            local diagnostics = null_ls.builtins.diagnostics
            local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

            null_ls.setup({
                sources = {
                    completion.spell,
                    -- Formatting
                    formatting.stylua,
                    formatting.prettier,
                    formatting.phpcsfixer,
                    --formatting.pretty_php,
                    --formatting.eslint,
                    -- Linting
                    diagnostics.eslint,
                },

                on_attach = function(client, bufnr)
                    --if client.name == "tsserver" or client.name == "rust_analyzer" or client.name == "pyright" then
                    if client.name == "tsserver" then
                        client.resolved_capabilities.document_formatting = false
                    end

                    if client.supports_method("textDocument/formatting") then
                        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            group = augroup,
                            --buffer = bufnr,
                            callback = function()
                                --vim.lsp.buf.formatting_sync()
                                vim.lsp.buf.format()
                            end,
                        })
                    end
                end,
            })

            --vim.cmd([[ autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync() ]])
            --vim.cmd([[ autocmd BufWritePre <buffer> lua vim.lsp.buf.format() ]])
            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        end,
    },
}
