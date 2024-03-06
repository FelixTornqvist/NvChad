local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
-- autoformat using conform on save
autocmd("BufWritePre", {
  pattern = "*",
  command = "lua require('conform').format()",
})

-- set default terminal to git bash
-- vim.api.nvim_set_var("terminal_emulator", "bash.exe")
-- vim.o.shell = 'C:\\"Program Files"\\Git\\bin\\bash.exe'

-- set shellcmdflag=-c to run bash commands
-- vim.o.shellcmdflag = '--rcfile "C:\\Users\\Felix Törnqvist\\.bashrc" -c'
-- vim.o.shellcmdflag = "-c"

-- set relativenumber
vim.wo.relativenumber = true

-- set diff highlighting to be more visible
-- vim.cmd "highlight DiffAdd cterm=bold ctermfg=10 ctermbg=NONE"
-- vim.cmd "highlight DiffChange cterm=bold ctermfg=11 ctermbg=NONE"
-- vim.cmd "highlight DiffDelete cterm=bold ctermfg=9 ctermbg=NONE"
-- vim.cmd "highlight DiffText cterm=bold ctermfg=12 ctermbg=NONE"
