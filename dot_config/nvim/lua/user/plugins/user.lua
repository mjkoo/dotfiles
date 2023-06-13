return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "glacambre/firenvim",
    lazy = false,
    cond = not not vim.g.started_by_firenvim,
    build = function()
      require("lazy").load { plugins = { "firenvim" }, wait = true }
      vim.fn["firenvim#install"](0)
    end,
  },
}
