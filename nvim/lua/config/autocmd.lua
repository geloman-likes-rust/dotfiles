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
