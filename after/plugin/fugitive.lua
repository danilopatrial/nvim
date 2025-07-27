require('gitsigns').setup {
  current_line_blame = true, -- optional
}

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
