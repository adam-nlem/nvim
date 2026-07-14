# nvim config

Personal Neovim config. Plugins are managed by Neovim's built-in `vim.pack`
(no external plugin manager needed) and pinned via `nvim-pack-lock.json`.

## Requirements

- **Neovim ≥ 0.12** (for `vim.pack`)
- **git** on `PATH` (used by `vim.pack` to fetch plugins)

## External tools

These aren't managed by `vim.pack` or Mason, so install them yourself:

| Tool | Why | macOS (Homebrew) | Linux (apt) | Linux (pacman) |
|---|---|---|---|---|
| C compiler | `nvim-treesitter` compiles parsers on install | `xcode-select --install` | `sudo apt install build-essential` | `sudo pacman -S base-devel` |
| `ripgrep` | fzf-lua's grep/live-grep pickers | `brew install ripgrep` | `sudo apt install ripgrep` | `sudo pacman -S ripgrep` |
| `fzf` | fzf-lua's matcher | `brew install fzf` | `sudo apt install fzf` | `sudo pacman -S fzf` |
| Nerd Font | icons in lualine/nvim-tree/devicons/Mason UI | `brew install --cask font-jetbrains-mono-nerdfont` (or any Nerd Font) | see [nerdfonts.com](https://www.nerdfonts.com/) | see [nerdfonts.com](https://www.nerdfonts.com/) |

Set the installed Nerd Font as your terminal's font after installing.

### Linters (nvim-lint)

Only needed for the filetypes you actually edit (see `lua/plugins/nvim-lint.lua`):

| Linter | Filetype | macOS | Linux (apt) | Linux (pacman) |
|---|---|---|---|---|
| `ruff` | Python | `brew install ruff` | `pip install ruff` | `pip install ruff` |
| `cppcheck` | C | `brew install cppcheck` | `sudo apt install cppcheck` | `sudo pacman -S cppcheck` |
| `stylelint` | CSS | `npm install -g stylelint` | `npm install -g stylelint` | `npm install -g stylelint` |
| `htmlhint` | HTML | `npm install -g htmlhint` | `npm install -g htmlhint` | `npm install -g htmlhint` |
| `phpcs` | PHP | `brew install php-code-sniffer` | `sudo apt install php-codesniffer` | `pacman -S php-codesniffer` (or via `composer`) |

`luac` (Lua) and `bash` (sh) are normally already present on macOS/Linux.

## Setup on a new machine

1. Clone this repo to `~/.config/nvim` (back up/remove any existing config first).
2. Install the requirements and external tools above.
3. Launch `nvim`. On first start, `vim.pack` reads `nvim-pack-lock.json` and
   installs every plugin at its pinned revision — confirm the install prompt,
   then `:restart`.
4. LSP servers listed in `ensure_installed` (`lua/plugins/lsp.lua`) install
   automatically the first time Mason runs. `prettier` is a formatter (not an
   LSP server) and isn't covered by `ensure_installed` — install it once with
   `:MasonInstall prettier`.

## Notes

- `lua/config/saved_theme` is local runtime state (remembers your last chosen
  colorscheme) and isn't versioned — it's regenerated the first time you
  cycle themes with `<leader>p`.
- To update pinned plugin versions later: `vim.pack.update()`, review the
  diff buffer, `:write` to confirm.
