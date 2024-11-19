return {
   {
      "numToStr/FTerm.nvim",
      config = function()
         local fterm = require("FTerm")

         fterm.setup({
            -- Floating window configuration
            border = "rounded", -- options: 'single', 'double', 'rounded', 'solid', 'shadow'
            dimensions = {
               height = 0.8, -- 80% of the screen height
               width = 0.8, -- 80% of the screen width
               x = 0.4, -- Adjusted horizontal position
               y = 0.4, -- Adjusted vertical position
            },
            blend = 0, -- Transparency of the floating window
         })

         -- Set up btop in FTerm
         local btop = fterm:new({
            ft = "fterm_btop",
            cmd = "btop",
            border = "rounded",
            dimensions = {
               height = 0.8, -- 80% of the screen height
               width = 0.8, -- 80% of the screen width
               x = 0.4, -- Align with terminal window horizontally
               y = 0.4, -- Align with terminal window vertically
            },
         })

         -- Keybindings
         vim.keymap.set("n", "<leader>t", function()
            fterm.toggle()
         end)
         vim.keymap.set("t", "<leader>t", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

         -- Keybinding for toggling btop
         vim.keymap.set("n", "<leader>b", function()
            btop:toggle()
         end)
         vim.keymap.set("t", "<leader>b", function()
            btop:toggle()
         end)
      end,
   },
}

