return {

--[[
    -- Auto save sessions
    {
        "rmagatti/auto-session",
        config = function()
            require("auto-session").setup({
                --auto_restore_enabled = true,
                --auto_save_enabled = true,
                --auto_session_enable_last_session = false,
                --auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
                --auto_session_enabled = true,
                --auto_save_interval = 30000,
                --auto_restore_host = true,
                auto_session_suppress_dirs = { "~/", "~/Pictures/", "~/Downloads/", "/" },
                session_lens = {
                    buftypes_to_ignore = {},
                    load_on_setup = true,
                    theme_conf = { border = true },
                    previewer = false,
                },
            })

            vim.keymap.set("n", "<leader>ls", require("auto-session").search_session, { noremap = true, silent = true })
        end,
    },
]]--
}
