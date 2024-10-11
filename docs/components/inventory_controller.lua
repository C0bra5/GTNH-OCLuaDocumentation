---@meta _

---@class inventory_controller: BaseComponent
---@field type 'inventory_controller'
local inventory_controller = {}


---Gets Itemstack description of item in the specified (or selected slot if no slot number is provided) of robot inventory.
---@param slot? integer which slot to look at
---@return ItemStack|nil # `nil` if there is no items in the slot
function inventory_controller.getStackInInternalSlot(slot) end


---Gets Itemstack description of item in the specified of an external inventory.
---@param side integer which side to look at
---@param slot integer which slot to look at
---@return ItemStack|nil # `nil` if there is no items in the slot
function inventory_controller.getStackInSlot(side, slot) end