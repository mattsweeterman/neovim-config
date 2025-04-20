# Matt's Neovim

## Prerequisites

Make sure you have the following installed:

- [neovim](https://neovim.io/) | `brew install nvim`
- [ripgrep](https://github.com/BurntSushi/ripgrep) | `brew install ripgrep`
- [pyright](https://github.com/microsoft/pyright) | `brew install pyright`
- [luarocks](https://luarocks.org/) | `brew install luarocks`
- [luajit](https://luajit.org/luajit.html) | `brew install luajit` -> this is probably installed with luarocks check with `which luajit`
- plus any [nerd font](https://www.nerdfonts.com), currently using custom monolisa nerdfont

optional language installation: 
- node.js: `npm install -g neovim`
- python: `pip install pynvim`

---

## 🧩 Plugin Modules

- **copilot-chat.lua** – Configuration for CopilotChat.nvim, enabling conversational AI interactions inside Neovim.
  - (optionally install  lynx `brew install lynx ` used for enhanced fetching)
- **fugitive.lua** – Git integration using `vim-fugitive`, a powerful wrapper for Git commands.
- **github-copilot.lua** – Core setup for GitHub Copilot support in Neovim.
- **harpoon.lua** – Mark and navigate between files quickly using Harpoon.
- **indent.lua** – Indentation guides and behavior customization.
- **local.lua** – Personal or machine-specific plugins.
  - Dracula Pro
- **lualine.lua** – Statusline configuration using `lualine.nvim`.
- **telescope-ui-select.lua** – Enhances `vim.ui.select` using Telescope for improved picker UX.
- **telescope.lua** – Core configuration for `telescope.nvim`, fuzzy finder and more.
  - (optionally install `brew install fd` for faster/better file searching)
- **treesitter.lua** – Tree-sitter setup for syntax highlighting, folding, and more.
- **trouble.lua** – A pretty diagnostics panel using `folke/trouble.nvim`.
- **undotree.lua** – Visualize and navigate the undo history.
- **vimbegood.lua** – Plugin for practicing Vim motions and commands interactively.
- **zenmode.lua** – Distraction-free editing with `folke/zen-mode.nvim`.

---

# neovim-config
