return {
    "pocco81/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" },
    opts = {
        enabled = true,

        trigger_events = {
            immediate_save = { "BufLeave", "FocusLost" },
            defer_save = { "InsertLeave", "TextChanged" },
            cancel_deferred_save = {},
        },

        debounce_delay = 1000,
    },
}
