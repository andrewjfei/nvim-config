return {
    -- provide ui for specific comments (i.e. todo, note, etc.)
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
}
