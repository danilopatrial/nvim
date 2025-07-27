require("config")
require("transparent").enable()

vim.opt.number = true
vim.opt.relativenumber = true

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.o.laststatus = 0

vim.o.updatetime = 300  -- delay in ms

-- Hover in normal mode
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.lsp.buf.hover()
    end
})

-- Hover in insert mode (warn: This might bring problems when writing the file if the hover in on.)
vim.api.nvim_create_autocmd("CursorHoldI", {
    callback = function()
        vim.lsp.buf.hover()
    end
})

-- Add rounded border to hover window
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = "rounded"
    return orig_util_open_floating_preview(contents, syntax, opts, ...)
end



