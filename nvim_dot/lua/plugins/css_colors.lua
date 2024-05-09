--- Plugin for CSS Colors
return {
  {
    "brenoprata10/nvim-highlight-colors",
    opts = {
      render = "first_column", -- or 'background', 'foreground', 'first_column'
      enable_named_colors = true,
      enable_tailwind = true,
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    enabled = false,
    opts = {
      css = true,
      css_fn = true,
      hsl_fn = true,
      tailwind = true,
    },
  },
}
