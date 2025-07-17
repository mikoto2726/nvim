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
local package_path_str = "/home/kali/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/kali/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/kali/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/kali/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kali/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\n‰\5\0\0\6\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\t\0005\4\6\0005\5\a\0=\5\b\4=\4\n\3=\3\v\0025\3\f\0005\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\16rag_service\nembed\1\0\5\rprovider\vopenai\nextra\0\nmodel\27text-embedding-3-large\rendpoint\30https://api.openai.com/v1\fapi_key\19OPENAI_API_KEY\bllm\1\0\5\rprovider\vopenai\nextra\0\nmodel\21gpt-4o-mini-128k\rendpoint\30https://api.openai.com/v1\fapi_key\19OPENAI_API_KEY\1\0\6\fenabled\2\nembed\0\bllm\0\22docker_extra_args\5\vrunner\vdocker\15host_mount4/home/kali/Documents/bug_bounty/raydium-cp-swap\14providers\fcopilot\1\0\1\fcopilot\0\23extra_request_body\1\0\2\15max_tokens\3Ä†\1\16temperature\3\0\1\0\4\nmodel\vgpt-4o\ftimeout\3∞Í\1\rendpoint\"https://api.githubcopilot.com\23extra_request_body\0\14behaviour\1\0\1%auto_apply_diff_after_generation\2\1\0\4\16rag_service\0\14behaviour\0\rprovider\fcopilot\14providers\0\nsetup\vavante\frequire\0" },
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/avante.nvim",
    url = "/home/kali/Documents/bug_bounty/avante.nvim2/avante.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["copilot.lua"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["eslint.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/eslint.nvim",
    url = "https://github.com/MunifTanjim/eslint.nvim"
  },
  ["img-clip.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/img-clip.nvim",
    url = "https://github.com/HakonHarnes/img-clip.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nÚ\5\0\0\6\0\27\0>6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\5\0005\5\6\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\a\0005\5\b\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\t\0005\5\n\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\v\0005\5\f\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\r\0005\5\14\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\15\0005\5\16\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\17\0005\5\18\0B\1\4\0019\1\19\0005\3\23\0005\4\20\0005\5\21\0=\5\22\4=\4\24\0035\4\25\0=\4\26\3B\1\2\1K\0\1\0\nscope\1\0\4\fenabled\2\14highlight\rIblScope\rshow_end\2\15show_start\2\vindent\1\0\2\nscope\0\vindent\0\14highlight\1\a\0\0\17IndentLevel1\17IndentLevel2\17IndentLevel3\17IndentLevel4\17IndentLevel5\17IndentLevel6\1\0\2\tchar\b‚îÇ\14highlight\0\nsetup\1\0\2\afg\f#89a7d0\14nocombine\2\rIblScope\1\0\2\afg\f#8aaed0\14nocombine\2\17IndentLevel6\1\0\2\afg\f#729bc4\14nocombine\2\17IndentLevel5\1\0\2\afg\f#5a8bb8\14nocombine\2\17IndentLevel4\1\0\2\afg\f#447aad\14nocombine\2\17IndentLevel3\1\0\2\afg\f#316aa1\14nocombine\2\17IndentLevel2\1\0\2\afg\f#205d96\14nocombine\2\17IndentLevel1\16nvim_set_hl\bapi\bvim\bibl\frequire\0" },
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
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
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
    config = { "\27LJ\2\nü\2\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\tfold\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\2\venable\2\19ignore_install\1\2\0\0\ffortran\1\0\5\vindent\0\tfold\0\14highlight\0\19ignore_install\0\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
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
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["render-markdown.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/render-markdown.nvim",
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  },
  ["snacks.nvim"] = {
    loaded = true,
    path = "/home/kali/.local/share/nvim/site/pack/packer/start/snacks.nvim",
    url = "https://github.com/folke/snacks.nvim"
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
    config = { "\27LJ\2\nê\1\0\0\5\1\a\0\16-\0\0\0'\1\1\0006\2\2\0-\4\0\0009\4\3\0049\4\4\4\21\4\4\0B\2\2\2'\3\5\0&\1\3\1=\1\0\0-\0\0\0\18\2\0\0009\0\6\0B\0\2\1K\0\1\0\1¿\frefresh\t ‰ª∂\fresults\vfinder\rtostring\24üîç Ê§úÁ¥¢ÁµêÊûú: \18results_titleV\1\1\6\1\4\0\v-\1\0\0009\1\0\1\18\3\0\0B\1\2\0026\2\1\0009\2\2\0023\4\3\0)\5d\0B\2\3\0012\0\0ÄK\0\1\0\0\0\0\rdefer_fn\bvim\23get_current_picker:\0\1\4\2\1\0\b-\1\0\0\18\3\0\0B\1\2\1-\1\1\0009\1\0\1\18\3\0\0B\1\2\1K\0\1\0\2¿\1\0\19select_defaulth\1\2\b\2\6\0\0193\2\0\0\18\3\1\0'\5\1\0'\6\2\0003\a\3\0B\3\4\1\18\3\1\0'\5\1\0'\6\4\0\18\a\2\0B\3\4\1\18\3\1\0'\5\5\0'\6\4\0\18\a\2\0B\3\4\1+\3\2\0002\0\0ÄL\3\2\0\2¿\1¿\6n\n<C-r>\0\t<CR>\6i\0å\n\1\0\v\0002\0`6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0005\5\25\0005\6\5\0005\a\6\0=\a\a\0065\a\b\0=\a\t\0065\a\18\0005\b\v\0009\t\n\1=\t\f\b9\t\r\1=\t\14\b9\t\15\0019\n\16\1 \t\n\t=\t\17\b=\b\19\a5\b\20\0009\t\n\1=\t\f\b9\t\r\1=\t\14\b=\b\21\a=\a\22\0063\a\23\0=\a\24\6=\6\26\0055\6\28\0005\a\27\0=\a\29\6=\6\30\5B\3\2\0019\3\31\0'\5\29\0B\3\2\0019\3\31\0'\5 \0B\3\2\0019\3\31\0'\5!\0B\3\2\0016\3\0\0'\5\"\0B\3\2\0026\4#\0009\4$\0049\4%\4'\6\21\0'\a&\0009\b'\0034\t\0\0B\4\5\0016\4#\0009\4$\0049\4%\4'\6\21\0'\a(\0009\b)\0034\t\0\0B\4\5\0016\4#\0009\4$\0049\4%\4'\6\21\0'\a*\0009\b+\0034\t\0\0B\4\5\0016\4#\0009\4$\0049\4%\4'\6\21\0'\a,\0'\b-\0005\t.\0B\4\5\0016\4#\0009\4$\0049\4%\4'\6\21\0'\a/\0'\b0\0005\t1\0B\4\5\0012\0\0ÄK\0\1\0\1\0\1\fnoremap\2\27:Telescope project<CR>\15<Leader>fp\1\0\1\fnoremap\2 :Telescope file_browser<CR>\15<Leader>fb\14git_files\15<Leader>fg\14live_grep\n<C-f>\15find_files\n<C-p>\bset\vkeymap\bvim\22telescope.builtin\fproject\17file_browser\19load_extension\15extensions\bfzf\1\0\1\bfzf\0\1\0\4\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\rdefaults\1\0\2\15extensions\0\rdefaults\0\20attach_mappings\0\rmappings\6n\1\0\2\n<C-j>\0\n<C-k>\0\6i\1\0\2\6n\0\6i\0\n<C-q>\16open_qflist\19send_to_qflist\n<C-k>\28move_selection_previous\n<C-j>\1\0\3\n<C-j>\0\n<C-q>\0\n<C-k>\0\24move_selection_next\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\18layout_config\1\0\4\nwidth\4Õô≥Ê\fÃô≥ˇ\3\19preview_cutoff\3\1\20prompt_position\vbottom\vheight\4Õô≥Ê\fÃô≥ˇ\3\1\0\n\17initial_mode\vinsert\rmappings\0\18layout_config\0\17entry_prefix\a  \20layout_strategy\rvertical\20selection_caret\t‚û§ \18prompt_prefix\nüîç \20attach_mappings\0\16borderchars\0\rwinblend\3\n\nsetup\28telescope.actions.state\22telescope.actions\14telescope\frequire\0" },
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
try_loadstring("\27LJ\2\nü\2\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\tfold\1\0\1\venable\2\vindent\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\2\venable\2\19ignore_install\1\2\0\0\ffortran\1\0\5\vindent\0\tfold\0\14highlight\0\19ignore_install\0\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nê\1\0\0\5\1\a\0\16-\0\0\0'\1\1\0006\2\2\0-\4\0\0009\4\3\0049\4\4\4\21\4\4\0B\2\2\2'\3\5\0&\1\3\1=\1\0\0-\0\0\0\18\2\0\0009\0\6\0B\0\2\1K\0\1\0\1¿\frefresh\t ‰ª∂\fresults\vfinder\rtostring\24üîç Ê§úÁ¥¢ÁµêÊûú: \18results_titleV\1\1\6\1\4\0\v-\1\0\0009\1\0\1\18\3\0\0B\1\2\0026\2\1\0009\2\2\0023\4\3\0)\5d\0B\2\3\0012\0\0ÄK\0\1\0\0\0\0\rdefer_fn\bvim\23get_current_picker:\0\1\4\2\1\0\b-\1\0\0\18\3\0\0B\1\2\1-\1\1\0009\1\0\1\18\3\0\0B\1\2\1K\0\1\0\2¿\1\0\19select_defaulth\1\2\b\2\6\0\0193\2\0\0\18\3\1\0'\5\1\0'\6\2\0003\a\3\0B\3\4\1\18\3\1\0'\5\1\0'\6\4\0\18\a\2\0B\3\4\1\18\3\1\0'\5\5\0'\6\4\0\18\a\2\0B\3\4\1+\3\2\0002\0\0ÄL\3\2\0\2¿\1¿\6n\n<C-r>\0\t<CR>\6i\0å\n\1\0\v\0002\0`6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0005\5\25\0005\6\5\0005\a\6\0=\a\a\0065\a\b\0=\a\t\0065\a\18\0005\b\v\0009\t\n\1=\t\f\b9\t\r\1=\t\14\b9\t\15\0019\n\16\1 \t\n\t=\t\17\b=\b\19\a5\b\20\0009\t\n\1=\t\f\b9\t\r\1=\t\14\b=\b\21\a=\a\22\0063\a\23\0=\a\24\6=\6\26\0055\6\28\0005\a\27\0=\a\29\6=\6\30\5B\3\2\0019\3\31\0'\5\29\0B\3\2\0019\3\31\0'\5 \0B\3\2\0019\3\31\0'\5!\0B\3\2\0016\3\0\0'\5\"\0B\3\2\0026\4#\0009\4$\0049\4%\4'\6\21\0'\a&\0009\b'\0034\t\0\0B\4\5\0016\4#\0009\4$\0049\4%\4'\6\21\0'\a(\0009\b)\0034\t\0\0B\4\5\0016\4#\0009\4$\0049\4%\4'\6\21\0'\a*\0009\b+\0034\t\0\0B\4\5\0016\4#\0009\4$\0049\4%\4'\6\21\0'\a,\0'\b-\0005\t.\0B\4\5\0016\4#\0009\4$\0049\4%\4'\6\21\0'\a/\0'\b0\0005\t1\0B\4\5\0012\0\0ÄK\0\1\0\1\0\1\fnoremap\2\27:Telescope project<CR>\15<Leader>fp\1\0\1\fnoremap\2 :Telescope file_browser<CR>\15<Leader>fb\14git_files\15<Leader>fg\14live_grep\n<C-f>\15find_files\n<C-p>\bset\vkeymap\bvim\22telescope.builtin\fproject\17file_browser\19load_extension\15extensions\bfzf\1\0\1\bfzf\0\1\0\4\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\rdefaults\1\0\2\15extensions\0\rdefaults\0\20attach_mappings\0\rmappings\6n\1\0\2\n<C-j>\0\n<C-k>\0\6i\1\0\2\6n\0\6i\0\n<C-q>\16open_qflist\19send_to_qflist\n<C-k>\28move_selection_previous\n<C-j>\1\0\3\n<C-j>\0\n<C-q>\0\n<C-k>\0\24move_selection_next\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\18layout_config\1\0\4\nwidth\4Õô≥Ê\fÃô≥ˇ\3\19preview_cutoff\3\1\20prompt_position\vbottom\vheight\4Õô≥Ê\fÃô≥ˇ\3\1\0\n\17initial_mode\vinsert\rmappings\0\18layout_config\0\17entry_prefix\a  \20layout_strategy\rvertical\20selection_caret\t‚û§ \18prompt_prefix\nüîç \20attach_mappings\0\16borderchars\0\rwinblend\3\n\nsetup\28telescope.actions.state\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: jupytext.vim
time([[Config for jupytext.vim]], true)
try_loadstring("\27LJ\2\n9\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\15py:percent\17jupytext_fmt\6g\bvim\0", "config", "jupytext.vim")
time([[Config for jupytext.vim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nÚ\5\0\0\6\0\27\0>6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\5\0005\5\6\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\a\0005\5\b\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\t\0005\5\n\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\v\0005\5\f\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\r\0005\5\14\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\15\0005\5\16\0B\1\4\0016\1\2\0009\1\3\0019\1\4\1)\3\0\0'\4\17\0005\5\18\0B\1\4\0019\1\19\0005\3\23\0005\4\20\0005\5\21\0=\5\22\4=\4\24\0035\4\25\0=\4\26\3B\1\2\1K\0\1\0\nscope\1\0\4\fenabled\2\14highlight\rIblScope\rshow_end\2\15show_start\2\vindent\1\0\2\nscope\0\vindent\0\14highlight\1\a\0\0\17IndentLevel1\17IndentLevel2\17IndentLevel3\17IndentLevel4\17IndentLevel5\17IndentLevel6\1\0\2\tchar\b‚îÇ\14highlight\0\nsetup\1\0\2\afg\f#89a7d0\14nocombine\2\rIblScope\1\0\2\afg\f#8aaed0\14nocombine\2\17IndentLevel6\1\0\2\afg\f#729bc4\14nocombine\2\17IndentLevel5\1\0\2\afg\f#5a8bb8\14nocombine\2\17IndentLevel4\1\0\2\afg\f#447aad\14nocombine\2\17IndentLevel3\1\0\2\afg\f#316aa1\14nocombine\2\17IndentLevel2\1\0\2\afg\f#205d96\14nocombine\2\17IndentLevel1\16nvim_set_hl\bapi\bvim\bibl\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: avante.nvim
time([[Config for avante.nvim]], true)
try_loadstring("\27LJ\2\n‰\5\0\0\6\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\t\0005\4\6\0005\5\a\0=\5\b\4=\4\n\3=\3\v\0025\3\f\0005\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\16rag_service\nembed\1\0\5\rprovider\vopenai\nextra\0\nmodel\27text-embedding-3-large\rendpoint\30https://api.openai.com/v1\fapi_key\19OPENAI_API_KEY\bllm\1\0\5\rprovider\vopenai\nextra\0\nmodel\21gpt-4o-mini-128k\rendpoint\30https://api.openai.com/v1\fapi_key\19OPENAI_API_KEY\1\0\6\fenabled\2\nembed\0\bllm\0\22docker_extra_args\5\vrunner\vdocker\15host_mount4/home/kali/Documents/bug_bounty/raydium-cp-swap\14providers\fcopilot\1\0\1\fcopilot\0\23extra_request_body\1\0\2\15max_tokens\3Ä†\1\16temperature\3\0\1\0\4\nmodel\vgpt-4o\ftimeout\3∞Í\1\rendpoint\"https://api.githubcopilot.com\23extra_request_body\0\14behaviour\1\0\1%auto_apply_diff_after_generation\2\1\0\4\16rag_service\0\14behaviour\0\rprovider\fcopilot\14providers\0\nsetup\vavante\frequire\0", "config", "avante.nvim")
time([[Config for avante.nvim]], false)
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
