local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("options")
require("mappings")
require("autocmd")

vim.lsp.enable({"gopls", "intelephense"})
vim.diagnostic.config({
  virtual_text = true,
})

require("lazy").setup("plugins", {
    change_detection = {
        notify = false
    }
})

vim.cmd.colorscheme("ayu")
