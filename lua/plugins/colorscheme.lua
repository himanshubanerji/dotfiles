return {
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 100000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_colors = function(colors)
        colors.bg = "#011628"
        colors.bg_dark = "#011423"
        colors.bg_highlight = "#143652"
        colors.bg_popup = "#011423"
        colors.bg_search = "#0A64AC"
        colors.bg_statusline = "#011423"
        colors.bg_visual = "#275378"
        colors.border = "#547998"
        colors.fg = "#CBE0F0"
        colors.fg_dark = "#B4D0E9"
        colors.fg_float = "#CBE0F0"
        colors.fg_gutter = "#627E97"
        colors.fg_sidebar = "#B4D0E9"
      end,
      on_highlights = function(hl, colors)
        hl.LineNr = { bg = "none", fg = "#999999" }
        hl.CursorLineNr = { fg = "#ffffff" }
      end,
    },
  },

  -- devaslife's theme
  {
    "craftzdog/solarized-osaka.nvim",
    name = "solarized-osaka",
    opts = {
      transparent = true,
    },
  },

  {
    "ellisonleao/gruvbox.nvim",
    -- priority = 1000,
    config = true,
    opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    },
  },

  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    --enabled = false,
    opts = function()
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_background = "medium"
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_transparent_background = 1 -- set 1 to use transparent_mode
      vim.g.gruvbox_material_enable_italic = 1
    end,
  },

  {
    "Mofiqul/vscode.nvim",
    opts = {
      italic_comments = true,
      disable_nvimtree_bg = true,
      -- transparent = true,
    },
  },

  {
    "ray-x/aurora",
    config = function()
      vim.g.aurora_italic = 1
      vim.g.aurora_transparent = 1
    end,
  },

  {
    "catppuccin/nvim",
    lazy = false,
    -- priority = 1000,
    name = "catppuccin",
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },

  {
    "maxmx03/solarized.nvim",
    lazy = false,
    --priority = 1000,

    opts = {
      transparent = true,
      palette = "solarized", -- or selenized / solarized
      styles = {
        comments = {},
        functions = {},
        variables = {},
        numbers = {},
        constants = {},
        parameters = {},
        keywords = {},
        types = {},
      },
      enables = {
        bufferline = true,
        cmp = true,
        diagnostic = true,
        dashboard = true,
        editor = true,
        gitsign = true,
        hop = true,
        indentblankline = true,
        lsp = true,
        lspsaga = true,
        navic = true,
        neogit = true,
        neotree = true,
        notify = true,
        noice = true,
        semantic = true,
        syntax = true,
        telescope = true,
        tree = true,
        treesitter = true,
        todo = true,
        whichkey = true,
        mini = true,
      },
      highlights = {},
      colors = {},
      theme = "default", -- or 'neo' / 'default'
      autocmd = true,
    },

    config = function(_, opts)
      vim.o.background = "light" -- or 'light'
      require("solarized").setup(opts)
    end,
  },

  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    --priority = 1000,
    --config = function()
    -- vim.g.nightflyTransparent = true
    --end,
  },

  -- Configure to load nightfly
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
