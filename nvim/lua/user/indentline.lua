local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_filetype_exclude = {
	"help",
	"startify",
	"dashboard",
	"packer",
	"neogitstatus",
	"NvimTree",
	"Trouble",
}

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#bb9af7 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#7aa2f7 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#7dcfff gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#e0af68 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#9ece6a gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#f7768e gui=nocombine]]

vim.opt.list = true

indent_blankline.setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}


