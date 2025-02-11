-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Basic settings
vim.opt.wrap = false

-- Macros
vim.keymap.set({ "n", "v" }, "<leader>3", "q")

function MakeTerminal()
  vim.cmd("split")
  vim.cmd("wincmd j")
  vim.cmd("terminal")
  vim.cmd("resize 15")
  vim.cmd("startinsert")
  vim.api.nvim_chan_send(vim.b.terminal_job_id, "make -j 6\n")
end

vim.api.nvim_set_keymap("n", "<leader>2", ":lua MakeTerminal()<CR>", { noremap = true, silent = true })

-- Doxygen settings
vim.g.DoxygenToolkit_commentType = "C"
