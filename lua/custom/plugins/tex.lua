local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'lervag/vimtex' }

vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_quickfix_open_on_warning = 0
