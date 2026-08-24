return {
    "lewis6991/gitsigns.nvim",

    opts = {
        signs = {
            add = { text = "+" },
            change = { text = "│" },
            delete = { text = "-" },
            topdelete = { text = "▔" },
            changedelete = { text = "│" },
        },

        signcolumn = true,

        current_line_blame = false,

        sign_priority = 6,
    },

    config = function(_, opts)
        require("gitsigns").setup(opts)

        vim.api.nvim_set_hl(0, "GitSignsAdd", {
            fg = "#00ff00",
        })

        vim.api.nvim_set_hl(0, "GitSignsChange", {
            fg = "#ffff00",
        })

        vim.api.nvim_set_hl(0, "GitSignsDelete", {
            fg = "#ff0000",
        })
    end,
}
