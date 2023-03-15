local config = require("cmp.config")
local cmp = require("cmp")
local source_name = "bulma"

local default_config = {
	label = "[" .. (source_name:gsub("^%l", string.upper)) .. "]",
	keyword_pattern = [[\a\+-\=]],
	filetypes = {
		-- html and templating
		"html",
		"jinja.html",
		-- javascript
		"javascript",
		"typescript",
		-- css and related
		"css",
		"less",
		"sass",
		"scss",
	},
}

local Source = {
	config = default_config,
}

function Source:new()
	local user_config = config.get_source_config(source_name) or {}
	user_config.option = user_config.option or {}

	if user_config.option.filetypes ~= nil then
		vim.list_extend(self.config.filetypes, user_config.option.filetypes)
	end

	self.items = {}

	for _, item in ipairs(require("entries")) do
		table.insert(self.items, self:transform_item(item))
	end

	return self
end

function Source.get_debug_name()
	return source_name
end

function Source:is_available()
	return vim.tbl_contains(self.config.filetypes, vim.bo.filetype)
end

function Source:get_keyword_pattern()
	return self.config.keyword_pattern
end

function Source:transform_item(item)
	item.kind = cmp.lsp.CompletionItemKind.Class
	return item
end

function Source:complete(_, callback)
	callback(self.items)
end

function Source:setup()
	require("cmp").register_source(source_name, Source)
end

return Source:new()
