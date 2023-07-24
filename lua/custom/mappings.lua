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
vim.keymap.set("n", "<leader>fm", vim.cmd.Format, { desc = "[F]or[M]at the current buffer" });
