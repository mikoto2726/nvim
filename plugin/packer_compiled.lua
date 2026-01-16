-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/kali/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?.lua;/home/kali/.cache/nvim/packer_hererocks/2.1.1741730670/share/lua/5.1/?/init.lua;/home/kali/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?.lua;/home/kali/.cache/nvim/packer_hererocks/2.1.1741730670/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kali/.cache/nvim/packer_hererocks/2.1.1741730670/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["avante.nvim"] = {
    config = { "\27LJ\2\n¯\3\0\0\6\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\0\0'\2\b\0B\0\2\0029\0\2\0005\2\t\0005\3\n\0=\3\v\0025\3\15\0005\4\f\0005\5\r\0=\5\14\4=\4\1\3=\3\16\0025\3\17\0=\3\18\2B\0\2\1K\0\1\0\16rag_service\1\0\1\fenabled\1\14providers\1\0\1\fcopilot\0\23extra_request_body\1\0\2\15max_tokens\3Ä†\1\16temperature\3\0\1\0\4\rendpoint\"https://api.githubcopilot.com\23extra_request_body\0\nmodel\22gpt-4o-2024-11-20\ftimeout\3∞Í\1\14behaviour\1\0\1%auto_apply_diff_after_generation\2\1\0\4\rprovider\fcopilot\14providers\0\16rag_service\0\14behaviour\0\vavante\npanel\1\0\1\fenabled\1\15suggestion\1\0\2\npanel\0\15suggestion\0\1\0\1\fenabled\1\nsetup\fcopilot\frequire\0" },
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/avante.nvim",
    url = "https://github.com/yetone/avante.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["copilot.lua"] = {
    config = { "\27LJ\2\nà\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\npanel\1\0\1\fenabled\1\15suggestion\1\0\2\npanel\0\15suggestion\0\1\0\1\fenabled\1\nsetup\fcopilot\frequire\0" },
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["eslint.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\veslint\frequire\30\1\0\3\0\2\0\0046\0\0\0003\2\1\0B\0\2\1K\0\1\0\0\npcall\0" },
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/eslint.nvim",
    url = "https://github.com/MunifTanjim/eslint.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nÚ\5\0\0\6\0\27\0>6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\5\0005\5\6\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\a\0005\5\b\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\t\0005\5\n\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\v\0005\5\f\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\r\0005\5\14\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\15\0005\5\16\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\17\0005\5\18\0B\1\4\0019\1\19\0005\3\23\0005\4\20\0005\5\21\0=\5\22\4=\4\24\0035\4\25\0=\4\26\3B\1\2\1K\0\1\0\nscope\1\0\4\14highlight\rIblScope\rshow_end\2\15show_start\2\fenabled\2\vindent\1\0\2\vindent\0\nscope\0\14highlight\1\a\0\0\17IndentLevel1\17IndentLevel2\17IndentLevel3\17IndentLevel4\17IndentLevel5\17IndentLevel6\1\0\2\14highlight\0\tchar\b‚îÇ\nsetup\1\0\2\afg\f#89a7d0\14nocombine\2\rIblScope\1\0\2\afg\f#8aaed0\14nocombine\2\17IndentLevel6\1\0\2\afg\f#729bc4\14nocombine\2\17IndentLevel5\1\0\2\afg\f#5a8bb8\14nocombine\2\17IndentLevel4\1\0\2\afg\f#447aad\14nocombine\2\17IndentLevel3\1\0\2\afg\f#316aa1\14nocombine\2\17IndentLevel2\1\0\2\afg\f#205d96\14nocombine\2\17IndentLevel1\16nvim_set_hl\bapi\bvim\bibl\frequire\0" },
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["jupytext.vim"] = {
    config = { "\27LJ\2\n9\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\15py:percent\17jupytext_fmt\6g\bvim\0" },
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/jupytext.vim",
    url = "https://github.com/goerz/jupytext.vim"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/kali/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nerdtree-git-plugin"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/nerdtree-git-plugin",
    url = "https://github.com/Xuyuanp/nerdtree-git-plugin"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nï\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vrgb_fn\2\bcss\2\vcss_fn\2\vhsl_fn\2\bRGB\2\rRRGGBBAA\2\nnames\1\vRRGGBB\2\1\4\0\0\thtml\bcss\15javascript\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÅ\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\2\19ignore_install\1\2\0\0\ffortran\1\0\4\19ignore_install\0\14highlight\0\21ensure_installed\ball\vindent\0\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    config = { "\27LJ\2\nò\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14filetypes\1\a\0\0\15javascript\15typescript\thtml\bcss\tjson\rmarkdown\1\0\2\bbin\rprettier\14filetypes\0\nsetup\rprettier\frequire\0" },
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["render-markdown.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/render-markdown.nvim",
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n˙\t\0\0\n\0002\0^6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\25\0005\5\4\0005\6\5\0=\6\6\0055\6\a\0=\6\b\0055\6\20\0005\a\n\0009\b\t\1=\b\v\a9\b\f\1=\b\r\a9\b\14\0019\t\15\1 \b\t\b=\b\16\a9\b\17\1=\b\18\a9\b\17\1=\b\19\a=\a\21\0065\a\22\0009\b\t\1=\b\v\a9\b\f\1=\b\r\a=\a\23\6=\6\24\5=\5\26\0045\5\28\0005\6\27\0=\6\29\5=\5\30\4B\2\2\0019\2\31\0'\4\29\0B\2\2\0019\2\31\0'\4 \0B\2\2\0019\2\31\0'\4!\0B\2\2\0016\2\0\0'\4\"\0B\2\2\0026\3#\0009\3$\0039\3%\3'\5\23\0'\6&\0009\a'\0024\b\0\0B\3\5\0016\3#\0009\3$\0039\3%\3'\5\23\0'\6(\0009\a)\0024\b\0\0B\3\5\0016\3#\0009\3$\0039\3%\3'\5\23\0'\6*\0009\a+\0024\b\0\0B\3\5\0016\3#\0009\3$\0039\3%\3'\5\23\0'\6,\0'\a-\0005\b.\0B\3\5\0016\3#\0009\3$\0039\3%\3'\5\23\0'\6/\0'\a0\0005\b1\0B\3\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\27:Telescope project<CR>\15<Leader>fp\1\0\2\fnoremap\2\vsilent\2 :Telescope file_browser<CR>\15<Leader>fb\14git_files\15<Leader>fg\14live_grep\n<C-f>\15find_files\n<C-p>\bset\vkeymap\bvim\22telescope.builtin\fproject\17file_browser\19load_extension\15extensions\bfzf\1\0\1\bfzf\0\1\0\4\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\rdefaults\1\0\2\rdefaults\0\15extensions\0\rmappings\6n\1\0\2\n<C-k>\0\n<C-j>\0\6i\1\0\2\6i\0\6n\0\n<Esc>\n<C-c>\nclose\n<C-q>\16open_qflist\19send_to_qflist\n<C-k>\28move_selection_previous\n<C-j>\1\0\5\n<Esc>\0\n<C-k>\0\n<C-j>\0\n<C-c>\0\n<C-q>\0\24move_selection_next\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\18layout_config\1\0\4\19preview_cutoff\3\1\vheight\4Õô≥Ê\fÃô≥ˇ\3\nwidth\4Õô≥Ê\fÃô≥ˇ\3\20prompt_position\vbottom\1\0\t\16borderchars\0\rwinblend\3\n\rmappings\0\17initial_mode\vinsert\17entry_prefix\a  \18layout_config\0\20selection_caret\t‚û§ \20layout_strategy\rvertical\18prompt_prefix\nüîç \nsetup\22telescope.actions\14telescope\frequire\0" },
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-rainbow"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/vim-rainbow",
    url = "https://github.com/frazrepo/vim-rainbow"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÅ\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\2\19ignore_install\1\2\0\0\ffortran\1\0\4\19ignore_install\0\14highlight\0\21ensure_installed\ball\vindent\0\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: copilot.lua
time([[Config for copilot.lua]], true)
try_loadstring("\27LJ\2\nà\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\npanel\1\0\1\fenabled\1\15suggestion\1\0\2\npanel\0\15suggestion\0\1\0\1\fenabled\1\nsetup\fcopilot\frequire\0", "config", "copilot.lua")
time([[Config for copilot.lua]], false)
-- Config for: jupytext.vim
time([[Config for jupytext.vim]], true)
try_loadstring("\27LJ\2\n9\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\15py:percent\17jupytext_fmt\6g\bvim\0", "config", "jupytext.vim")
time([[Config for jupytext.vim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\nï\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\b\vrgb_fn\2\bcss\2\vcss_fn\2\vhsl_fn\2\bRGB\2\rRRGGBBAA\2\nnames\1\vRRGGBB\2\1\4\0\0\thtml\bcss\15javascript\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: prettier.nvim
time([[Config for prettier.nvim]], true)
try_loadstring("\27LJ\2\nò\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14filetypes\1\a\0\0\15javascript\15typescript\thtml\bcss\tjson\rmarkdown\1\0\2\bbin\rprettier\14filetypes\0\nsetup\rprettier\frequire\0", "config", "prettier.nvim")
time([[Config for prettier.nvim]], false)
-- Config for: avante.nvim
time([[Config for avante.nvim]], true)
try_loadstring("\27LJ\2\n¯\3\0\0\6\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\0016\0\0\0'\2\b\0B\0\2\0029\0\2\0005\2\t\0005\3\n\0=\3\v\0025\3\15\0005\4\f\0005\5\r\0=\5\14\4=\4\1\3=\3\16\0025\3\17\0=\3\18\2B\0\2\1K\0\1\0\16rag_service\1\0\1\fenabled\1\14providers\1\0\1\fcopilot\0\23extra_request_body\1\0\2\15max_tokens\3Ä†\1\16temperature\3\0\1\0\4\rendpoint\"https://api.githubcopilot.com\23extra_request_body\0\nmodel\22gpt-4o-2024-11-20\ftimeout\3∞Í\1\14behaviour\1\0\1%auto_apply_diff_after_generation\2\1\0\4\rprovider\fcopilot\14providers\0\16rag_service\0\14behaviour\0\vavante\npanel\1\0\1\fenabled\1\15suggestion\1\0\2\npanel\0\15suggestion\0\1\0\1\fenabled\1\nsetup\fcopilot\frequire\0", "config", "avante.nvim")
time([[Config for avante.nvim]], false)
-- Config for: eslint.nvim
time([[Config for eslint.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\veslint\frequire\30\1\0\3\0\2\0\0046\0\0\0003\2\1\0B\0\2\1K\0\1\0\0\npcall\0", "config", "eslint.nvim")
time([[Config for eslint.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n˙\t\0\0\n\0002\0^6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\25\0005\5\4\0005\6\5\0=\6\6\0055\6\a\0=\6\b\0055\6\20\0005\a\n\0009\b\t\1=\b\v\a9\b\f\1=\b\r\a9\b\14\0019\t\15\1 \b\t\b=\b\16\a9\b\17\1=\b\18\a9\b\17\1=\b\19\a=\a\21\0065\a\22\0009\b\t\1=\b\v\a9\b\f\1=\b\r\a=\a\23\6=\6\24\5=\5\26\0045\5\28\0005\6\27\0=\6\29\5=\5\30\4B\2\2\0019\2\31\0'\4\29\0B\2\2\0019\2\31\0'\4 \0B\2\2\0019\2\31\0'\4!\0B\2\2\0016\2\0\0'\4\"\0B\2\2\0026\3#\0009\3$\0039\3%\3'\5\23\0'\6&\0009\a'\0024\b\0\0B\3\5\0016\3#\0009\3$\0039\3%\3'\5\23\0'\6(\0009\a)\0024\b\0\0B\3\5\0016\3#\0009\3$\0039\3%\3'\5\23\0'\6*\0009\a+\0024\b\0\0B\3\5\0016\3#\0009\3$\0039\3%\3'\5\23\0'\6,\0'\a-\0005\b.\0B\3\5\0016\3#\0009\3$\0039\3%\3'\5\23\0'\6/\0'\a0\0005\b1\0B\3\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\27:Telescope project<CR>\15<Leader>fp\1\0\2\fnoremap\2\vsilent\2 :Telescope file_browser<CR>\15<Leader>fb\14git_files\15<Leader>fg\14live_grep\n<C-f>\15find_files\n<C-p>\bset\vkeymap\bvim\22telescope.builtin\fproject\17file_browser\19load_extension\15extensions\bfzf\1\0\1\bfzf\0\1\0\4\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\rdefaults\1\0\2\rdefaults\0\15extensions\0\rmappings\6n\1\0\2\n<C-k>\0\n<C-j>\0\6i\1\0\2\6i\0\6n\0\n<Esc>\n<C-c>\nclose\n<C-q>\16open_qflist\19send_to_qflist\n<C-k>\28move_selection_previous\n<C-j>\1\0\5\n<Esc>\0\n<C-k>\0\n<C-j>\0\n<C-c>\0\n<C-q>\0\24move_selection_next\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\18layout_config\1\0\4\19preview_cutoff\3\1\vheight\4Õô≥Ê\fÃô≥ˇ\3\nwidth\4Õô≥Ê\fÃô≥ˇ\3\20prompt_position\vbottom\1\0\t\16borderchars\0\rwinblend\3\n\rmappings\0\17initial_mode\vinsert\17entry_prefix\a  \18layout_config\0\20selection_caret\t‚û§ \20layout_strategy\rvertical\18prompt_prefix\nüîç \nsetup\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nÚ\5\0\0\6\0\27\0>6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\5\0005\5\6\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\a\0005\5\b\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\t\0005\5\n\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\v\0005\5\f\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\r\0005\5\14\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\15\0005\5\16\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\17\0005\5\18\0B\1\4\0019\1\19\0005\3\23\0005\4\20\0005\5\21\0=\5\22\4=\4\24\0035\4\25\0=\4\26\3B\1\2\1K\0\1\0\nscope\1\0\4\14highlight\rIblScope\rshow_end\2\15show_start\2\fenabled\2\vindent\1\0\2\vindent\0\nscope\0\14highlight\1\a\0\0\17IndentLevel1\17IndentLevel2\17IndentLevel3\17IndentLevel4\17IndentLevel5\17IndentLevel6\1\0\2\14highlight\0\tchar\b‚îÇ\nsetup\1\0\2\afg\f#89a7d0\14nocombine\2\rIblScope\1\0\2\afg\f#8aaed0\14nocombine\2\17IndentLevel6\1\0\2\afg\f#729bc4\14nocombine\2\17IndentLevel5\1\0\2\afg\f#5a8bb8\14nocombine\2\17IndentLevel4\1\0\2\afg\f#447aad\14nocombine\2\17IndentLevel3\1\0\2\afg\f#316aa1\14nocombine\2\17IndentLevel2\1\0\2\afg\f#205d96\14nocombine\2\17IndentLevel1\16nvim_set_hl\bapi\bvim\bibl\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
