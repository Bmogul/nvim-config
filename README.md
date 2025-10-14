# Neovim Configuration

A modern Neovim setup optimized for multi-language development with LSP, completion, and fuzzy finding.

## Plugin Manager

**lazy.nvim** - Fast and modern plugin manager with lazy loading support

## Key Plugins

### LSP & Completion
- **mason.nvim** - LSP server installer and manager
- **mason-lspconfig.nvim** - Bridge between mason and nvim-lspconfig
- **nvim-lspconfig** - Quickstart configs for LSP servers
- **nvim-cmp** - Completion engine with snippet support
- **LuaSnip** - Snippet engine
- **friendly-snippets** - Collection of pre-made snippets

### Formatting & Linting
- **none-ls.nvim** - Formatting and diagnostics via LSP
  - Formatters: stylua, prettier, black, isort, clang-format
  - Linter: eslint_d

### File Navigation
- **telescope.nvim** - Fuzzy finder for files, grep, and more
- **telescope-ui-select.nvim** - Use Telescope for vim.ui.select
- **neo-tree.nvim** - File explorer sidebar

### Syntax & Highlighting
- **nvim-treesitter** - Advanced syntax highlighting and code understanding

### UI Enhancements
- **tokyonight.nvim** - Tokyo Night colorscheme (night variant)
- **lualine.nvim** - Enhanced statusline with Tokyo Night theme
  - Git branch, diff, and diagnostics indicators
  - File encoding, format, and type information
  - Rounded component and angled section separators
- **transparent.nvim** - Transparent background support (including Neo-tree)
- **nvim-colorizer.lua** - Highlight color codes in files
- **ccc.nvim** - Color picker and converter
- **which-key.nvim** - Display available keybindings in popup
- **todo-comments.nvim** - Highlight and search TODO/FIXME/NOTE comments
- **nvim-bqf** - Better quickfix window with preview and fuzzy search

### Language-Specific
- **flutter-tools.nvim** - Enhanced Flutter/Dart development experience
- **clangd_extensions.nvim** - Advanced C/C++ features (inlay hints, AST explorer)

## Installed LSP Servers

- **lua_ls** - Lua
- **clangd** - C/C++
- **cssls** - CSS
- **dockerls** - Docker
- **graphql** - GraphQL
- **jsonls** - JSON
- **jdtls** - Java
- **prismals** - Prisma
- **pyright** - Python
- **rust_analyzer** - Rust
- **gopls** - Go
- **dartls** - Dart/Flutter

## Keybindings

### Leader Key
**Space** - Leader key for custom commands

### LSP
- `K` - Show hover documentation
- `gd` - Go to definition
- `<leader>ca` - Code actions (normal & visual mode)
- `<leader>gf` - Format current buffer

### Diagnostics
- `<leader>q` - Open diagnostics in quickfix list

### File Navigation
- `<C-p>` - Telescope: Find files
- `<leader>fg` - Telescope: Live grep (search in files)
- `<C-n>` - Toggle Neo-tree file explorer

### Completion (Insert Mode)
- `<Tab>` - Select next completion item
- `<S-Tab>` - Select previous completion item
- `<CR>` - Confirm completion
- `<C-Space>` - Trigger completion menu

### Color Picker
- `<leader>cp` - Open color picker

### TODO Comments
- `]t` - Jump to next todo comment
- `[t` - Jump to previous todo comment
- `<leader>ft` - Find all todos with Telescope

### Which-Key
- `<leader>?` - Show buffer-local keymaps

## Editor Settings

- **Indentation**: 2 spaces (tabs expanded to spaces)
- **Line numbers**: Enabled with relative numbering
- **Clipboard**: Synced with system clipboard
- **Colorscheme**: Tokyo Night (night variant)
- **Transparency**: Enabled for all windows and sidebars

## File Structure

```
~/.config/nvim/
├── init.lua                    # Entry point
├── lua/
│   ├── vim-opts.lua           # Editor settings & keybindings
│   └── plugins/
│       ├── cmp.lua            # Completion configuration
│       ├── lsp-config.lua     # LSP server setup
│       ├── none-ls.lua        # Formatting & linting
│       ├── treesitter.lua     # Syntax highlighting
│       ├── telescope.lua      # Fuzzy finder
│       ├── neotree.lua        # File explorer
│       ├── lualine.lua        # Statusline
│       ├── transparent.lua        # Transparency support
│       ├── colors.lua             # Colorscheme & color pickers
│       ├── fluttertools.lua       # Flutter/Dart tools
│       ├── clangd-extensions.lua  # C/C++ enhancements
│       ├── which-key.lua          # Keybinding helper
│       ├── todo-comments.lua      # TODO highlighting
│       └── bqf.lua                # Better quickfix
└── README.md                  # This file
```

## Notes

- Mason will auto-install configured LSP servers on first launch
- Treesitter parsers are auto-installed when opening relevant file types
- Transparency can be toggled via transparent.nvim commands
