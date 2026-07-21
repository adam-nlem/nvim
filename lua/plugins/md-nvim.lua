local function getPath(str)
    return str:match("(.*[/\\])")
end

local function get_link_path()
    local current_line = vim.api.nvim_get_current_line()
    return string.match(current_line, "%[%[([^%|%]]+)")
end

local function open_file()
    local current_file = vim.fn.expand('%:p')

    local file_type = vim.filetype.match({filename = current_file})
    
    if (file_type ~= 'markdown') then
        vim.notify("Cannot perfom this action on a non markdown file")
        return
    end 
    
    local pwd = getPath(current_file)
    local wiki_path = get_link_path()
    
    local file_path = pwd .. wiki_path .. ".md"
    vim.cmd.edit(file_path)
end

vim.api.nvim_create_user_command('MdNvimCreateFromLink', 
    open_file,
    {nargs = 0}
)
