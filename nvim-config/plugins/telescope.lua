return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup({
            defaults = {
                layout_strategy = "horizontal",
                layout_config = {
                    preview_width = 0.45,
                    preview_cutoff = 10,
                },
                mappings = {
                    i = {
                        ["<C-j>"] = "move_selection_next",
                        ["<C-k>"] = "move_selection_previous",
                    },
                },
            },
        })

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
        vim.keymap.set('n', '<leader>gg', builtin.live_grep, { desc = 'Live grep (search in files)' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })
    end,
}
