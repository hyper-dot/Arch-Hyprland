local status, autopairs = pcall(require, "nvim-autopairs")

if not status then
	return print("nvim-autopairs not found !!")
end

autopairs.setup({
	check_ts = true,
	ts_config = {
		lua = { "string" },
		javascript = { "template_string" },
		java = false,
	},
})

-- If you want insert `(` after select function or method item
local cmp_autopairs_status, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not cmp_autopairs_status then
	return print("nvim-autopairs not found !!")
end

local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return print("cmp not found !!")
end

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
