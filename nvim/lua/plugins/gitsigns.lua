return {
  'lewis6991/gitsigns.nvim',

  ft = { "gitcommit", "diff" },
  init = function()
    vim.api.nvim_create_autocmd({ "BufRead" }, {
      group = vim.api.nvim_create_augroup("GitSignsLazyLoad", { clear = true }),
      callback = function()
        vim.fn.system("git -C " .. '"' .. vim.fn.expand "%:p:h" .. '"' .. " rev-parse")
        if vim.v.shell_error == 0 then
          vim.api.nvim_del_augroup_by_name "GitSignsLazyLoad"
          vim.schedule(function()
            require("lazy").load { plugins = { "gitsigns.nvim" } }
          end)
        end
      end,
    })
  end,

  config = function()
    local gitsigns = require("gitsigns")
    gitsigns.setup {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      numhl = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 100,
      },
      preview_config = {
        border = "rounded"
      },
    }

    local keymap = function(mode, lhs, rhs, opts)
      opts = opts or {}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- custom keymaps
    keymap('n', '<leader>N', gitsigns.prev_hunk, { desc = '[N] go to previous hunk' })
    keymap('n', '<leader>n', gitsigns.next_hunk, { desc = '[n] go to next hunk' })
    keymap('n', '<leader>ph', gitsigns.preview_hunk, { desc = '[p]review [h]unk' })
    keymap('n', 'ga', gitsigns.stage_hunk, { desc = '[G]it [A]dd Hunk' })
    keymap('n', '<leader>gaa', gitsigns.stage_buffer, { desc = '[G]it [A]dd [A]ll Hunks' })
    keymap('n', '<leader>gu', gitsigns.undo_stage_hunk, { desc = '[G]it [U]nstage Last Staged' })
    keymap('n', '<leader>gr', gitsigns.reset_buffer, { desc = '[G]it [R]eset Current Buffer' })
    keymap('n', '<leader>lb', gitsigns.toggle_current_line_blame, { desc = '[L]ine [B]lame toggle' })

    -- custom highlights
    vim.cmd("highlight! DiffDelete guifg=#FC2947 guibg=#ffeeee")
    vim.cmd("highlight! DiffAdd guifg=#03C988 guibg=#d6ffd6")
  end,
}
