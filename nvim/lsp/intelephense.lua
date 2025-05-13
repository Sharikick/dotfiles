local root_dir = require("util").get_root_dir({"composer.json"})

return {
  cmd = {'intelephense', '--stdio'},
  filetypes = { "php" },
  root_dir = root_dir,
  settings = {
    intelephense = {
      files = {
        maxSize = 1000000,
      },
    }
  }
}
