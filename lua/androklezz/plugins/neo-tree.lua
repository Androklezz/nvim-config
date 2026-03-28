return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                follow_current_file = {
                    enabled = true,
                },
            },
        })
        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                if vim.fn.argc() == 0 then
                    -- no args, let dashboard show
                    return
                end
                require("neo-tree.command").execute({ action = "show" })
                require("precognition").hide()
                vim.defer_fn(function()
                    vim.cmd("vsplit | Oil")
                    vim.defer_fn(function()
                        require("precognition").show()
                    end, 200)
                end, 50)
            end,
        })
        vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file tree" })
    end,
}
