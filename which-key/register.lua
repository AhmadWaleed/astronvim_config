-- Modify which-key registration
return {
        -- first key is the mode, n == normal mode
        n = {
                -- second key is the prefix, <leader> prefixes
                ["<leader>"] = {
                        -- which-key registration table for normal mode, leader prefix
                        -- ["N"] = { "<cmd>tabnew<cr>", "New Buffer" },
                        b = {
                                name = "Buffers",
                                a = {
                                        "<cmd>BufferLineCloseLeft<cr><cmd>BufferLineCloseRight<cr>",
                                        "Close all but the current buffer",
                                },
                                d = { "<cmd>Bdelete!<CR>", "Close buffer" },
                                f = { "<cmd>BufferLinePick<cr>", "Pick buffer" },
                                l = { "<cmd>BufferLineCloseLeft<cr>", "Close all buffers to the left" },
                                p = { "<cmd>BufferLineMovePrev<cr>", "Move buffer prev" },
                                n = { "<cmd>BufferLineMoveNext<cr>", "Move buffer next" },
                                r = {
                                        "<cmd>BufferLineCloseRight<cr>",
                                        "Close all BufferLines to the right",
                                },
                                x = {
                                        "<cmd>BufferLineSortByDirectory<cr>",
                                        "Sort BufferLines automatically by directory",
                                },
                                L = {
                                        "<cmd>BufferLineSortByExtension<cr>",
                                        "Sort BufferLines automatically by extension",
                                },
                        },
                        f = {
                                e = { "<cmd>Telescope file_browser<cr>", "File browser" },
                                F = {
                                        "<cmd>lua require('telescope.builtin').find_files { hidden = true, no_ignore = true, no_ignore_parent = true }<cr>",
                                        "Search for files" },
                                t = { "<cmd>Telescope treesitter<cr>", "List symbols" },
                        },
                        s = {
                                name = "Search",
                                C = { "<cmd>CheatSH<cr>", "Cht.sh" },
                                H = { "<cmd>Telescope heading<cr>", "Find Header" },
                                t = { "<cmd>Telescope live_grep<cr>", "Text" },
                                s = { "<cmd>Telescope grep_string<cr>", "Text under cursor" },
                                S = { "<cmd>Telescope symbols<cr>", "Search symbols" },
                                p = { "<cmd>Telescope projects<cr>", "Projects" },
                                P = { "<cmd>Telescope builtin<cr>", "Builtin pickers" },
                                z = { "<cmd>Telescope packer<cr>", "Plugins" },
                        },
                        h = {
                                name = "Harpoon",
                                a = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "Add file" },
                                u = {
                                        "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
                                        "Toggle Quick Menu",
                                },
                                c = {
                                        "<cmd>lua require('harpoon.mark').clear_all()<cr>",
                                        "Open Menu",
                                },
                                n = {
                                        "<cmd>lua require('harpoon.ui').nav_next()<cr>",
                                        "Next File",
                                },
                                p = {
                                        "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
                                        "Prev File",
                                },
                                ["1"] = {
                                        "<cmd>lua require('harpoon.ui').nav_file(1)<cr>",
                                        "Open File 1",
                                },
                                ["2"] = {
                                        "<cmd>lua require('harpoon.ui').nav_file(2)<cr>",
                                        "Open File 2",
                                },
                                ["3"] = {
                                        "<cmd>lua require('harpoon.ui').nav_file(3)<cr>",
                                        "Open File 3",
                                },
                                ["4"] = {
                                        "<cmd>lua require('harpoon.ui').nav_file(4)<cr>",
                                        "Open File 4",
                                },
                        },
                        w = {
                                name = "Window",
                                p = { "<c-w>x", "Swap" },
                                q = { "<cmd>:q<cr>", "Close" },
                                s = { "<cmd>:split<cr>", "Horizontal Split" },
                                t = { "<c-w>t", "Move to new tab" },
                                ["="] = { "<c-w>=", "Equally size" },
                                v = { "<cmd>:vsplit<cr>", "Verstical Split" },
                        },
                },
        },
}
