# Personal Neovim Setup

My personal Neovim configuration built on top of [NvChad v2.5](https://nvchad.com/), optimised for a **Mac + tmux + WezTerm** workflow.

**Features**: Full LSP, AI via Copilot + Claude (CodeCompanion), Debugger (DAP), instant file switching (Harpoon), seamless tmux navigation (smart-splits), auto-formatting, linting.

## Credits

- [NvChad](https://github.com/NvChad/NvChad) — base framework
- [NvMegaChad](https://github.com/le4ker/NvMegaChad) — inspiration and plugin ideas

---

## Requirements

```bash
# Core
brew install neovim tmux
brew install --cask wezterm

# Font (icons in file tree, statusline, etc.)
brew install --cask font-jetbrains-mono-nerd-font

# Recommended CLI tools
brew install ripgrep fd
```

---

## Installation

```bash
# 1. Back up existing config
mv ~/.config/nvim ~/.config/nvim.bak

# 2. Clone this repo
git clone git@github.com:bachvudinh/my_personal_setup.git ~/.config/nvim

# 3. Symlink dotfiles
ln -sf ~/.config/nvim/.wezterm.lua ~/.wezterm.lua
ln -sf ~/.config/nvim/.tmux.conf ~/.tmux.conf

# 4. Set Anthropic API key (for CodeCompanion / Claude AI)
export ANTHROPIC_API_KEY=your_key_here

# 5. Open Neovim — plugins install automatically
nvim
```

---

## Plugin Overview

| Plugin | Purpose |
|---|---|
| [NvChad](https://nvchad.com/) | Base framework, UI, theme engine (catppuccin) |
| [codecompanion.nvim](https://github.com/olimorris/codecompanion.nvim) | Claude AI assistant in editor |
| [copilot.vim](https://github.com/github/copilot.vim) | GitHub Copilot inline suggestions |
| [copilot-cmp](https://github.com/zbirenbaum/copilot-cmp) | Copilot as completion source |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configs |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Install LSP servers, linters, formatters |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion engine |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & text objects |
| [harpoon](https://github.com/ThePrimeagen/harpoon) | Pin files and jump instantly |
| [smart-splits.nvim](https://github.com/mrjones2014/smart-splits.nvim) | Seamless Neovim ↔ tmux navigation |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File explorer sidebar |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Auto-formatting on save |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Linting |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debugger (Go + Python) |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) | Debugger UI |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git decorations, inline blame, hunk tools |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Toggle comments |
| [markdown-preview](https://github.com/iamcco/markdown-preview.nvim) | Live markdown preview in browser |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto close brackets/quotes |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippets |

---

## Languages Supported

### LSP Servers
`gopls` · `pyright` · `ts_ls` · `ruby_lsp` · `lua_ls` · `bashls` · `clangd` · `cssls` · `dockerls` · `html` · `marksman` · `taplo` · `terraformls` · `tflint` · `vimls` · `yamlls`

### Formatters
Go · Python · TypeScript · JavaScript · Ruby · Lua · C/C++ · CSS/SCSS · HTML · JSON · Markdown · SQL · Shell · Terraform · TOML · YAML

### Linters
Go (`golangci-lint`) · Python (`pylint`) · Ruby (`rubocop`) · Markdown (`markdownlint`) · Terraform (`tflint`)

Run `:Mason` to install/manage all tools.

---

## Full Cheatsheet

> **Leader key = `Space`**

---

### Modes

| Key | Action |
|---|---|
| `i` | Enter insert mode |
| `jk` | Exit insert mode → normal mode |
| `v` | Visual mode |
| `V` | Visual line mode |
| `Ctrl+v` | Visual block mode |
| `Esc` | Clear search highlights (normal mode) |

---

### AI — CodeCompanion (Claude) + Copilot

| Key | Action |
|---|---|
| `<Space>cc` | Toggle Claude chat panel |
| `<Space>ca` | Claude code actions |
| `<Space>ci` | Inline Claude assist (visual mode) |
| `<Space>cp` | Toggle GitHub Copilot on/off |

---

### File Navigation

#### Harpoon — instant file switching

| Key | Action |
|---|---|
| `<Space>a` | Pin current file |
| `Ctrl+e` | Open harpoon menu |
| `Ctrl+1` | Jump to pinned file 1 |
| `Ctrl+2` | Jump to pinned file 2 |
| `Ctrl+3` | Jump to pinned file 3 |
| `Ctrl+4` | Jump to pinned file 4 |
| `<Space>hn` | Next file in harpoon list |
| `<Space>hp` | Previous file in harpoon list |

#### Telescope — fuzzy finder

| Key | Action |
|---|---|
| `<Space>ff` | Find files |
| `<Space>fa` | Find ALL files (hidden + gitignored) |
| `<Space>fw` | Live grep — search text in project |
| `<Space>fb` | Find open buffers |
| `<Space>th` | Browse & switch themes |
| `<Space>pt` | Pick a hidden terminal |

#### File Tree (nvim-tree)

| Key | Action |
|---|---|
| `Ctrl+n` | Toggle file tree |
| `<Space>e` | Focus file tree |
| `a` | Create file/folder |
| `d` | Delete |
| `r` | Rename |
| `c` / `p` / `x` | Copy / Paste / Cut |
| `Enter` or `o` | Open file |
| `W` | Collapse all |
| `H` | Toggle hidden files |

---

### Window & Pane Navigation

> Seamless between Neovim splits and tmux panes via smart-splits

| Key | Action |
|---|---|
| `Ctrl+h` | Move left |
| `Ctrl+j` | Move down |
| `Ctrl+k` | Move up |
| `Ctrl+l` | Move right |
| `Option+h` | Resize left |
| `Option+j` | Resize down |
| `Option+k` | Resize up |
| `Option+l` | Resize right |
| `Ctrl+W L` | Move window to far right |
| `Ctrl+W H` | Move window to far left |
| `Ctrl+W J` | Move window to bottom |
| `Ctrl+W K` | Move window to top |

#### Splits & Buffers

| Key | Action |
|---|---|
| `<Space>v` | Vertical split |
| `Tab` | Next buffer |
| `Shift+Tab` | Previous buffer |
| `<Space>x` | Close buffer |
| `<Space>b` | New empty buffer |

---

### LSP — Language Intelligence

| Key | Action | VSCode Equivalent |
|---|---|---|
| `gd` | Go to definition | `F12` |
| `gD` | Go to declaration | — |
| `gi` | Go to implementation | `Ctrl+F12` |
| `gr` | Show references | `Shift+F12` |
| `gt` | Go to type definition | — |
| `K` | Hover documentation | Mouse hover |
| `<Space>rn` | Rename symbol | `F2` |
| `<Space>ld` | Show line diagnostics | hover squiggle |
| `[d` | Previous diagnostic | — |
| `]d` | Next diagnostic | — |
| `<Space>ti` | Toggle inlay hints | — |

---

### Git (gitsigns)

> Inline blame is always on — shows author on current line

| Key | Action |
|---|---|
| `]c` | Next git hunk |
| `[c` | Previous git hunk |
| `<Space>rh` | Reset hunk |
| `<Space>ph` | Preview hunk |
| `<Space>gb` | Blame current line (popup) |
| `<Space>td` | Toggle deleted lines |
| `<Space>cm` | Git commits (Telescope) |
| `<Space>gt` | Git status (Telescope) |

---

### Debugger (DAP)

#### Go

| Key | Action |
|---|---|
| `<Space>db` | Toggle breakpoint |
| `<Space>dc` | Continue |
| `<Space>dso` | Step over |
| `<Space>dsi` | Step into |
| `<Space>dt` | Terminate |
| `<Space>dgt` | Debug Go test under cursor |
| `<Space>dglt` | Debug last Go test |

#### Python

| Key | Action |
|---|---|
| `<Space>dpt` | Debug Python test method |

---

### Terminal

| Key | Action |
|---|---|
| `<Space>h` | New horizontal terminal |
| `jk` | Close terminal |
| `ESC ESC` | Close terminal |
| `Ctrl+W L` | Move terminal to right side |
| `i` | Re-enter terminal mode |

---

### Editing

| Key | Action |
|---|---|
| `<Space>/` | Toggle comment (normal & visual) |
| `<Space>s` | Save file |
| `<Space>v` | Vertical split |
| `<Space>fmt` | Toggle format on save |
| `<Space>pr` | Toggle Markdown preview |
| `<Space>lu` | Update all plugins (Lazy) |
| `<C-c>` | Copy entire file to clipboard |
| `Shift+U` | Redo |
| `Ctrl+d` | Scroll half page down (centered) |
| `Ctrl+u` | Scroll half page up (centered) |

#### Insert Mode Movement

| Key | Action |
|---|---|
| `Ctrl+h/l/j/k` | Move cursor left/right/down/up |

#### Visual Mode

| Key | Action |
|---|---|
| `d` or `x` | Delete selected |
| `c` | Delete and enter insert |
| `y` | Yank (copy) |
| `<Space>/` | Comment selection |

---

### NvChad UI

| Key | Action |
|---|---|
| `<Space>ch` | NvChad cheatsheet |
| `<Space>th` | Theme switcher |

---

## tmux Cheatsheet

> Prefix = `Ctrl+A`

| Key | Action |
|---|---|
| `Ctrl+A c` | New window |
| `Ctrl+A \|` | Split vertically |
| `Ctrl+A -` | Split horizontally |
| `Ctrl+A 1-4` | Switch window |
| `Ctrl+A r` | Reload config |
| `Ctrl+A d` | Detach session |
| `Ctrl+A [` | Scroll mode (`q` to exit) |
| `Ctrl+h/j/k/l` | Move between panes / nvim splits |
| `Option+h/j/k/l` | Resize panes |

```bash
tmux new -s work       # start session
tmux ls                # list sessions
tmux attach -t work    # attach
```

---

## WezTerm Cheatsheet (Mac)

| Key | Action |
|---|---|
| `Cmd+T` | New tab |
| `Cmd+W` | Close tab |
| `Cmd+[` / `Cmd+]` | Previous / next tab |
| `Cmd+1-5` | Jump to tab |
| `Cmd+D` | Split vertically |
| `Cmd+Shift+D` | Split horizontally |
| `Cmd+Enter` | Fullscreen |
| `Cmd+h/j/k/l` | Move between panes |

---

## Recommended Workflow

```
WezTerm
└── tmux session "work"
    ├── window 1: nvim  (Ctrl+A 1)
    │   ├── harpoon pins → Ctrl+1/2/3/4 instant jump
    │   ├── Space+ff to find any file
    │   ├── Space+cc to open Claude chat
    │   └── Ctrl+hjkl to move between splits
    └── window 2: shell  (Ctrl+j from nvim)
```

### Daily Flow

1. `tmux new -s myproject`
2. `nvim .` — open editor
3. Pin your main files with `<Space>a`, jump with `Ctrl+1-4`
4. `<Space>fw` to search across the project
5. `<Space>cc` to ask Claude for help
6. `Ctrl+j` to drop into terminal, `Ctrl+k` to come back

---

## Tips for VSCode Refugees

| VSCode | Neovim |
|---|---|
| `Ctrl+P` | `<Space>ff` |
| `Ctrl+Shift+F` | `<Space>fw` |
| Click tabs | Harpoon `Ctrl+1-4` |
| `F12` go to definition | `gd` |
| `F2` rename | `<Space>rn` |
| `Ctrl+.` code actions | `<Space>ca` (Claude) |
| Integrated terminal | tmux + `Ctrl+j` |
| `Ctrl+Z` undo | `u` |
| `Ctrl+Shift+Z` redo | `Shift+U` |
| Select all | `ggVG` |
| Duplicate line | `yyp` |
| Delete line | `dd` |
| Comment line | `<Space>/` |
| AI assistant | `<Space>cc` (Claude) |
