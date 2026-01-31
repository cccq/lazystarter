local hour = os.date("*t").hour
local flavor = (hour >= 8 and hour <= 18) and "latte" or "frappe"

return {
  {
    "catppuccin/nvim",
    opts = {
      flavour = flavor,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-" .. flavor,
    },
  },
}
