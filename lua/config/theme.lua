-- theme choice is saved in a file for persistence on restart
-- could use a plugin instead, but hey, this is more fun
-- lualine theme gets stored separately due to possible naming differences

local theme_file = vim.fn.stdpath("config") .. "/lua/config/saved_theme"

_G.load_theme = function()
    local file = io.open(theme_file, "r")
	if file then
		vim.cmd("colorscheme " .. file:read("*l"))
		require("lualine").setup({ options = { theme = file:read("*l") } })
	file:close() end
end

local themes = { --add more themes here, if installed
	{ "catppuccin", "catppuccin" },
}

-- custom completion popup colors, reapplied on every colorscheme change
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		vim.api.nvim_set_hl(0, "Pmenu", { bg = "#1e1e2e" })
		vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#313244", bold = true })
		vim.api.nvim_set_hl(0, "PmenuKind", { bg = "#1e1e2e", fg = "#89b4fa" })
		vim.api.nvim_set_hl(0, "PmenuKindSel", { bg = "#313244", fg = "#89b4fa" })
	end,
})

local current_theme_index = 1

_G.switch_theme = function()
	current_theme_index = current_theme_index % #themes + 1
	local colorscheme, lualine = unpack(themes[current_theme_index])
	vim.cmd("colorscheme " .. colorscheme)
	require("lualine").setup({ options = { theme = lualine } })
	local file = io.open(theme_file, "w")
	if file then file:write(colorscheme .. "\n" .. lualine) file:close() end
end
