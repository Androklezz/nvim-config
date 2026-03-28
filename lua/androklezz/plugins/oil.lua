return {
    "stevearc/oil.nvim",
    config = function()
        require("oil").setup({
            default_file_explorer = true,
            keymaps = {
                ["<leader>v"] = "actions.select_vsplit",
                ["<leader>s"] = "actions.select_split",
            }
        })
        vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })
    end,
}
