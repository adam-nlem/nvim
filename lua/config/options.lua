local options = {
    number = true,
    relativenumber = true,

    splitbelow = true, 
    splitright = true,

    wrap = false,

    expandtab = true,
    tabstop = 4,
    shiftwidth = 4,
    
    clipboard = "unnamedplus",
    
    scrolloff = 999,
    
    virtualedit = "block",
    
    inccommand = "split",
    
    ignorecase = true,

    completeopt = "menu,menuone,noselect,popup",
    pumheight = 10,   -- max visible rows in the completion menu
    pumwidth = 15,    -- minimum width of the completion menu
    pumborder = "rounded",

    termguicolors = true,

    splitkeep = 'screen', --stablizie window open/close

    selection = 'exclusive' --in v mode, exclude the caracter under the cursor
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
