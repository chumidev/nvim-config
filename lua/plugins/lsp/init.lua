local ruff = require("plugins.lsp.ruff")
local clangd = require("plugins.lsp.clangd")
local meson = require("plugins.lsp.meson")

return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    inlay_hints = { enabled = false },

    -- List of servers: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
    servers = {
      ruff = ruff.server,
      clangd = clangd.server,
      mesonlsp = meson.server,
    },

    setup = {
      ruff = ruff.setup,
      clangd = clangd.setup,
      mesonlsp = meson.setup,
    },
  },
}
