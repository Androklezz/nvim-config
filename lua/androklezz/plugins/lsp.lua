return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",
          "ts_ls",
          "lua_ls",
          "vue_ls",
        },
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      vim.lsp.enable({ "pyright", "ts_ls", "lua_ls", "vue_ls"})
      vim.diagnostic.config({
          virtual_text = true,
          signs = true,
          underline = true,
          update_in_insert = false,
      })
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local buf = args.buf
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = buf })
          vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = buf })
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = buf })
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = buf })
          vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = buf })
          vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { buffer = buf })
          vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { buffer = buf })
        end,
      })
    end,
  },
}
