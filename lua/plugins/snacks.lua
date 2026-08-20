return {
  {
    "folke/snacks.nvim",
    opts = {
      terminal = {
        win = {
          position = "float",
          border = "rounded",
          height = 0.8,
          width = 0.8,
          padding = true,
          backdrop = 70, -- only works if colorscheme transparency is set to false
          -- window options
          wo = {
            winhighlight = "NormalFloat:SnacksTerminalFloat,FloatBorder:SnacksTerminalBorder",
          },
        },
      },
    },
    keys = {
      {
        "<A-i>",
        function()
          Snacks.terminal.toggle()
        end,
        desc = "Toggle Terminal",
        mode = { "n", "t" },
      },
    },
    config = function(_, opts)
      require("snacks").setup(opts)
      vim.api.nvim_set_hl(0, "SnacksTerminalBorder", { fg = "#7aa2f7" })
      vim.api.nvim_set_hl(0, "SnacksTerminalFloat", { bg = "NONE" })
    end,
  },
}
