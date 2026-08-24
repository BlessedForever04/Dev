return {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",

        dependencies = {
                "nvim-lua/plenary.nvim",
                "MunifTanjim/nui.nvim",
                "nvim-tree/nvim-web-devicons",
        },

        opts = {
                close_if_last_window = true,

                filesystem = {
                        filtered_items = {
                                hide_dotfiles = false,
                                hide_gitignored = false,
                        },

                        follow_current_file = {
                                enabled = true,
                        },

                        use_libuv_file_watcher = true,
                },

                default_component_configs = {
                        icon = {
                                folder_closed = "",
                                folder_open = "",
                                folder_empty = "",
                        },
                        window = {
                                width = 5,
                        },
                },
        }
}
