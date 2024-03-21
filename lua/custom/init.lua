local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- autoformat using conform on save
autocmd("BufWritePre", {
  pattern = "*",
  command = "lua require('conform').format()",
})

-- set relativenumber
vim.wo.relativenumber = true
-- Enable blinking together with different cursor shapes for insert/command mode, and cursor highlighting:
vim.o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"
  .. ",a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
  .. ",sm:block-blinkwait175-blinkoff150-blinkon175"

-- Windows specific settings

if vim.fn.has "win32" == 1 then
  -- set shell to git bash
  vim.o.shell = 'C:\\"Program Files"\\Git\\bin\\bash.exe'
  -- set shellcmdflag=-c to run bash commands
  vim.o.shellcmdflag = "-c"
end
