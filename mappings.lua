local mappings = {
    n = {
        ["<leader>ha"] = { "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Add File" },
        ["<leader>hc"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Clear Files" },
        ["<leader>hn"] = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Next File" },
        ["<leader>hp"] = { "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Prev File" },
        ["<leader>h1"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Open File 1" },
        ["<leader>h2"] = { "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Open File 2" },
        ["<leader>h3"] = { "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Open File 3" },
        ["<leader>h4"] = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Open File 4" },
        ["<leader>hu"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Toggle Quick Menu" },
    }
}

return mappings
