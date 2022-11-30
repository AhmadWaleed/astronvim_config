-- Add plugins, the packer syntax without the "use"
return {
    {
        "ray-x/go.nvim",
        config = function()
            require("go").setup()
        end,
    },
    {
        "ThePrimeagen/harpoon",
        config = function()
            require("harpoon").setup({})
        end
    },
    { "nvim-telescope/telescope-packer.nvim" },
    { "nvim-telescope/telescope-file-browser.nvim" },
    { "crispgm/telescope-heading.nvim" },
    {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup({
                patterns = {
                    ".git",
                    "package.json",
                    ".terraform",
                    "go.mod",
                    "requirements.yml",
                    "pyrightconfig.json",
                    "pyproject.toml",
                    "Gemfile"
                },
                -- detection_methods = { "lsp", "pattern" },
                detection_methods = { "pattern" },
            })
        end
    },

    -- Plugins
    { "catppuccin/nvim", as = "catppuccin" }
    -- themes
  -- ["EdenEast/nightfox.nvim"] = {
  --   config = function()
  --     require("nightfox").setup {
  --       options = {
  --         styles = {
  --           comments = "italic",
  --           keywords = "bold",
  --           types = "italic,bold",
  --         },
  --       },
  --     }
  --   end,
  -- },

  -- ["ellisonleao/gruvbox.nvim"] = {
  --   config = function()
  --     require("gruvbox").setup {
  --       constrast = "soft",
  --       transparent_mode = true,
  --       overrides = {
  --         StatusLine = { bg = "#282828" },
  --       },
  --     }
  --   end,
  -- },
  --
  -- { "luisiacc/gruvbox-baby" },
  --
  -- { "sainnhe/gruvbox-material" },
  --
  -- { "sainnhe/everforest" },
  --
  -- { "savq/melange" },
}
