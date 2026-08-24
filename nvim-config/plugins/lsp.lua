return {
    "neovim/nvim-lspconfig",

    config = function()
        vim.diagnostic.config({
            virtual_text = {
                spacing = 2,
                prefix = "●",
            },

            signs = true,

            underline = true,

            update_in_insert = false,

            severity_sort = true,

            float = {
                border = "rounded",
                source = true,
            },
        })

        vim.lsp.config("clangd", {
            cmd = {
                "clangd",
                "--background-index",
                "--clang-tidy",
            },

            capabilities = require("cmp_nvim_lsp").default_capabilities(),
        })

        vim.lsp.enable("clangd")
    end,
}
