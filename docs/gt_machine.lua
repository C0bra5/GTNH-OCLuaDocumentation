--- @meta

---@class gt_machine
---@field address string The component address of the gt_machine
---@field slot integer undocumented
local gt_machine = {
	type = 'gt_machine'
};

---  Returns the amount of electricity contained in this Block, in EU units! (As a string for HUGE amounts.)
---@return string storedEuString
function gt_machine.getStoredEUString() end

---Returns the average EU input of this block
---@return number averageInput
function gt_machine.getEUInputAverage() end

---Gets the Output in EU/p.
---@return number outputVoltage
function gt_machine.getOutputVoltage() end

---Returns the machine's name
---@return string name
function gt_machine.getName() end

---Returns whether the machine is currently active
---@return boolean isActive
function gt_machine.isMachineActive() end

---Returns the EU stored in this block
---@return number euStored
function gt_machine.getEUStored() end

---Returns the amount of electricity containable in this Block, in EU units!
---@return number euCapacity
function gt_machine.getEUCapacity() end

---Returns the steam stored in this block
---@return number steamStored
function gt_machine.getSteamStored() end

---Returns sensor information about this block
---@return string[] sensorLines
function gt_machine.getSensorInformation() end

---Returns the average EU output of this block
---@return number averageOutput
function gt_machine.getEUOutputAverage() end

---Returns the amount of electricity containable in this Block, in EU units! (As a string for HUGE amounts.)
---@return string euCapacityString
function gt_machine.getEUCapacityString() end

---Returns machine coordinates
---@return {[1]:number,[2]:number,[3]:number} coordinates
function gt_machine.getCoordinates() end

---Returns the amount of Electricity, accepted by this Block the last 5 ticks as Average.
---@return number averageInput
function gt_machine.getAverageElectricInput() end

---Gets the maximum Input in EU/p.
---@return number maxInput
function gt_machine.getInputVoltage() end

-- Gets the amount of Energy Packets per tick.
---@return number packetPerTick
function gt_machine.getOutputAmperage() end

---Sets whether this block is currently allowed to work
---@param enabled boolean
---@return number packetPerTick
function gt_machine.setWorkAllowed(enabled) end

---Returns the name of this block's owner
---@return string ownerName
function gt_machine.getOwnerName() end

---Returns true if the machine currently has work to do
---@return boolean hasWork
function gt_machine.hasWork() end

---Returns the amount of Steam contained in this Block, in EU units!
---@return number storedSteamAsEu
function gt_machine.getStoredSteam() end

---Returns the current progress of this block in ticks
---@return number progress
function gt_machine.getWorkProgress() end

---Returns the max EU that can be stored in this block
---@return number euCapacity
function gt_machine.getEUMaxStored() end

---Returns the amount of Electricity, outputted by this Block the last 5 ticks as Average.
---@return number averageElectricOutput
function gt_machine.getAverageElectricOutput() end

---Returns the amount of electricity contained in this Block, in EU units!
---@return number storedEU
function gt_machine.getStoredEU() end

---Returns whether this block is currently allowed to work
---@return boolean isAllowed
function gt_machine.isWorkAllowed() end

---Returns the max progress of this block in ticks
---@return number maxProgress
function gt_machine.getWorkMaxProgress() end

---Returns the amount of Steam containable in this Block, in EU units!
---@return number steamCapacityAsEU
function gt_machine.getSteamCapacity() end

---Returns the max steam that can be stored in this block
---@return number steamCapacity
function gt_machine.getSteamMaxStored() end

return gt_machine;