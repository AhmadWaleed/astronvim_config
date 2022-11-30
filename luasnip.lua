return {
    -- Add paths for including more VS Code style snippets in luasnip
    -- vscode_snippet_paths = {},
    -- Extend filetypes
    filetype_extend = {
        javascript = { "javascriptreact" },
    },
    ext_opts = {
        [require("luasnip.util.types").choiceNode] = {
            active = {
                -- hl_group = "GruvboxRed"
                -- priority defaults to 0
                virt_text = {{"virtual text!!", "GruvboxBlue"}}
            }
        }
    }
}
