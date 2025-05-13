local root_dir = require("util").get_root_dir({"lazy-lock.json"})

return {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_dir = root_dir,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "Snacks" },
      }
    }
  }
}
