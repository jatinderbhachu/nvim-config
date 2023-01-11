require "user.options"
require "user.plugins"
require "user.bufferline"
require "user.comment"
require "user.autocommands"
require "user.indentline"
require "user.autopairs"
require "user.alpha" -- starter window
require "user.cmp" 
require "user.lsp" 

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "cpp", "python", "lua", "javascript", "html", "c_sharp" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  --ignore_install = {  },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
}


require("gomove").setup {
  -- whether or not to map default key bindings, (true/false)
  map_defaults = false,
  -- what method to use for reindenting, ("vim-move" / "simple" / ("none"/nil))
  reindent_mode = "vim-move",
  -- whether to not to move past line when moving blocks horizontally, (true/false)
  move_past_line = false,
  -- whether or not to ignore indent when duplicating lines horizontally, (true/false)
  ignore_indent_lh_dup = true,
}

local map = require("gomove.mappings").map
map ({
  {"n", "<A-Left",    "<Plug>GoNSMLeft"},
  {"n", "<A-Right>",  "<Plug>GoNSMRight"},
  {"n", "<A-Up>",     "<Plug>GoNSMUp"},
  {"n", "<A-Down>",   "<Plug>GoNSMDown"},

  {"x", "<A-Left>",   "<Plug>GoVSMLeft"},
  {"x", "<A-Down>",   "<Plug>GoVSMDown"},
  {"x", "<A-Up>",     "<Plug>GoVSMUp"},
  {"x", "<A-Right>",  "<Plug>GoVSMRight"},

  {"n", "<A-S-Left>",   "<Plug>GoNSDLeft"},
  {"n", "<A-S-Down>",   "<Plug>GoNSDDown"},
  {"n", "<A-S-Up>",     "<Plug>GoNSDUp"},
  {"n", "<A-S-Right>",  "<Plug>GoNSDRight"},

  {"x", "<A-S-Left>",   "<Plug>GoVSDLeft"},
  {"x", "<A-S-Down>",   "<Plug>GoVSDDown"},
  {"x", "<A-S-Up>",     "<Plug>GoVSDUp"},
  {"x", "<A-S-Right>",  "<Plug>GoVSDRight"},
})

require "user.keymaps"

vim.cmd [[
  colorscheme srcery
]]


