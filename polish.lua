-- This function is run last
-- good place to configuring augroups/autocommands and custom filetypes
local map = vim.api.nvim_set_keymap
local unmap = vim.api.nvim_del_keymap

return function()
  -- binding
  -- Undo some AstroVim mappings
  unmap("n", "<C-Up>")
  unmap("n", "<C-Down>")
  unmap("n", "<C-Left>")
  unmap("n", "<C-Right>")

  -- Set resize on arrows key
  map("n", "<Up>", [[<cmd>lua require("smart-splits").resize_up()<CR>]], { desc = "Resize split up" })
  map("n", "<Down>", [[<cmd>lua require("smart-splits").resize_down()<CR>]], { desc = "Resize split down" })
  map("n", "<Left>", [[<cmd>lua require("smart-splits").resize_left()<CR>]], { desc = "Resize split left" })
  map("n", "<Right>", [[<cmd>lua require("smart-splits").resize_right()<CR>]], { desc = "Resize split Right" })
  -- map("n", "<Up>", [[<cmd>resize +2<CR>]], { desc = "Resize split up" })
  -- map("n", "<Down>", [[<cmd>resize -2<CR>]], { desc = "Resize split up" })
  -- map("n", "<Left>", [[<cmd>vertical +2<CR>]], { desc = "Resize split up" })
  -- map("n", "<Right>", [[<cmd>vertical +2<CR>]], { desc = "Resize split up" })

  -- autocommands
  vim.api.nvim_create_augroup("packer_conf", { clear = true })
  vim.api.nvim_create_autocmd("BufWritePost", {
    desc = "Sync packer after modifying plugins.lua",
    group = "packer_conf",
    pattern = "plugins.lua",
    command = "source <afile> | PackerSync",
  })

  vim.defer_fn(function()
    vim.api.nvim_create_augroup("GoMisc", { clear = true })
    vim.api.nvim_create_autocmd({"BufWritePre"}, {
      group = "GoMisc",
      pattern = "*.go",
      callback = function()
        vim.api.nvim_exec([[ :silent! lua require('go.format').gofmt() ]], false)
        vim.api.nvim_exec([[ :silent! lua require('go.format').goimport() ]], false)
      end,
    })
  end, 0)
end
