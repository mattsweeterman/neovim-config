local home = os.getenv("HOME") or os.getenv("USERPROFILE")

-- Determine platform-specific plugin path
local plugin_dir
if vim.loop.os_uname().sysname == "Windows_NT" then
  plugin_dir = home .. "\\AppData\\Local\\nvim\\pack\\themes\\start\\dracula_pro"
else
  plugin_dir = home .. "/.config/nvim/pack/themes/start/dracula_pro"
end

local local_plugins = {
  {
    "dracula_pro",
    dir = plugin_dir,
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme dracula_pro_van_helsing")
    end,
  },
}

return local_plugins
