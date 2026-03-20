return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter").setup({
                ensure_installed = {
                    "lua",
                    "python",
                    "javascript",
                    "typescript",
                    "vue",
                    "html",
                    "css",
                    "json",
                    "yaml",
                    "markdown",
                    "bash",
                    "vim",
                    "vimdoc",
                },
                auto_install = true,
            })
        end,
    },
}
