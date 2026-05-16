# nvim

Personal Neovim config, forked from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

## Stack additions on top of kickstart

- Rust: `rust.vim`, `rustaceanvim`
- LaTeX: `vimtex`
- Python: `pylsp` (linters off, ruff via none-ls handles it), `nvim-dap-python`
- Formatting/linting: `none-ls.nvim` + `none-ls-extras.nvim` (replaced kickstart's conform.nvim)
- Enabled by default: debug plugin, neo-tree, `custom.plugins` import

## Settings tweaks

- Nerd Font enabled
- `clipboard=unnamedplus`, relative line numbers
- Treesitter: added python, latex, rust; latex highlight via vim regex not treesitter

## Install

Cloned by my [dotfiles bootstrap](https://github.com/babuush/dotfiles):

\`\`\`bash
git clone https://github.com/babuush/nvim.git ~/.config/nvim
\`\`\`

## Syncing with upstream kickstart

\`\`\`bash
git fetch upstream
git merge upstream/master
git push origin master
\`\`\`

Resolve conflicts mostly in `init.lua`.
