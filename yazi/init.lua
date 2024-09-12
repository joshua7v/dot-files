function Linemode:size_and_mtime()
    local time = math.floor(self._file.cha.modified or 0)

    local time_str
    if time > 0 then
        time_str = os.date("%Y-%m-%d %H:%M:%S", time)
    else
        time_str = ""
    end

    local size = self._file:size()
    return ui.Line(string.format(" %s %s ", size and ya.readable_size(size) or "-", time_str))
end

local function no_status()
	local old_layout = Tab.layout

	Status.render = function() return {} end
	Tab.layout = function(self, ...)
		self._area = ui.Rect { x = self._area.x, y = self._area.y, w = self._area.w, h = self._area.h + 1 }
		return old_layout(self, ...)
	end
end

Header:children_add(function()
    if ya.target_family() == "windows" then
        return ui.Span(os.getenv("USERNAME") .. "@" .. string.lower(os.getenv("COMPUTERNAME")) .. ":"):fg("#ffffff")
    else
        return ui.Span(ya.user_name() .. "@" .. ya.host_name() .. ":"):fg("#ffffff")
    end
end, 500, Header.LEFT)

local function full_border(_, opts)
	local type = opts and opts.type or ui.Border.ROUNDED
	local old_build = Tab.build

	Tab.build = function(self, ...)
		local bar = function(c, x, y)
			if x <= 0 or x == self._area.w - 1 then
				return ui.Bar(ui.Rect.default, ui.Bar.TOP)
			end

			return ui.Bar(
				ui.Rect { x = x, y = math.max(0, y), w = ya.clamp(0, self._area.w - x, 1), h = math.min(1, self._area.h) },
				ui.Bar.TOP
			):symbol(c)
		end

		local c = self._chunks
		self._chunks = {
			c[1]:padding(ui.Padding.y(1)),
			c[2]:padding(ui.Padding(c[1].w > 0 and 0 or 1, c[3].w > 0 and 0 or 1, 1, 1)),
			c[3]:padding(ui.Padding.y(1)),
		}

		local style = THEME.manager.border_style
		self._base = ya.list_merge(self._base or {}, {
			ui.Border(self._area, ui.Border.ALL):type(type):style(style),
			ui.Bar(self._chunks[1], ui.Bar.RIGHT):style(style),
			ui.Bar(self._chunks[3], ui.Bar.LEFT):style(style),

			bar("┬", c[1].right - 1, c[1].y),
			bar("┴", c[1].right - 1, c[1].bottom - 1),
			bar("┬", c[2].right, c[2].y),
			bar("┴", c[2].right, c[2].bottom - 1),
		})

		old_build(self, ...)
	end
end

no_status()
full_border()
