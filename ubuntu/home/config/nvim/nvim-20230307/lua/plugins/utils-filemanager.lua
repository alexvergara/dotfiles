return {

    -- File manager
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            "nvim-lua/plenary.nvim",
            --"nvim-telescope/telescope-ui-select.nvim"
        },
        config = function()
            local builtin = require("telescope.builtin")

            -- Find files
            vim.keymap.set("n", "<leader>ff", builtin.find_files)
            -- File search grep
            vim.keymap.set("n", "<leader>fs", builtin.live_grep)
        end,
    },

    -- UI telescope plugin
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
