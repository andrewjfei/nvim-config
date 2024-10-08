return {
    -- status line
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = false,
                component_separators = {
                    left = "",
                    right = "",
                },
                section_separators = {
                    left = "",
                    right = "",
                },
                theme = "kore",
            },
        })
    end,
}
