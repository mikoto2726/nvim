-- packer.nvim の初期設定
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'  -- Packerを自身で管理

  -- プラグインの定義
  use 'preservim/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'dense-analysis/ale'
  use 'itchyny/lightline.vim'  -- lightlineのプラグイン
  use 'honza/vim-snippets'
  use {'junegunn/fzf', run = function() vim.fn['fzf#install']() end}
  use 'junegunn/fzf.vim'
  use 'airblade/vim-gitgutter'
  use 'frazrepo/vim-rainbow'
  use 'jiangmiao/auto-pairs'
  use 'arcticicestudio/nord-vim'

  -- Next.jsに関連するプラグイン
  -- Treesitter: 高度なシンタックスハイライト
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = { "javascript", "typescript", "tsx", "json", "html", "css" },
        highlight = {
          enable = true,
          disable = { "lua"},
        },
        indent = {
          enable = true,  -- 自動インデントのサポート
        },
        fold = {
          enable = true,  -- コードフォールディングのサポート
        }
      }
    end
  }

  -- coc.nvim: 補完機能とLSPサポート
  use {'neoclide/coc.nvim', branch = 'release'}

  -- eslintとprettierによるリントとフォーマット
  use 'MunifTanjim/eslint.nvim'
  use 'MunifTanjim/prettier.nvim'

  -- Indentラインを表示するプラグイン (バージョン3対応)
  use 'lukas-reineke/indent-blankline.nvim'

end)

-- 基本設定
vim.o.background = 'dark'
vim.o.backspace = 'indent,eol,start'
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.clipboard = 'unnamedplus'
vim.cmd('syntax enable')

-- 背景を透明にする設定
vim.cmd [[
  augroup TransparentBG
    autocmd!
    autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi NormalNC guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi EndOfBuffer guibg=NONE ctermbg=NONE
  augroup END
]]

-- NERDTreeのショートカット設定
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.cmd([[
  autocmd VimEnter * NERDTree
  autocmd bufenter * if (winnr('$') == 1 && exists('t:NERDTreeBufName') && bufname(t:NERDTreeBufName) == bufname('%')) | quit | endif
]])
vim.g.NERDTreeShowHidden = 1
vim.cmd('highlight NERDTreeDir guifg=blue')

-- ALEの設定
vim.g.ale_linters = {
  python = {'flake8', 'pylint'},
  c = {'gcc'}
}
vim.g.ale_fixers = {
  python = {'autopep8', 'yapf'}
}
vim.g.ale_python_flake8_options = '--max-line-length=88'
vim.g.ale_fix_on_save = 1  -- 保存時に自動フォーマット

-- Fzfのショートカット設定
vim.api.nvim_set_keymap('n', '<C-p>', ':Files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':Rg<CR>', { noremap = true, silent = true })

-- PythonとC言語のインデント設定
vim.cmd([[
  autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
  autocmd FileType c setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
]])

-- GitGutterの設定
vim.g.gitgutter_enabled = 1

-- Rainbow bracketsの設定
vim.g.rainbow_active = 1

-- Pythonファイルでスペルチェックを有効化
vim.cmd([[
  autocmd FileType python setlocal spell spelllang=en
]])

-- 検索ハイライト解除のショートカット
vim.g.mapleader = ','
vim.api.nvim_set_keymap('n', '<leader>/', ':nohlsearch<CR>', { noremap = true, silent = true })

-- coc.nvimの設定
vim.cmd('let g:coc_global_extensions = ["coc-tsserver", "coc-eslint", "coc-prettier", "coc-json", "coc-html", "coc-css"]')

-- coc.nvimの補完時のTabキーの動作
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true, noremap = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', {expr = true, noremap = true})
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "\\<CR>"', {expr = true, noremap = true})

-- カラースキームをnordに設定
vim.cmd('colorscheme nord')

-- 'indent-blankline.nvim'の設定 (バージョン3対応)
local ibl = require("ibl")

-- ハイライトグループを定義
local highlight = {
    "IndentLevel1",
    "IndentLevel2",
    "IndentLevel3",
    "IndentLevel4",
    "IndentLevel5",
    "IndentLevel6",
}

-- プラグインのフックを使用してハイライトグループを設定
local hooks = require("ibl.hooks")
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "IndentLevel1", { fg = "#E06C75", nocombine = true })
    vim.api.nvim_set_hl(0, "IndentLevel2", { fg = "#E5C07B", nocombine = true })
    vim.api.nvim_set_hl(0, "IndentLevel3", { fg = "#98C379", nocombine = true })
    vim.api.nvim_set_hl(0, "IndentLevel4", { fg = "#56B6C2", nocombine = true })
    vim.api.nvim_set_hl(0, "IndentLevel5", { fg = "#61AFEF", nocombine = true })
    vim.api.nvim_set_hl(0, "IndentLevel6", { fg = "#C678DD", nocombine = true })
    vim.api.nvim_set_hl(0, "IblScope",    { fg = "#FFD700", nocombine = true })
end)

-- プラグインの設定
ibl.setup {
    indent = {
        char = '│',
        highlight = highlight,
    },
    scope = {
        enabled = true,
        show_start = true,
        show_end = true,
        highlight = "IblScope",
    },
}


-- ビジュアルモードの選択範囲の色設定
vim.cmd('highlight Visual guibg=#000080 guifg=#FFFFFF ctermbg=darkblue ctermfg=white')

