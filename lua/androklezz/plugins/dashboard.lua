return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        {
            "MaximilianLloyd/ascii.nvim",
            dependencies = { "MunifTanjim/nui.nvim" },
        },
    },
    config = function()
        local ascii = require("ascii")

        require("dashboard").setup({
            theme = "doom",
            config = {
                header = ascii.art.text.neovim.ansi_shadow,
                center = {
                    { icon = "  ", desc = "Find File", action = "Telescope find_files",         key = "f" },
                    { icon = "  ", desc = "Grep",      action = "Telescope live_grep",          key = "g" },
                    { icon = "  ", desc = "Recent",    action = "Telescope oldfiles",           key = "r" },
                    { icon = "  ", desc = "Config",    action = "edit ~/.config/nvim/init.lua", key = "c" },
                    { icon = "  ", desc = "Quit",      action = "quit",                         key = "q" },
                },
                footer = {},
            },
        })
    end,
}
