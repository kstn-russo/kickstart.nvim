local global_grep = function()
  require("telescope.builtin").live_grep {
    additional_args = function(args)
      return vim.list_extend(args, { "--hidden", "--no-ignore" })
    end,
  }
end

vim.keymap.set(
  "n",
  "<leader>sF", "<cmd>Telescope find_files hidden=true no_ignore=true<CR>",
  { desc = "Find [F]ile Global" }
);

vim.keymap.set("n", "<leader>sG", global_grep, { desc = "Search by [G]rep Global" });
vim.keymap.set("n", "<leader>x", vim.cmd.bd, { desc = "Close buffer and delete it from buffer list" });
vim.keymap.set("n", "<leader>fo", vim.cmd.Format, { desc = "[FO]rmat the current buffer" });

-- go to  beginning and end
vim.keymap.set("i", "<C-b>", "<ESC>^i", { desc = "Beginning of line" })
vim.keymap.set("i", "<C-e>", "<End>", { desc = "End of line" })

-- navigate within insert mode
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })

vim.keymap.set("n", "<leader>ch", ":noh <cr>", { desc = "[C]lear [H]ighlights" })

-- switch between windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })

-- Copy all file
vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy All file" })


vim.keymap.set("n", "<leader>lnn", "<cmd> set nu! <CR>", { desc = "Toggle [L]ine [N]umber" })
vim.keymap.set("n", "<leader>lnr", "<cmd> set rnu! <CR>", { desc = "Toggle [L]ine [R]elative [N]umber" })


vim.keymap.set("n", "<leader>tkm", "<cmd> Telescope keymaps <CR>", { desc = "[T]elescope [K]ey[M]ap" })
