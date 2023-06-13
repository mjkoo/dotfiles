return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {}
      return opts
    end,
  },
  { "max397574/better-escape.nvim", enabled = false },
}
