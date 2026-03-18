return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "lua", "vim", "vimdoc",
        "python",
        "javascript", "typescript",
        "vue", "html", "css",
        "json", "yaml", "toml",
        "bash",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
