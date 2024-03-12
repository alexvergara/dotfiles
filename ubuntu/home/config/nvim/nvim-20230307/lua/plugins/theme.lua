return {

    -- Tokyonight theme
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "night",
                transparent = true,
                daybrightness = 0.15,

                styles = {
                    sidebars = "normal",
                    floats = "transparent",
                },

                --sidebars = { "terminal" },

                --on_colors = function(colors)
                --colors.bg_sidebar
                --colors.bg_highlight = "#cccccc"
                --end,
            })

            --vim.cmd([[colorscheme tokyonight]])
        end,
    },
}
