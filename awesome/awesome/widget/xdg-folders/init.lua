local awful = require('awful')
local wibox = require('wibox')
local beautiful = require('beautiful')

local dpi = require('beautiful').xresources.apply_dpi

local separator =  wibox.widget {
	orientation = 'horizontal',
	forced_height = dpi(1),
	span_ratio = 0.55,
	widget = wibox.widget.separator
}

return wibox.widget {
	layout = wibox.layout.align.vertical,
  	{
		separator,
		require("widget.xdg-folders.home"),
		require("widget.xdg-folders.orange"),
		require("widget.xdg-folders.valhalla"),
		require("widget.xdg-folders.descargas"),
		require("widget.xdg-folders.tmp"),
		separator,
		require("widget.xdg-folders.trash"),
		layout = wibox.layout.fixed.vertical,
  	},
}
