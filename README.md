# nvim

Personal Neovim config, forked from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

Tracks the upstream `rebuild` rewrite that uses Neovim's built-in `vim.pack` plugin manager. Language extras live in `lua/custom/plugins/`.

## Stack additions on top of kickstart

### Plugin manager

- Built-in `vim.pack` (replaces `lazy.nvim`). Lockfile: `nvim-pack-lock.json`. Stray `lazy-lock.json` from the old setup is unused.

### Completion

- `blink.cmp` (1.x) replaces `nvim-cmp`. Lua fuzzy implementation, sources: lsp, path, snippets.
- `LuaSnip` (2.x) as the snippet engine.

### Formatting

- `conform.nvim` replaces `none-ls.nvim` / `none-ls-extras.nvim`.
- Format-on-save gated by a filetype table in section 6 of `init.lua` (enabled for `lua`, `python`, `rust`).
- Manual format: `<leader>f`.

### LSP servers (auto-installed via `mason-tool-installer`)

- `lua_ls` (formatting disabled, `stylua` owns Lua formatting).
- `basedpyright` and `ruff` (replaces `pylsp`). Ruff handles lint plus format diagnostics, line length 100.
- `stylua` (formatter tool, not a server).

### Language extras (`lua/custom/plugins/`)

- **Rust** (`rust.lua`): `rustaceanvim` (latest, unpinned). `rust.vim` dropped. `clippy` on save, `cargo.allFeatures = true`, DAP wired.
- **LaTeX** (`tex.lua`): `vimtex` with `vimtex_view_method = 'skim'` and `latexmk` compiler. Treesitter is deliberately skipped for `tex` / `plaintex` / `latex` filetypes (see the `FileType` autocmd in section 8 of `init.lua`); vimtex handles highlighting.
- **Python debug** (`python.lua`): `nvim-dap-python`. Prefers a uv-managed `~/.local/share/uv/tools/debugpy/bin/python`, falls back to `python3`.

### Treesitter parsers

Base set: `bash`, `c`, `diff`, `html`, `lua`, `luadoc`, `markdown`, `markdown_inline`, `query`, `vim`, `vimdoc`, plus `python` and `rust`. `latex` is intentionally absent (vimtex owns it).

### kickstart extras enabled

- `kickstart.plugins.debug` (nvim-dap + dap-ui + dap-go)
- `kickstart.plugins.neo-tree`
- `custom.plugins` (loads `tex`, `rust`, `python`)

## Settings tweaks

- Nerd Font on (`vim.g.have_nerd_font = true`)
- `clipboard = unnamedplus`
- Relative line numbers (`vim.wo.relativenumber = true`)

## Install

Cloned by my [dotfiles bootstrap](https://github.com/babuush/dotfiles):

```bash
git clone https://github.com/babuush/nvim.git ~/.config/nvim
```

## Syncing with upstream kickstart

```bash
git fetch upstream
git merge upstream/master
git push origin master
```

Resolve conflicts mostly in `init.lua`.
