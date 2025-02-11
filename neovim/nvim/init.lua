require("keymappings");

local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

local cmd = require('pckr.loader.cmd')
local keys = require('pckr.loader.keys')

require('pckr').add{
  -- My plugins here
  -- 'foo1/bar1.nvim';
  -- 'foo2/bar2.nvim';
  { 'tpope/vim-dispatch' };
  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' };
  { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cond = cmd('MarkdownPreview') };
  { 'godlygeek/tabular' };
  { 'vim-scripts/DoxygenToolkit.vim' };
  { 'junegunn/fzf.vim' };
}

vim.cmd('colorscheme vim')
