local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'mrcjkb/rustaceanvim' }

vim.g.rustaceanvim = {
  tools = {},
  server = {
    default_settings = {
      ['rust-analyzer'] = {
        cargo = { allFeatures = true },
        check = { command = 'clippy' },
      },
    },
  },
  dap = {},
}
