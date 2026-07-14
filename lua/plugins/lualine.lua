local lualine = require('lualine')

local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn" },
    symbols = { error = " ", warn = " " },
    colored = true,
    update_in_insert = false,
    always_visible = false,
    cond = function()
        return vim.bo.filetype ~= "markdown"
    end,
}

local diff = {
    "diff",
    symbols = { added = " ", modified = " ", removed = " " },
}

local mode = {
    "mode",
    fmt = function(str)
        return "~~ " .. str .. " ~~"
    end,
}

local branch = {
    "branch",
    icon = "",
}

lualine.setup({
    options = {
        icons_enabled = true,
        theme = "auto", --auto allows for theme switching
        disabled_filetypes = { "alpha", "dashboard" },
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        always_divide_middle = true,
    },

    sections = {
        lualine_a = { mode },
        lualine_b = { branch },
        lualine_c = { diff, diagnostics },
        lualine_x = { "filename", "fileformat", "filetype" },
        lualine_y = { "location" },
        lualine_z = { },
    },
    extensions = { 'nvim-tree' },
})
