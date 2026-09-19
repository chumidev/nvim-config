vim.filetype.add({
  filename = {
    ["meson.build"] = "meson",
    ["meson_options.txt"] = "meson",
  },
})

return {
  server = {
    filetypes = { "meson" },
    cmd = { "mesonlsp", "--lsp", "--stdio" },
    root_markers = { "meson.build", "meson.options", "meson_options.txt", ".git" },
  },

  setup = function()
    return false
  end,
}
