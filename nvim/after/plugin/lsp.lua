require('luasnip.loaders.from_vscode').lazy_load()

local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')
local key = vim.keymap

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

lsp.setup()

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'black' },
  },
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
  }
})

key.set("n", "<C-s>", vim.lsp.buf.format)
key.set("n", "<leader>ca", vim.lsp.buf.code_action)
