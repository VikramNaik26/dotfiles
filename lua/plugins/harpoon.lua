return {
  "ThePrimeagen/harpoon",
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")
    require("telescope").load_extension("harpoon")

    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon: Mark File" })
    vim.keymap.set("n", "<leader>b", mark.rm_file, { desc = "Harpoon: Unmark File" })
    vim.keymap.set("n", "<C-h>", ui.toggle_quick_menu, { desc = "Toggle Harpoon Menu" })

    vim.keymap.set("n", "<leader>hn", function()
      ui.nav_next()
    end, { desc = "Harpoon: Next File" })
    vim.keymap.set("n", "<leader>hp", function()
      ui.nav_prev()
    end, { desc = "Harpoon: Previous File" })
    vim.keymap.set("n", "<C-t>", function()
      ui.nav_file(1)
    end, { desc = "Harpoon File 1" })
    vim.keymap.set("n", "<C-s>", function()
      ui.nav_file(2)
    end, { desc = "Harpoon File 2" })
    vim.keymap.set("n", "<C-b>", function()
      ui.nav_file(3)
    end, { desc = "Harpoon File 3" })
    vim.keymap.set("n", "<C-g>", function()
      ui.nav_file(4)
    end, { desc = "Harpoon File 4" })
  end,
}
