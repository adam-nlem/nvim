local alpha = require('alpha')
local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
  [[      ___           ___       ___           ___     ]],
  [[     /\__\         /\__\     /\  \         /\__\    ]],
  [[    /::|  |       /:/  /    /::\  \       /::|  |   ]],
  [[   /:|:|  |      /:/  /    /:/\:\  \     /:|:|  |   ]],
  [[  /:/|:|  |__   /:/  /    /::\~\:\  \   /:/|:|__|__ ]],
  [[ /:/ |:| /\__\ /:/__/    /:/\:\ \:\__\ /:/ |::::\__\]],
  [[ \/__|:|/:/  / \:\  \    \:\~\:\ \/__/ \/__/~~/:/  /]],
  [[     |:/:/  /   \:\  \    \:\ \:\__\         /:/  / ]],
  [[     |::/  /     \:\  \    \:\ \/__/        /:/  /  ]],
  [[     /:/  /       \:\__\    \:\__\         /:/  /   ]],
  [[     \/__/         \/__/     \/__/         \/__/    ]],
}

dashboard.section.buttons.val = {
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "󰍉  Find file", ":lua require('fzf-lua').files() <CR>"),
	dashboard.button("t", "  Browse cwd", ":NvimTreeOpen<CR>"),
	dashboard.button("r", "  Browse src", ":e ~/.local/src/<CR>"),
	dashboard.button("s", "󰯂  Browse scripts", ":e ~/scripts/<CR>"),
	dashboard.button("c", "  Config", ":e ~/.config/nvim/<CR>"),
	dashboard.button("m", "  Mappings", ":e ~/.config/nvim/lua/config/mappings.lua<CR>"),
	dashboard.button("M", "  Open LSP Manager", ":Mason<CR>"),
	dashboard.button("q", "󰅙  Quit", ":q!<CR>"),
}

dashboard.section.footer.val = {
    [[★　　 　　　　　　　　　★]],
    [[ ]],
    [[ ]],
    [[　　　　　　　　　　　　　　　　　　　★　　　　　　　　　　　　　　　　　　　　　★]],
    [[ ]],
    [[ ]],
    [[　　　　　　　　　★　　　　　　　　　　　　　　　　　　　★]],
    [[ ]],
    [[ ]],
    [[　　　　　　　　　　　　　　★]],
    [[ ]],
    [[ ]],
    [[　　　　　　　　　　　★　　　　　　　　 　　　★　　　　　　　★]],
    [[ ]],
    [[ ]],
    [[　★　　 　　★]],
    [[ ]],
    [[ ]],
    [[　　 　　　　　★　　　　　　　　　　　★　　　　　　　　　★　　　　　　★]],
    [[ ]],
    [[ ]],
    [[　　　　★　　　　　　　　　★]],
}

dashboard.section.buttons.opts.hl = "Keyword"
dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
