local function highlight(name, value)
    vim.api.nvim_set_hl(0, name, value)
end

-- CUSTOM HIGHLIGHTS
highlight("Visual", { reverse = true })
highlight("Search", { reverse = true })
highlight("CurSearch", { fg = "#d6ffd6", bg = "#03c988" })
highlight("IncSearch", { fg = "#d6ffd6", bg = "#03c988" })
highlight("CursorLine", { bold = true, bg = "#2a324a" })
highlight("CursorColumn", { bold = true, bg = "#2a324a" })
highlight("TelescopeTitle", { reverse = true })

-- GIT HIGHLIGHTS
highlight("GitSignsUntracked", { fg = "#34bfd0" })
highlight("GitSignsUntrackedLn", { fg = "#34bfd0" })
highlight("GitSignsUntrackedNr", { fg = "#34bfd0" })
highlight("DiffAdd", { fg = "#03C988", bg = "#d6ffd6" })
highlight("DiffDelete", { fg = "#FC2947", bg = "#ffeeee" })

-- CUSTOM FIDGET HIGHLIGHTS
highlight("FidgetTitle", { fg = "#41a7fc", bg = "NONE" })
highlight("FidgetTask", { fg = "#93a4c3", bg = "NONE" })
highlight("FloatBorder", { fg = "#455574", bg = "NONE" })
