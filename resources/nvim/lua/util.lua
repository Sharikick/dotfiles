local M = {}

function M.get_root_dir(root_files)
  return vim.fs.dirname(vim.fs.find(root_files, { stop = vim.env.HOME })[1])
end

return M
