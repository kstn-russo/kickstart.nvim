local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.phpstan.with({
      extra_args = { "--level", "9" },
    }),
    null_ls.builtins.diagnostics.phpcs.with({
      extra_args = { "--standard", "/home/kr/.config/phpcs/rules.xml", },
    }),
    null_ls.builtins.formatting.pint,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.prettier,
  }
})
