return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            sync_install = false,
            ensure_installed = {
                "bash",
                "c",
                "diff",
                "html",
                "lua",
                "luadoc",
                "markdown",
                "markdown_inline",
                "query",
                "vim",
                "vimdoc",
            },
            -- auto install languages that are not installed
            auto_install = true,
            highlight = {
                enable = true,
                -- some languages depend on regex highlighting system (i.e. ruby) for indent rules
                -- if experiencing weird indenting issues, add language to the list below and disable from indent
                additional_vim_regex_highlighting = { "ruby" },
            },
            indent = { enable = true, disable = { "ruby" } },
        },
    },
}
