return {

    -- Syntax highlight
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = {
            --"nvim-treesitter/nvim-treesitter-textobjects",
            --"JoosepAlviste/nvim-ts-context-commentstring"
        },
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "help",
                    "lua",
                    "vim",
                    "vimdoc",
                    "bash",
                    "html",
                    "css",
                    "scss",
                    "php",
                    "sql",
                    "query",
                    "json",
                    "javascript",
                    "typescript",
                    "tsx",
                    "markdown",
                    "markdown_inline",
                    "yaml",
                    "toml",
                },
                filetype = { "html", "javascript", "javacriptreact", "typescript", "typescriptreact", "vue", "xml" },
                sync_install = false,
                auto_install = true,
                ignore_install = { "help" },
                indent = { enable = true },
                autotag = { enable = true },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            })
        end,
    },
}
