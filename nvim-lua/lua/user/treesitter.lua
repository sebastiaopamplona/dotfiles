local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = { "bash", "go", "lua", "typescript", "json", "yaml" },
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" },
    extended_mode = true, -- boolean -> also highlight non-bracketed delimiters like html tags
    max_file_lines = nil, -- int -> don't enable for files with more than n lines
  },
})


vim.cmd([[set foldmethod=expr]]) -- TODO: this doesn't seem to work
vim.cmd([[set foldexpr=nvim_treesitter#foldexpr()]]) -- TODO: this doesn't seem to work

