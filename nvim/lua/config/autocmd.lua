-- set cursorline/cursorcolumn on InsertEnter
vim.api.nvim_create_autocmd("InsertEnter", {
    pattern = "*",
    callback = function()
        vim.opt.cursorline = true
        vim.opt.cursorcolumn = true
    end
})

-- set nocursorline/nocursorcolumn on InsertLeave
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    pattern = "*",
    callback = function()
        vim.opt.cursorline = false
        vim.opt.cursorcolumn = false
    end
})

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})
