local key = vim.keymap
local cmd = vim.cmd

-- ColorScheme
cmd("colorscheme kanagawa-wave")

-- Transparent
key.set("n", "<leader>t", cmd.TransparentToggle, { desc = "[T]oggle Transparent" })

-- Trouble
local trouble = require("trouble")
key.set("n", "<leader>e", function() trouble.toggle("document_diagnostics") end)

-- UndoTree
key.set("n", "<leader>u", cmd.UndotreeToggle)
