local root_dir = require("util").get_root_dir({"go.mod"})

return {
  cmd = { "gopls" },
  filetypes = { "go" },
  root_dir = root_dir,
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    }
  }
}
