return {
    "folke/noice.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    config = function()
        require("notify").setup({
            timeout = 5000,
        })
        require("noice").setup()
    end,
}
