return function(opt)
    telescope = require("telescope")
    telescope.load_extension("file_browser")
    -- local fb_actions = require("telescope").extensions.file_browser.actions
    -- local telescope = require("telescope")
    -- telescope.load_extension("packer")
    -- telescope.load_extension("projects")
    -- telescope.load_extension("heading")

    opt.extensions = {
        file_browser = {
            -- theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            -- hijack_netrw = true,
            mappings = {
                ["i"] = {
                    ["<C-r>"] = require('telescope').extensions.file_browser.actions.move
                },
                ["n"] = {
                    -- your custom normal mode mappings
                },
            },
        },
    }

    -- return opt
end
