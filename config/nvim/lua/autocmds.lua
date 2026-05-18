local autocmd = nvim.api.nvim_create_autocmd

local function restore_cursor()
  -- `"` holds the cursor position of the current buffer when last exited.
  local row, col = unpack(vim.api.nvim_buf_get_mark(0, '"'))
  local line_count = vim.api.nvim_buf_line_count(0)

  if row < 1 then
    return
  end

  if row > line_count then
    row, col = line_count, 0
  end

  pcall(vim.api.nvim_win_set_cursor, 0, {row, col})

end

autocmd({"BufReadPost"}, {callback = restore_cursor})
