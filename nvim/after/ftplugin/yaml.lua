local set = vim.opt_local
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
if vim.fn.executable 'yamllint' ~= 0 then
    set.makeprg = 'yamllint -f parsable'
end
