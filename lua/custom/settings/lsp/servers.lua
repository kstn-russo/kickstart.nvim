local servers = {

  tsserver = {},

  gopls = {},

  html = { filetypes = { 'html', 'twig', 'hbs'} },

  intelephense = {},

  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },

  pyright = {},

  sqlls = {},
}

return servers
