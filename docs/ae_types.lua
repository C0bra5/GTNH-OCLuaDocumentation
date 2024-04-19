--- @meta

--- @class MEItemStack: ItemStack
--- @field isCraftable boolean # True if the item is craftable


--- @class MEPatternSlot
--- @field name  string  # The localised name of the item in the slot.
--- @field count integer # The amount set in the slot.

--- @class MEPattern: MEItemStack
--- @field inputs  MEPatternSlot[] # The inputs of the pattern
--- @field outputs MEPatternSlot[] # The outputs of the pattern


--- @class MEItemStackFilter
--- @field name? string # The id of the item.
--- @field damage? integer # Either the metadata of the item or how much damage it has taken.
--- @field maxDamage? integer # How much damage an item can take
--- @field size? integer # How many items are in the stack.
--- @field maxSize? integer # The maximum items per stack.
--- @field label? string # The localised name of the item.
--- @field hasTag? boolean # `true` if the item has an NBT tag.
--- @field tag? string? # An encoded version of the NBT tag (looks like the usual zlib encode for BNBT)
--- @field isCraftable? boolean # True if the item is craftable


--- @class MEFluidStack: FluidStack
--- @field isCraftable boolean # True if the fluid is craftable


--#region AECraftable

---@class AECraftable
local AECraftable = {}

--- Sends a craft request to the ME system for this pattern
--- @param amount string           # The amount of items to craft
--- @param prioritizePower boolean # Wether to prioririze power usage idk needs more digging?
--- @param cpuName string          # the name of the cpu to start the craft in
--- @return AECraftingJob # A tracker for the craft 
function AECraftable.request(amount, prioritizePower, cpuName) end


--- Gets the display item for the pattern
--- @return MEItemStack
function AECraftable.getItemStack() end


--#endregion AECraftable


--#region AECraftingJob

---@class AECraftingJob
---@class type "userdata"
local AECraftingJob = {}


--- Get whether the crafting request is currently computing.
--- @return boolean
function AECraftingJob.isComputing() end


--- Get whether the crafting request has failed.
--- @return boolean
function AECraftingJob.hasFailed() end


--- Get whether the crafting request has been canceled.
--- @return boolean
function AECraftingJob.isCanceled() end


--- Get whether the crafting request is done.
--- @return boolean
function AECraftingJob.isDone() end

--#endregion AECraftingJob