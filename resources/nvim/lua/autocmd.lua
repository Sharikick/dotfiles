local function augroup(name)
  return vim.api.nvim_create_augroup("local_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup("whitespace"),
  callback = function()
    vim.cmd([[
      keeppatterns %s/\s\+$//e
    ]])
  end
})
