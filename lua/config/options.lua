-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- get the current operating system name
local os_name = vim.uv.os_uname().sysname

-- set language to English
if os_name == "Windows_NT" then
  vim.env.LANG = "en_US.UTF-8"
end

-- neovide configuration
if vim.g.neovide then
  if os_name == "Windows_NT" then
    vim.o.guifont = "JetBrainsMono Nerd Font Mono:h10"
  elseif os_name == "Darwin" then
    vim.o.guifont = "JetBrainsMono Nerd Font Mono:h13"
  else
    vim.o.guifont = "JetBrainsMono Nerd Font Mono:h12"
  end
  vim.o.linespace = 3
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
