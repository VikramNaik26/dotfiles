return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      buffers = {
        group_empty_dirs = true, -- when true, empty folders will be grouped together
        follow_current_file = true,     -- This will find and focus the file in the active buffer every
        show_unloaded = true,
        window = {
          mappings = {
            ["bd"] = "buffer_delete",
            ["<bs>"] = "navigate_up",
            ["."] = "set_root",
          },
        },
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false, -- only works on Windows for hidden files/directories
          hide_by_name = {
            -- "node_modules"
          },
          hide_by_pattern = { -- uses glob style patterns
            -- "*.meta"
          },
          never_show = { -- remains hidden even if visible is toggled to true
            -- ".DS_Store",
            -- "thumbs.db"
          },
        },
        -- time the current file is changed while the tree is open.
        follow_current_file = true,     -- This will find and focus the file in the active buffer every
        group_empty_dirs = false,       -- when true, empty folders will be grouped together
        use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
        -- instead of relying on nvim autocmd events.
      },
      git_status = {
        window = {
          position = "float",
          mappings = {
            ["A"] = "git_add_all",
            ["gu"] = "git_unstage_file",
            ["ga"] = "git_add_file",
            ["gr"] = "git_revert_file",
            ["gc"] = "git_commit",
            ["gp"] = "git_push",
            ["gg"] = "git_commit_and_push",
          },
        },
      },
    })

    vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>", {})
    -- vim.keymap.set("n", "<C-m>", ":Neotree filesystem reveal<CR>", {})
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

    -- vim.keymap.set("n", "<leader>?", ":Neotree toggle<CR>", {})
  end,
}
