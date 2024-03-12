return {

    -- File explorer
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = false,   -- Close Neo-tree if it is the last window left in the tab
                enable_git_status = true,       -- Git status
                enable_diagnostics = true,      -- Enable diagnostics on the file (lsp)
                popup_border_style = "rounded", -- Rounded popups
                sort_case_insensitive = false,  -- Ignore case when sorting files
                filesystem = {
                    filtered_items = {
                        hide_dotfiles = false,   -- Show dot files
                        hide_gitignored = false, -- Show ignored files
                    },
                },
                window = { width = 40 }, -- Window width %?
                --enable_normal_mode_for_inputs = false, -- Enable normal mode for input dialogs.
                --open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
            })
            -- Keymaps
            --vim.keymap.set("n", "<leader>nt", ":Neotree filesystem reveal<CR>")
            --vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
            --vim.cmd("Neotree reveal")
        end,
    },

    -- Floating status line -- TODO: Check if it is working
    {
        "b0o/incline.nvim",
        dependencies = { "folke/tokyonight.nvim" },
        event = "BufReadPre",
        priority = 1200,

        config = function()
            local colors = require("tokyonight.colors").setup({ style = "night" })
            require("incline").setup({
                highlight = {
                    groups = {
                        --InclineNormal = { guibg = colors.magenta500, guifg = colors.base04 },
                        --InclineNormalNC = { guibg = colors.violet500, guifg = colors.base03 },
                        InclineNormal = { guibg = colors.blue7, guifg = colors.blue },
                        InclineNormalNC = { guibg = colors.blue, guifg = colors.bg_dark },
                    },
                },

                window = { margin = { vertical = 0, horizontal = 1 } },
                hide = {
                    cursorline = true,
                },

                render = function(props)
                    local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
                    if vim.bo[props.buf].modified then
                        filename = "[+]" .. filename
                    end

                    local icon, color = require("nvim-web-devicons").get_icon_color(filename)

                    return { { icon, guifg = color }, { " " }, { filename } }
                end,
            })
        end,
    },

    -- Tab bar
    {
        "akinsho/bufferline.nvim",
        config = function()
            require("bufferline").setup()
        end,
    },

    -- Status bar
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            options = {
                theme = "tokyonight",
            },
        },
    },
}
