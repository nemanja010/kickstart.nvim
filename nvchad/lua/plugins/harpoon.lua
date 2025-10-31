return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      "<leader>a",
      mode = { 'n', 'v' },
      function()
        require("harpoon"):list():add()
      end,
      desc = "Harpoon: Add current buffer",
    },{
      "<leader>H",
      mode = { 'n', 'v' },
      function()
        require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
      end,
      desc = "Harpoon: Toggle quick menu",
    }
  },
} -- harpoon stuff
