
-- =========================================================
-- 基本設定
-- =========================================================
vim.g.mapleader = ','

vim.o.termguicolors = true
vim.o.background = 'dark'
vim.o.backspace = 'indent,eol,start'
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.clipboard = 'unnamedplus'
vim.cmd('syntax enable')

-- =========================================================
-- packer.nvim
-- =========================================================
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- -------------------------------------------------------
  -- 見た目 / UI
  -- -------------------------------------------------------
  use 'preservim/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'ryanoasis/vim-devicons'
  use 'nvim-tree/nvim-web-devicons'
  use 'itchyny/lightline.vim'
  use 'airblade/vim-gitgutter'
  use 'frazrepo/vim-rainbow'
  use 'jiangmiao/auto-pairs'
  use 'honza/vim-snippets'

  use 'folke/tokyonight.nvim'

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      local ibl = require("ibl")

      vim.api.nvim_set_hl(0, "IndentLevel1", { fg = "#205d96", nocombine = true })
      vim.api.nvim_set_hl(0, "IndentLevel2", { fg = "#316aa1", nocombine = true })
      vim.api.nvim_set_hl(0, "IndentLevel3", { fg = "#447aad", nocombine = true })
      vim.api.nvim_set_hl(0, "IndentLevel4", { fg = "#5a8bb8", nocombine = true })
      vim.api.nvim_set_hl(0, "IndentLevel5", { fg = "#729bc4", nocombine = true })
      vim.api.nvim_set_hl(0, "IndentLevel6", { fg = "#8aaed0", nocombine = true })
      vim.api.nvim_set_hl(0, "IblScope",     { fg = "#89a7d0", nocombine = true })

      ibl.setup {
        indent = {
          char = '│',
          highlight = {
            "IndentLevel1",
            "IndentLevel2",
            "IndentLevel3",
            "IndentLevel4",
            "IndentLevel5",
            "IndentLevel6",
          },
        },
        scope = {
          enabled = true,
          show_start = true,
          show_end = true,
          highlight = "IblScope",
        },
      }
    end
  }

  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup({
        'html',
        'css',
        'javascript',
      }, {
        RGB = true,
        RRGGBB = true,
        names = false,
        RRGGBBAA = true,
        rgb_fn = true,
        hsl_fn = true,
        css = true,
        css_fn = true,
      })
    end
  }

  -- -------------------------------------------------------
  -- Treesitter
  -- -------------------------------------------------------
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = "all",
        ignore_install = { "fortran" },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = true,
        },
        indent = { enable = true },
      }
    end
  }

  -- -------------------------------------------------------
  -- LSP / 補完
  -- -------------------------------------------------------
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'neovim/nvim-lspconfig'

  use {
    'MunifTanjim/prettier.nvim',
    config = function()
      require('prettier').setup({
        bin = 'prettier',
        filetypes = { "javascript", "typescript", "html", "css", "json", "markdown" }
      })
    end
  }

  use {
    'MunifTanjim/eslint.nvim',
    config = function()
      pcall(function()
        require('eslint').setup()
      end)
    end
  }

  -- -------------------------------------------------------
  -- Markdown / notebook
  -- -------------------------------------------------------
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && npm install',
    ft = { 'markdown' }
  }

  use {
    'goerz/jupytext.vim',
    config = function()
      vim.g.jupytext_fmt = 'py:percent'
    end
  }

  -- -------------------------------------------------------
  -- Telescope
  -- -------------------------------------------------------
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'nvim-telescope/telescope-file-browser.nvim' },
      { 'nvim-telescope/telescope-project.nvim' },
    },
    config = function()
      local telescope = require('telescope')
      local actions = require('telescope.actions')

      telescope.setup{
        defaults = {
          layout_strategy = 'vertical',
          layout_config = {
            width = 0.9,
            height = 0.9,
            preview_cutoff = 1,
            prompt_position = "bottom",
          },
          winblend = 10,
          borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
          prompt_prefix = "🔍 ",
          selection_caret = "➤ ",
          entry_prefix = "  ",
          initial_mode = "insert",
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
              ["<C-c>"] = actions.close,
              ["<Esc>"] = actions.close,
            },
            n = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
            },
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          }
        }
      }

      telescope.load_extension('fzf')
      telescope.load_extension('file_browser')
      telescope.load_extension('project')

      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
      vim.keymap.set('n', '<Leader>fg', builtin.git_files, {})
      vim.keymap.set('n', '<Leader>fb', ':Telescope file_browser<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<Leader>fp', ':Telescope project<CR>', { noremap = true, silent = true })
    end
  }

  -- -------------------------------------------------------
  -- Copilot (Avanteのcopilot provider用)
  -- -------------------------------------------------------
  use {
    'zbirenbaum/copilot.lua',
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end
  }

  -- -------------------------------------------------------
  -- Avante.nvim（ローカルパス版 / Copilotのみ）
  -- -------------------------------------------------------
  
  use {
    'yetone/avante.nvim',
    branch = 'main',
    run = 'make',
    requires = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'MeanderingProgrammer/render-markdown.nvim',
      'zbirenbaum/copilot.lua',
      'stevearc/dressing.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('copilot').setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
      require('avante').setup({
        provider = 'copilot',
        behaviour = {
          auto_apply_diff_after_generation = true,
        },
        providers = {
          copilot = {
            endpoint = 'https://api.githubcopilot.com',
            model = 'gpt-4o-2024-11-20',
            timeout = 30000,
            extra_request_body = {
              temperature = 0,
              max_tokens = 20480,
            },
          },
        },
        rag_service = { enabled = false },
      })
    end
  }
  use 'wakatime/vim-wakatime'
