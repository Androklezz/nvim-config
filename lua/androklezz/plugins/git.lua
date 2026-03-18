return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                on_attach = function(bufnr)
                    local gs = require("gitsigns")
                    vim.keymap.set("n", "]h", gs.next_hunk, { buffer = bufnr })
                    vim.keymap.set("n", "[h", gs.prev_hunk, { buffer = bufnr })
                    vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { buffer = bufnr })
                    vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { buffer = bufnr })
                    vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { buffer = bufnr })
                    vim.keymap.set("n", "<leader>hb", gs.blame_line, { buffer = bufnr })
                end,
            })
        end,
    },
    {
        "tpope/vim-fugitive",
    },
}
