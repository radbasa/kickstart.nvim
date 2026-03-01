-- local r_home = vim.fn.system('R RHOME'):gsub('%s+', '')
-- local r_binary = vim.fn.system('which R'):gsub('%s+', '')

return {
  {
    'R-nvim/R.nvim',
    lazy = false, -- Important: needs to load to set up the R workspace
    opts = {
      R_args = {
        '--quiet',
        '--no-save',
        -- '--r-binary=' .. r_binary,
      },
      hook = {
        after_config = function()
          -- Use Radian installed via pipx/brew
          -- vim.g.R_external_term = 'radian'
          vim.g.R_external_term = 'none'
          vim.g.split_vertical = 1
          vim.g.R_httpgd = 1
        end,
        after_R_start = function()
          vim.cmd 'wincmd j'
          vim.cmd 'wincmd L'
        end,
      },
      min_editor_width = 72,
      rconsole_width = 78,
      -- Ensure it follows your 'rig' symlink
      R_path = '/usr/local/bin',
      -- R_app = 'R_HOME=' .. r_home .. ' radian',
    },
  },
}
