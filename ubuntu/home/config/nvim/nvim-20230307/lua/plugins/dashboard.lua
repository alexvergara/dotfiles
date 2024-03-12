return {

    -- Dashboard
    {
        "goolord/alpha-nvim",
        event = "VimEnter", -- load plugin after all configuration is set
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },

        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            dashboard.section.header.val = {
                --[[
                [[                                                 ] ],
                [[                                                 ] ],
                [[     _____      .__.__   _____                   ] ],
                [[    /  _  \   __| _|__| /     \   ____   ____    ] ],
                [[   /  /_\  \ / __ ||  |/  \ /  \ /  _ \ /    \   ] ],
                [[  /    |    / /_/ ||  /    Y    (  <_> |   |  \  ] ],
                [[  \____|__  \____ ||__\____|__  /\____/|___|  /  ] ],
                [[          \/     \/           \/            \/   ] ],
                [[                                                 ] ],
                ]]
                --
                --
                [[                                                                       ]],
                [[                                                                       ]],
                [[                                                                       ]],
                [[                                                                       ]],
                [[                                                                       ]],
                [[                                                                       ]],
                [[                                                                       ]],
                [[                                                                     ]],
                [[       ████ ██████           █████      ██                     ]],
                [[      ███████████             █████                             ]],
                [[      █████████ ███████████████████ ███   ███████████   ]],
                [[     █████████  ███    █████████████ █████ ██████████████   ]],
                [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
                [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
                [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
                [[                                                                       ]],
                [[                                                                       ]],
                [[                                                                       ]],
            }

            _Gopts = {
                position = "center",
                hl = "Type",
                -- wrap = "overflow";
            }

            -- Set menu
            dashboard.section.buttons.val = {
                -- dashboard.button("SPC j", "󰈚   Restore Session", ":SessionRestore<cr>"),
                dashboard.button("h", "󰙅   Home", ":bd <BAR> Neotree reveal <CR>"),
                --dashboard.button("e", "   New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("e", "   New file", ":bd <BAR> Neotree reveal <CR> <a>"),
                --dashboard.button("f", "   Find file", ":cd $HOME/dotfiles/.config | Telescope find_files<CR>"),
                dashboard.button("f", "   Find file", ":Telescope find_files<CR>"),
                dashboard.button("g", "󰱼   Find word", ":Telescope live_grep<CR>"),
                dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
                dashboard.button("c", "   Config", ":e $MYVIMRC <CR>"),
                dashboard.button("m", "󱌣   Mason", ":Mason<CR>"),
                dashboard.button("l", "󰒲   Lazy", ":Lazy<CR>"),
                dashboard.button("u", "󰂖   Update plugins", "<cmd>lua require('lazy').sync()<CR>"),
                dashboard.button("q", "   Quit NVIM", ":qa<CR>"),
            }

            --local function footer()
            --return "Mohammed Babiker Babai"
            --end

            --dashboard.section.footer.val = footer()

            dashboard.opts.opts.noautocmd = true
            alpha.setup(dashboard.opts)

            require("alpha").setup(dashboard.opts)

            vim.api.nvim_create_autocmd("User", {
                pattern = "LazyVimStarted",
                callback = function()
                    local stats = require("lazy").stats()
                    local count = (math.floor(stats.startuptime * 100) / 100)
                    dashboard.section.footer.val = {
                        "󱐌 " .. stats.count .. " plugins loaded in " .. count .. " ms",
                        --" ",
                        --"      Mohammed Babiker Babai",
                    }
                    pcall(vim.cmd.AlphaRedraw)
                end,
            })
        end,
    },
}