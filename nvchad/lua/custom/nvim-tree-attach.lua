-- set keybindings for nvim-tree

local M = {}

M.nvim_tree_on_attach = function(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('Close Directory'))
  vim.keymap.set('n', 'l', api.node.open.edit, opts('Open File or Directory'))
end

return M
