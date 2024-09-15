return {
    {
        -- show keymap options
        "folke/which-key.nvim",
        event = "VimEnter",
        opts = {
            icons = {
                mappings = false,
                separator = ">",
                keys = {
                    Up = "<Up>",
                    Down = "<Down>",
                    Left = "<Left>",
                    Right = "<Right>",
                    C = "<C-…>",
                    M = "<M-…>",
                    D = "<D-…>",
                    S = "<S-…>",
                    CR = "<CR>",
                    Esc = "<Esc>",
                    ScrollWheelDown = "<ScrollWheelDown>",
                    ScrollWheelUp = "<ScrollWheelUp>",
                    NL = "<NL>",
                    BS = "<BS>",
                    Space = "<Space>",
                    Tab = "<Tab>",
                    F1 = "<F1>",
                    F2 = "<F2>",
                    F3 = "<F3>",
                    F4 = "<F4>",
                    F5 = "<F5>",
                    F6 = "<F6>",
                    F7 = "<F7>",
                    F8 = "<F8>",
                    F9 = "<F9>",
                    F10 = "<F10>",
                    F11 = "<F11>",
                    F12 = "<F12>",
                },
            },

            -- document existing key chains
            spec = {
                { "<leader>g", group = "[G]lobal" },
                { "<leader>c", group = "[C]lear" },
                { "<leader>d", group = "[D]iagnostic" },
                { "<leader>s", group = "[S]earch" },
                { "<leader>w", group = "[W]indow" },
                { "<leader>t", group = "[T]oggle" },
            },
        },
    },
}