end)

-- =========================================================
-- colorscheme
-- =========================================================
require('tokyonight').setup({
  style = "storm",
  transparent = true,
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
    functions = {},
    variables = {},
    sidebars = "dark",
  },
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff6666"
  end,
  on_highlights = function(hl, c)
    hl.TSTag = { fg = "#ff9e64", bold = true }
    hl.TSTagDelimiter = { fg = "#7aa2f7" }
    hl.TSAttribute = { fg = "#9ece6a", italic = true }
    hl.TSString = { fg = "#bb9af7" }
    hl.TSKeyword = { fg = "#f7768e", italic = true }
    hl.TSFunction = { fg = "#c0caf5" }
    hl.TSParameter = { fg = "#7dcfff" }

    hl.htmlTag = { fg = "#ff9e64", bold = true }
    hl.htmlEndTag = { fg = "#ff9e64", bold = true }
    hl.htmlTagName = { fg = "#7aa2f7" }
    hl.htmlArg = { fg = "#9ece6a", italic = true }
    hl.htmlString = { fg = "#bb9af7" }
    hl.htmlSpecialTagName = { fg = "#f7768e", italic = true }
    hl.Comment = { fg = "#5f5f87", italic = true }
  end,
})
vim.cmd('colorscheme tokyonight')

vim.cmd [[
  augroup TransparentBG
    autocmd!
    autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi NormalNC guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi EndOfBuffer guibg=NONE ctermbg=NONE
  augroup END
]]

require('nvim-web-devicons').setup { default = true }

-- =========================================================
-- NERDTree
-- =========================================================
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.cmd([[
  autocmd VimEnter * NERDTree
  autocmd bufenter * if (winnr('$') == 1 && exists('t:NERDTreeBufName') && bufname(t:NERDTreeBufName) == bufname('%')) | quit | endif
]])
vim.g.NERDTreeShowIcons = 1
vim.g.NERDTreeShowHidden = 1
vim.g.webdevicons_enable = 1
vim.g.DevIconsEnableFoldersOpenClose = 1
vim.g.WebDevIconsNerdTreeNodeDelimiter = ''
vim.g.WebDevIconsNerdTreeBeforeGlyphPadding = ''
vim.g.WebDevIconsNerdTreeAfterGlyphPadding = ' '

-- =========================================================
-- FileType別インデント
-- =========================================================
vim.cmd([[
  autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
  autocmd FileType c setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
]])

-- GitGutter
vim.g.gitgutter_enabled = 1

-- Rainbow
vim.g.rainbow_active = 1

-- Python spell
vim.cmd([[
  autocmd FileType python setlocal spell spelllang=en
]])

-- 検索ハイライト解除
vim.api.nvim_set_keymap('n', '<leader>/', ':nohlsearch<CR>', { noremap = true, silent = true })

-- =========================================================
-- coc.nvim
-- =========================================================
vim.cmd('let g:coc_global_extensions = ["coc-tsserver", "coc-eslint", "coc-prettier", "coc-json", "coc-html", "coc-css"]')

vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true, noremap = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { expr = true, noremap = true })
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "\\<CR>"', { expr = true, noremap = true })

-- jj / kk で保存してノーマルへ
vim.keymap.set("i", "jj", "<esc>l<cmd>w<CR>")
vim.keymap.set("i", "kk", "<esc>l<cmd>w<CR>")

-- terminal から抜ける
vim.api.nvim_set_keymap('t', 'jj', '<C-\\><C-n>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', 'kk', '<C-\\><C-n>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- 保存時フォーマット（:Prettier がある前提）
vim.cmd([[
  autocmd BufWritePre *.js,*.ts,*.jsx,*.tsx,*.json,*.html,*.css,*.md Prettier
]])

-- Cocの手動フォーマット
vim.api.nvim_set_keymap('n', '<leader>f', ':CocCommand prettier.formatFile<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':CocCommand eslint.executeAutofix<CR>', { noremap = true, silent = true })

-- markdown-preview
vim.g.mkdp_preview_options = {
  mkit = {},
  katex = {
    macros = {
      ["\\RR"] = "\\mathbb{R}"
    }
  },
  uml = {},
  maid = {},
  disable_sync_scroll = 0,
  sync_scroll_type = 'middle',
  hide_yaml_meta = 1
}

-- terminal split
vim.api.nvim_set_keymap('n', '<Leader>th', ':split | terminal<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>tv', ':vsplit | terminal<CR>', { noremap = true, silent = true })

-- lightline: フルパス表示
vim.g.lightline = {
  active = {
    left = {
      { 'mode', 'paste' },
      { 'readonly', 'relativepath', 'modified' }
    }
  },
  component_function = {
    filename = 'LightlineFilename'
  }
}
vim.api.nvim_exec([[
function! LightlineFilename()
  return expand('%:p')
endfunction
]], false)

vim.env.FZF_DEFAULT_OPTS = "--height 10%"

