local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end


local os = {
    "hostname",
    icons_enabled = "true",
    icon = ""
}

local git = {
    "branch",
    icons_enabled = "true",
    icon = ""
}

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "palenight",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
	},
    sections = {
        lualine_b = {git},
        lualine_x = {os}
    }
})
