require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "ts_ls", "eslint", "intelephense", "tailwindcss" },
})

local kind_icons = {
  Text = "󰉿", Method = "󰆧", Function = "󰊕", Constructor = "",
  Field = "󰜢", Variable = "󰀫", Class = "󰠱", Interface = "",
  Module = "", Property = "󰜢", Unit = "󰑭", Value = "󰎠",
  Enum = "", Keyword = "󰌋", Snippet = "", Color = "󰏘",
  File = "󰈙", Reference = "󰈇", Folder = "󰉋", EnumMember = "",
  Constant = "󰏿", Struct = "󰙅", Event = "", Operator = "󰆕",
  TypeParameter = "",
}

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method('textDocument/completion') then
            -- trigger completion on every keypress, not just the server's own trigger characters
            local chars = {}
            for i = 32, 126 do table.insert(chars, string.char(i)) end
            client.server_capabilities.completionProvider.triggerCharacters = chars
      vim.lsp.completion.enable(true, client.id, ev.buf, {
        autotrigger = true,
        convert = function(item)
          local kind = vim.lsp.protocol.CompletionItemKind[item.kind] or "Text"
          return { kind = (kind_icons[kind] or "") .. " " .. kind }
        end,
      })
    end
  end,
})
