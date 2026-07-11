local treesitter = require("nvim-treesitter")
treesitter.setup()

treesitter.install({ "bash", "c", "css", "cpp", "go", "html", "java", "javascript", "json", "markdown_inline", "python", "rust", "tsx", "typescript", "php", "phpdoc", "twig", "yaml", "dart" })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { "bash", "c", "css", "cpp", "go", "html", "java", "javascript", "json", "python", "rust", "tsx", "typescript", "php", "phpdoc", "twig", "yaml", "dart" },

  callback = function()
    vim.treesitter.start()
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
