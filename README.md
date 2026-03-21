# Personal Neovim Setup

My personal Neovim configuration built on top of [NvChad v2.5](https://nvchad.com/), optimised for a Mac + tmux + WezTerm workflow. Includes full LSP support, AI completion via Copilot, debugger (DAP), and fast file navigation with Harpoon.

## Credits

- [NvChad](https://github.com/NvChad/NvChad) — the base framework this config is built on
- [NvMegaChad](https://github.com/le4ker/NvMegaChad) — inspiration and plugin ideas

---

## Requirements

```bash
# Core
brew install neovim tmux
brew install --cask wezterm

# Font (icons in nvim-tree, statusline, etc.)
brew install --cask font-jetbrains-mono-nerd-font

# Optional but recommended tools (installed by Mason automatically)
brew install ripgrep fd lazygit
```

---

## Installation

```bash
# 1. Back up existing config if any
mv ~/.config/nvim ~/.config/nvim.bak

# 2. Clone this repo as your nvim config
git clone git@github.com:bachvudinh/personal_vim_setup.git ~/.config/nvim

# 3. Symlink dotfiles (run from repo root)
ln -sf ~/.config/nvim/.wezterm.lua ~/.wezterm.lua
ln -sf ~/.config/nvim/.tmux.conf ~/.tmux.conf

# 4. Open Neovim — plugins install automatically
nvim
```

---

## Plugin Overview

| Plugin | Purpose |
|---|---|
| [NvChad](https://nvchad.com/) | Base framework, UI, theme engine |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configs |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Install LSP servers, linters, formatters |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | Autocompletion engine |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & text objects |
| [harpoon](https://github.com/ThePrimeagen/harpoon) | Pin files and jump instantly (replaces tab muscle memory) |
| [smart-splits.nvim](https://github.com/mrjones2014/smart-splits.nvim) | Seamless Neovim ↔ tmux pane navigation |
| [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File explorer sidebar |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder for files, text, git |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git decorations, hunk preview, blame |
| [Comment.nvim](https://github.com/numToStr/Comment.nvim) | Toggle comments |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keymap popup guide |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto close brackets/quotes |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippets |

---

## Full Cheatsheet

> **Leader key = `Space`**

---

### Modes

| Key | Action |
|---|---|
| `i` | Enter insert mode |
| `Esc` or `jk` | Return to normal mode |
| `v` | Enter visual mode |
| `V` | Enter visual line mode |
| `Ctrl+v` | Enter visual block mode |

---

### File Navigation

#### Harpoon — instant file switching

| Key | Action |
|---|---|
| `<Space>a` | Pin current file to harpoon list |
| `Ctrl+e` | Open harpoon quick menu (edit the list) |
| `Ctrl+1` | Jump to pinned file 1 |
| `Ctrl+2` | Jump to pinned file 2 |
| `Ctrl+3` | Jump to pinned file 3 |
| `Ctrl+4` | Jump to pinned file 4 |
| `<Space>hn` | Next file in harpoon list |
| `<Space>hp` | Previous file in harpoon list |

#### Telescope — fuzzy finder

| Key | Action |
|---|---|
| `<Space>ff` | Find files in project |
| `<Space>fa` | Find ALL files (including hidden, gitignored) |
| `<Space>fw` | Live grep — search text across project |
| `<Space>fb` | Find open buffers |
| `<Space>fo` | Find recently opened files |
| `<Space>fh` | Search help tags |
| `<Space>th` | Browse and switch themes |
| `<Space>pt` | Pick a hidden terminal |

#### File Tree (nvim-tree)

| Key | Action |
|---|---|
| `Ctrl+n` | Toggle file tree |
| `<Space>e` | Focus file tree |
| `a` | Create file/folder (while in tree) |
| `d` | Delete file/folder |
| `r` | Rename file |
| `c` | Copy file |
| `p` | Paste file |
| `x` | Cut file |
| `Enter` or `o` | Open file |
| `W` | Collapse all folders |
| `H` | Toggle hidden files |

---

### Window & Pane Navigation

> Works seamlessly between Neovim splits AND tmux panes

| Key | Action |
|---|---|
| `Ctrl+h` | Move to left split / tmux pane |
| `Ctrl+j` | Move to lower split / tmux pane |
| `Ctrl+k` | Move to upper split / tmux pane |
| `Ctrl+l` | Move to right split / tmux pane |
| `Option+h` | Resize split/pane left |
| `Option+j` | Resize split/pane down |
| `Option+k` | Resize split/pane up |
| `Option+l` | Resize split/pane right |

#### Splits

| Key | Action |
|---|---|
| `<Space>v` | Open vertical split |
| `<Space>h` | Open horizontal terminal |

#### Buffers

| Key | Action |
|---|---|
| `Tab` | Next buffer |
| `Shift+Tab` | Previous buffer |
| `<Space>x` | Close current buffer |
| `<Space>b` | New empty buffer |

---

### LSP — Language Intelligence

> Works in any file with a language server active (shown in statusline)

| Key | Action | VSCode Equivalent |
|---|---|---|
| `gd` | Go to definition | `F12` |
| `gD` | Go to declaration | — |
| `gi` | Go to implementation | `Ctrl+F12` |
| `gr` | Show all references | `Shift+F12` |
| `K` | Hover documentation | Mouse hover |
| `<Space>D` | Go to type definition | — |
| `<Space>ra` | Rename symbol | `F2` |
| `<Space>ca` | Code actions | `Ctrl+.` |
| `<Space>ls` | Signature help | — |
| `<Space>f` | Show line diagnostics (float) | hover red squiggle |
| `[d` | Go to previous diagnostic | — |
| `]d` | Go to next diagnostic | — |
| `<Space>q` | Send diagnostics to location list | — |
| `<Space>fm` | Format file | `Shift+Alt+F` |
| `<Space>wa` | Add workspace folder | — |
| `<Space>wr` | Remove workspace folder | — |
| `<Space>wl` | List workspace folders | — |

#### Installed LSP Servers (via Mason)

`lua_ls` · `gopls` · `pyright` · `ts_ls` · `rust_analyzer` · `bashls` · `dockerls` · `html` · `cssls` · `jsonls` · `yamlls` · `marksman`

Run `:Mason` to install/manage servers.

---

### Git (gitsigns)

| Key | Action |
|---|---|
| `]c` | Jump to next git hunk |
| `[c` | Jump to previous git hunk |
| `<Space>rh` | Reset hunk |
| `<Space>ph` | Preview hunk diff |
| `<Space>gb` | Blame current line |
| `<Space>td` | Toggle deleted lines view |
| `<Space>cm` | Telescope: browse git commits |
| `<Space>gt` | Telescope: git status |

---

### Terminal

| Key | Action |
|---|---|
| `<Space>h` | New horizontal terminal |
| `<Space>v` | New vertical terminal |
| `Alt+i` | Toggle floating terminal |
| `Alt+h` | Toggle horizontal terminal |
| `Alt+v` | Toggle vertical terminal |
| `Ctrl+x` | Exit terminal mode (back to normal) |

---

### Editing

| Key | Action |
|---|---|
| `<Space>/` | Toggle comment (normal & visual) |
| `gcc` | Toggle comment (line) |
| `gc` | Toggle comment (motion, e.g. `gcip` = comment paragraph) |
| `<Space>cc` | Jump to current indent context |
| `Ctrl+s` | Save file |
| `Ctrl+c` | Copy entire file to clipboard |
| `<Space>b` | New buffer |

#### Insert Mode Movement (stay in insert mode)

| Key | Action |
|---|---|
| `Ctrl+h` | Move cursor left |
| `Ctrl+l` | Move cursor right |
| `Ctrl+j` | Move cursor down |
| `Ctrl+k` | Move cursor up |
| `Ctrl+b` | Jump to beginning of line |
| `Ctrl+e` | Jump to end of line |

---

### NvChad UI

| Key | Action |
|---|---|
| `<Space>ch` | Open NvChad cheatsheet |
| `<Space>th` | Browse & switch themes |
| `<Space>wK` | Show all which-key mappings |
| `<Space>wk` | Query which-key for a specific key |
| `<Space>n` | Toggle line numbers |
| `<Space>rn` | Toggle relative numbers |

---

## tmux Cheatsheet

> Prefix = `Ctrl+A`

| Key | Action |
|---|---|
| `Ctrl+A c` | New window |
| `Ctrl+A |` | Split vertically |
| `Ctrl+A -` | Split horizontally |
| `Ctrl+A 1-4` | Switch to window 1-4 |
| `Ctrl+A r` | Reload tmux config |
| `Ctrl+A d` | Detach session |
| `Ctrl+A [` | Enter scroll/copy mode (`q` to exit) |
| `Ctrl+h/j/k/l` | Move between panes (or nvim splits) |
| `Option+h/j/k/l` | Resize panes |

```bash
# Start a named session
tmux new -s work

# List sessions
tmux ls

# Attach to session
tmux attach -t work
```

---

## WezTerm Cheatsheet (Mac)

| Key | Action |
|---|---|
| `Cmd+T` | New tab |
| `Cmd+W` | Close tab |
| `Cmd+[` | Previous tab |
| `Cmd+]` | Next tab |
| `Cmd+1-5` | Jump to tab 1-5 |
| `Cmd+D` | Split pane vertically |
| `Cmd+Shift+D` | Split pane horizontally |
| `Cmd+Enter` | Toggle fullscreen |
| `Cmd+h/j/k/l` | Move between panes (forwarded as Ctrl+hjkl) |

---

## Recommended Workflow

```
WezTerm
└── tmux session "work"
    ├── window 1: nvim  (Ctrl+A 1)
    │   ├── harpoon: Ctrl+1 Ctrl+2 Ctrl+3 Ctrl+4 → instant file jump
    │   ├── telescope: Space+ff → find any file
    │   └── splits: Ctrl+hjkl to move between them
    └── window 2: shell  (Ctrl+A 2, or Ctrl+j from nvim)
```

### Daily flow

1. `tmux new -s myproject` — start a session
2. `nvim .` — open editor in window 1
3. Open your 3-4 main files → `<Space>a` to pin each one
4. `Ctrl+1/2/3/4` to jump between them instantly
5. `Ctrl+j` to drop into terminal pane, `Ctrl+k` to come back
6. `<Space>fw` when you need to search across the whole project

---

## Tips for VSCode Refugees

| You're used to | Do this instead |
|---|---|
| `Ctrl+P` to open any file | `<Space>ff` |
| `Ctrl+Shift+F` to search text | `<Space>fw` |
| Clicking tabs to switch files | Pin with `<Space>a`, jump with `Ctrl+1-4` |
| `F12` go to definition | `gd` |
| `F2` rename | `<Space>ra` |
| `Ctrl+.` code actions | `<Space>ca` |
| Integrated terminal | tmux pane below, `Ctrl+j` to reach it |
| Mouse click to move cursor | `h j k l` or click (mouse enabled) |
| `Ctrl+Z` undo | `u` |
| `Ctrl+Shift+Z` redo | `Ctrl+r` |
| Select all | `ggVG` |
| Duplicate line | `yyp` |
| Delete line | `dd` |
| Move line up/down | `ddkP` / `ddp` |
