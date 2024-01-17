local key = vim.keymap

key.set("n", "<leader>gs", vim.cmd.Git)

key.set("n", "<leader>gp", function()
  local string = vim.fn.input("Push to: ")

  if (string == "" or string == nil) then
    print("Push to: <origin> <master>")
  else
    vim.cmd("Git push " .. string)
  end
end)

key.set("n", "<leader>gP", function()
  local string = vim.fn.input("Pull from: ")

  if (string == "" or string == nil) then
    print("Pull from: <origin> <master>")
  else
    vim.cmd("Git pull " .. string)
  end
end)
