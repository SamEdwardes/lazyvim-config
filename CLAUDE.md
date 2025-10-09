# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Neovim configuration built on top of [LazyVim](https://www.lazyvim.org), a Neovim starter template with sensible defaults and pre-configured plugins.

## Core Technologies

- **Distribution**: LazyVim (v15.x)
- **Plugin Manager**: lazy.nvim
- **Picker**: Snacks Picker (not Telescope or fzf-lua)
- **Completion**: blink.cmp (not nvim-cmp)
- **File Explorer**: neo-tree
- **Python LSP**: basedpyright

## Configuration Structure

- `init.lua` - Entry point that bootstraps lazy.nvim
- `lua/config/` - Core configuration
  - `lazy.lua` - Plugin manager setup
  - `options.lua` - Vim options and globals
  - `keymaps.lua` - Custom keymaps
  - `autocmds.lua` - Autocommands
- `lua/plugins/` - Plugin specifications (each file returns a plugin spec)
- `lazyvim.json` - LazyVim extras configuration

## Important Configuration Details

### LazyVim Extras

This config includes numerous LazyVim extras (see `lazyvim.json`), including:

- AI: copilot, copilot-chat
- Languages: python, go, typescript, astro, svelte, terraform, docker, helm, and more
- Editor: harpoon2, aerial, mini-move
- Utils: chezmoi integration

### Key Customizations

1. **Picker (Snacks)**: Uses Snacks picker with custom key mappings that avoid `<Alt-*>` (used by Aerospace window manager). Control-based mappings are used instead.

2. **Completion (blink.cmp)**:
   - Configured with ghost text
   - Custom sources: lsp, path, snippets, buffer
   - Toggle with `<leader>uB`

3. **Smart Splits**: Window navigation and resizing with `<C-h/j/k/l>` and `<C-Left/Down/Up/Right>`

4. **Custom Keymaps** (`lua/config/keymaps.lua`):
   - Page up/down centers cursor (`<C-d>`, `<C-u>`)
   - Search results centered (`n`, `N`)
   - Explorer defaults (`<leader>e`, `<leader>E`) are deleted
   - Extensive tab management under `<leader><tab>`

5. **Root Directory Detection** (`lua/config/options.lua`):
   - Uses custom logic: `{ { ".git", "lua" }, "lsp", "cwd" }`

6. **Projects**: Configured to search in `~/projects/personal` and `~/projects/posit`

### Plugin Highlights

- **Obsidian.nvim**: Integrated with vault at `~/Documents/obsidian/second-brain`
  - New notes go to `00_Inbox`
  - Templates in `06_Metadata/Templates`
  - Keymaps under `<leader>o*`

- **Copilot**: Configured with ghost text and custom keymaps
  - Enable/disable: `<leader>as` / `<leader>aS`
  - Toggle panel: `<leader>a_` or `<C-.>`

- **Conform.nvim**: Custom formatters for htmldjango (djlint, djhtml), astro (prettierd)

- **nvim-lint**: Markdown linting with markdownlint-cli2 (MD013 disabled)

## Common Commands

### Maintenance

```bash
# Clean all Neovim cache and state
just clean
```

### Development

- Files are automatically formatted on save via conform.nvim
- LSP diagnostics shown inline via basedpyright (Python), and other language servers
- No separate test/build commands - this is a Neovim config

## Working with This Config

### Adding New Plugins

1. Create new file in `lua/plugins/` with the plugin spec
2. Return a table with plugin configuration
3. LazyVim will automatically load it

### Modifying Keymaps

- User keymaps go in `lua/config/keymaps.lua`
- Plugin-specific keymaps go in respective plugin files
- LazyVim defaults: <https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua>

### Adding LazyVim Extras

- Edit `lazyvim.json` to add/remove extras
- Or use `:LazyExtras` command in Neovim

## Important Notes

- Always use internet search to look up latest LazyVim, Snacks, and blink.cmp documentation when answering questions
- Do NOT assume Telescope or nvim-cmp - this config uses Snacks picker and blink.cmp
- When suggesting keymaps, avoid `<Alt-*>` combinations (reserved for Aerospace)
- If you don't know the answer, do NOT make it up - ask for clarification
