return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    style = "moon",
    transparent = true,
    on_highlights = function(hl, c)
      hl.LineNrAbove = { fg = "#8C5E3C" }
      hl.LineNrBelow = { fg = "#8C5E3C" }
    end,
  },
}
