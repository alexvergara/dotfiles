return {

    -- Auto closes blocks
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({
                disable_filetype = { "TelescopePrompt" },
            })
        end,
    },

    -- Display color codes
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    },

    -- Show Git status per line
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },
}
