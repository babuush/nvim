local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'mfussenegger/nvim-dap-python' }

local debugpy = vim.fn.expand '~/.local/share/uv/tools/debugpy/bin/python'
if vim.fn.executable(debugpy) == 1 then
  require('dap-python').setup(debugpy)
else
  require('dap-python').setup 'python3'
end
