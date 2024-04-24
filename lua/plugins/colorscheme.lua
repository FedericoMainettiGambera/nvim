return {
  'rose-pine/neovim',
  name = 'rose-pine',
  init = function()
    vim.cmd.colorscheme 'rose-pine'
  end,

  -- 'nyoom-engineering/nyoom.nvim',

  -- 'craftzdog/solarized-osaka.nvim',
  -- init = function()
  --   vim.cmd.colorscheme 'solarized-osaka'
  -- end,

  lazy = false,
  priority = 1000,
}
