--- @meta 'component'

---@class Component
local component = {
	inventory_controller = require('components.inventory_controller'),
	gpu = require('components.gpu'),
	screen = require('components.screen'),
	gt_machine = require('components.gt_machine'),
	me_interface = require('components.me_interface')
};



return component;