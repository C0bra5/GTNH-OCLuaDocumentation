---@meta _

---@class me_interface: CommonNetworkAPI 
---@field type 'me_interface'
local me_interface = {}


--#region item stocking


---Gets the item being stocked in at the specified slot or the first if none is specified.
---@param slot integer # The slot index to check
---@return table
function me_interface.getInterfaceConfiguration(slot) end


---Clears the item being stocked in the specified slot (or the first one if none is specified)
---@param slot integer # The index of the slot to clear.
---@return boolean
function me_interface.setInterfaceConfiguration(slot) end


---Sets the item being stocked in a specified slot.
---@param slot      integer # The index of the slot to set.
---@param dbAddress string  # The address of a database that contains the item you want to stock.
---@param dbIndex   integer # The index of the item to stock.
---@param count?    integer # The amount of items to stock in the interface. (defaults to 1)
---@return boolean
function me_interface.setInterfaceConfiguration(slot, dbAddress, dbIndex, count) end


---Sets the item being stocked in the first slot.
---@param dbAddress string  # The address of a database that contains the item you want to stock.
---@param dbIndex   integer # The index of the item to stock.
---@param count?    integer # The amount of items to stock in the interface. (defaults to 1)
---@return boolean
function me_interface.setInterfaceConfiguration(dbAddress, dbIndex, count) end


--#endregion item stocking


--#region fluid stocking


---Gets the fluid being stocked in at the specified slot.
---@param side sides # The index of the side to check.
function me_interface.getFluidInterfaceConfiguration(side) end


---Clears the fluid being stocked on a given side.
---@param side sides # The side to clear of fluids.
---@return boolean
function me_interface.setFluidInterfaceConfiguration(side) end


---Clears out the fluid being stocked on a given side.
---@param side      sides   # The side on which to stock the fluid.
---@param dbAddress string  # The address of a database that contains the fluid you want to stock. (stored as an ae2fc drop.)
---@param dbIndex   integer # The index of the entry containing the fluid to stock.
---@return boolean
function me_interface.setFluidInterfaceConfiguration(side, dbAddress, dbIndex) end


--#endregion fluid stocking


--#region pattern modifications


---Get the given pattern in the interface or the first one in the first slot if none is specified.
---@param patternIndex integer # The index of the pattern to get.
---@return MEPattern
function me_interface.getInterfacePattern(patternIndex) end


---Set the pattern input at the given index.
---@param patternIndex integer # The index of the pattern to modify.
---@param dbAddress    string  # The address of the database that contains the desired input.
---@param dbIndex      integer # The index of the entry that contains the new input.
---@param count        integer # The amount to set the input to.
---@param inputIndex   integer # The index of the input slot to modify.
---@return boolean
function me_interface.setInterfacePatternInput(patternIndex, dbAddress, dbIndex, count, inputIndex) end


---Set the pattern output at the given index.
---@param patternIndex integer # The index of the pattern to modify.
---@param dbAddress    string  # The address of the database that contains the desired output.
---@param dbIndex      integer # The index of the entry that contains the new output.
---@param count        integer # The amount to set the output to.
---@param outputIndex  integer # The index of the output slot to modify.
---@return boolean
function me_interface.setInterfacePatternOutput(patternIndex, dbAddress, dbIndex, count, outputIndex) end


---Clears an input slot in a pattern.
---@param patternIndex integer # The index of the pattern to modify.
---@param inputIndex   integer # The index of the input slot to clear.
---@return boolean
function me_interface.clearInterfacePatternInput(patternIndex, inputIndex) end


---Removes an output from a pattern.
---@param patternIndex integer # The index of the pattern to modify.
---@param outputIndex  integer # The index of the output slot to clear.
---@return boolean
function me_interface.clearInterfacePatternOutput(patternIndex, outputIndex) end


-- #endregion pattern modifications


-- #region pattern reading


---Stores a specified input of a pattern inside of a database.
---Fluids are stored as ae2fc drops.
---@param patternIndex integer # The index of the pattern to get inputs from.
---@param inputIndex   integer # The index of the input to store.
---@param dbAddress    string  # The address of the database to store the output at
---@param dbIndex      integer # Where to store the input inside of the database.
---@return boolean
function me_interface.storeInterfacePatternInput(patternIndex, inputIndex, dbAddress, dbIndex) end


---Stores a specified output of a pattern inside of a database.
---Fluids are stored as ae2fc drops.
---@param patternIndex integer # The index of the pattern to get outputs from.
---@param outputIndex  integer # The index of the output to store.
---@param dbAddress    string  # The address of the database to store the output at
---@param dbIndex      integer # Where to store the output inside of the database.
---@return boolean
function me_interface.storeInterfacePatternOutput(patternIndex, outputIndex, dbAddress, dbIndex) end


-- #endregion pattern reading