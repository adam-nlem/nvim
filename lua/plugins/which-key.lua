local wk = require("which-key")
wk.add({
-- buffers
{ "<leader>q", desc = "close buf", icon = "󰅖" },
{ "<leader>Q", desc = "close buf!", icon = "󰅖" },
{ "<leader>U", desc = "close ALL buf", icon = "󰅖" },
{ "<leader>vs", desc = "vsplit next buf", icon = " " },

-- lsp
{ "<leader>r", desc = "rename", icon = "󰑕" },

-- fzf and grep
{ "<leader>f", desc = "fzf", icon = " " },
{ "<leader>F", group = "fzf extra", icon = " " },
{ "<leader>Fh", desc = "search home", icon = "󰋞" },
{ "<leader>Fc", desc = "search .config", icon = "" },
{ "<leader>Fl", desc = "search .local/src", icon = "󰉋" },
{ "<leader>Ff", desc = "search above", icon = "󰉋" },
{ "<leader>Fr", desc = "last search", icon = "󰑖" },
{ "<leader>g", desc = "grep", icon = " " },
{ "<leader>G", desc = "grep under cursor", icon = " " },

-- misc
{ "<leader>s", desc = "replace all", icon = "󰛔" },
{ "<leader>t", desc = "view files", icon = "" },
{ "<leader>u", desc = "toggle undotree", icon = "" },
{ "<leader>p", desc = "toggle theme", icon = "󰸌" },
{ "<leader>P", desc = "update packages", icon = "󰏔" },
{ "<leader>z", desc = "floating terminal", icon = " " },
{ "<leader>w", desc = "write", icon = "󰆓" },
{ "<leader>d", desc = "duplicate file", icon = "" },
{ "<leader>x", desc = "chmod +x", icon = "" },
{ "<leader>mv", desc = "move file", icon = "󰆐" },
{ "<leader>R", desc = "reload config", icon = "" },
{ "<leader>i", desc = "auto indent", mode = "v", icon = "󰉶" },
{ "<leader>W", desc = "toggle wrap", icon = "󰖶" },
{ "<leader>l", desc = "twilight", icon = "󰃟" },

-- git
{ "<leader>gs", desc = "git status", icon = "" },

-- csv
{ "<leader>cs", group = "csv align", icon = "󰸫" },
{ "<leader>csa", desc = "align csv", icon = "󰸫" },
{ "<leader>csA", desc = "clear align csv", icon = "󰸫" },

-- terminals
{ "<leader>H", desc = "htop terminal", icon = "" },

-- build
{ "<leader>ma", desc = "quick make", icon = "" },

-- numbers
{ "<leader>nn", desc = "toggle relative nums", icon = "󰎠" },
})
