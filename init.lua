vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true
vim.o.guifont = 'GeistMono Nerd Font Mono'

-- [[ Setting options ]]
require 'options'

require 'keymaps'

require 'autocommands'

require 'lazy-install'

require 'lazy-plugins'

-- vim: ts=2 sts=2 sw=2 et
