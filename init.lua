local config = {
  -- Colorscheme
  -- colorscheme = schemes[math.random(1, 4)],
  -- colorscheme = "duskfox",
  -- colorscheme = "gruvbox-material",
  -- colorscheme = "everforest",
  colorscheme = "catppuccin",
  -- colorscheme = "sonokai",
  -- colorscheme = "default_theme",

  -- Override highlight groups in any theme
  highlights = {
    -- duskfox = { -- a table of overrides/changes to the default
    --   Normal = { bg = "#000000" },
    -- },
    -- Override highlight groups in any theme
    highlights = {
      -- duskfox = { -- a table of overrides/changes to the default
      --   Normal = { bg = "#000000" },
      -- },
      default_theme = function(highlights) -- or a function that returns a new table of colors to set
        local C = require "default_theme.colors"
        highlights.Normal = { fg = C.fg, bg = C.bg }
        return highlights
      end,
    },
  },
  -- Default theme configuration
  default_theme = {
    -- set the highlight style for diagnostic messages
    diagnostics_style = { italic = true },
    -- Modify the color palette for the default theme
    colors = {
      fg = "#abb2bf",
      bg = "#1e222a",
    },
    plugins = {
      -- enable or disable extra plugin highlighting
      aerial = true,
      beacon = false,
      bufferline = true,
      dashboard = true,
      highlighturl = true,
      hop = false,
      indent_blankline = true,
      lightspeed = false,
      ["neo-tree"] = true,
      notify = true,
      ["nvim-tree"] = false,
      ["nvim-web-devicons"] = true,
      rainbow = true,
      symbols_outline = false,
      telescope = true,
      vimwiki = false,
      ["which-key"] = true,
    },
  },
  -- Disable AstroNvim ui features
  ui = {
    nui_input = true,
    telescope_select = true,
  },
  -- CMP Source Priorities
  -- modify here the priorities of default cmp sources
  -- higher value == higher priority
  -- The value can also be set to a boolean for disabling default sources:
  -- false == disabled
  -- true == 1000
  cmp = {
    source_priority = {
      nvim_lsp = 1000,
      luasnip = 750,
      buffer = 500,
      path = 250,
    },
  },
  -- Extend LSP configuration
  lsp = {
    -- skip_setup = { "dartls" },
    -- enable servers that you already have installed without lsp-installer
    servers = {},
    setup_handlers = {
      -- add custom handler
    },
    config = {
      dartls = {
        -- any changes you want to make to the LSP setup, for example
        color = {
          enabled = true,
        },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
        },
      },
    },
    formatting = {
      format_on_save = {
        enabled = false,     -- enable format on save
        ignore_filetypes = { -- disable format on save for specified filetypes
          "ruby",
        }
      },
    },
    -- easily add or disable built in mappings added during LSP attaching
    mappings = {
      n = {
        -- ["<leader>lf"] = false -- disable formatting keymap
      },
    },
    -- add to the server on_attach function
    -- on_attach = function(client, bufnr)
    -- end,

    -- override the lsp installer server-registration function
    -- server_registration = function(server, opts)
    --   require("lspconfig")[server].setup(opts)
    -- end,

    -- Add overrides for LSP server settings, the keys are the name of the server
  },
  -- Diagnostics configuration (for vim.diagnostics.config({}))
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
  mappings = {
    -- first key is the mode
    n = {
      -- second key is the lefthand side of the map
      ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
      ["<leader>w"] = false, -- disable formatting keymap
      ["<leader>W"] = { "<cmd>w<cr>", desc = "Save" }
    },
    t = {
      -- setting a mapping to false will disable it
      -- ["<esc>"] = false,
    },
  },
}

return config
