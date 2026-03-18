return {
  "saghen/blink.cmp",
  version = "*",
  opts = {
    keymap = { preset = "default" },
    appearance = {
      use_nvim_web_devicons = true,
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
      },
    },
  },
}
