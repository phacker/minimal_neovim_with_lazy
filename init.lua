
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter = blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch = stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.termguicolors = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.keymap.set('n', '<space> ', '<cmd>Telescope file_browser<cr>')
vim.keymap.set("n", "<leader>/", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")


require("lazy").setup({
		{ "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {}},
		{ "nvim-treesitter/nvim-treesitter" },
		{ "nvim-telescope/telescope-file-browser.nvim", dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }},
		{ "nvim-telescope/telescope-live-grep-args.nvim", dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }},
	}
)
	
vim.cmd[[colorscheme tokyonight]]
