return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                show_buffer_close_icons = false,
                show_close_icon = false,
            },
        })

        vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>")
        vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>")
    end,
}
