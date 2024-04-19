--- @meta

--- @class ItemStack
--- @field name string       # The id of the item.
--- @field damage integer    # Either the metadata of the item or how much damage it has taken.
--- @field maxDamage integer # How much damage an item can take
--- @field size integer      # How many items are in the stack.
--- @field maxSize integer   # The maximum items per stack.
--- @field label string      # The localised name of the item.
--- @field hasTag boolean    # `true` if the item has an NBT tag.
--- @field tag string?       # An encoded version of the NBT tag (looks like the usual zlib encode for BNBT)
--- @field crop CropNBT?     # The data for an analyzed IC2 seed bag.

--- @class FluidStack
--- @field amount integer # The amount of mb available
--- @field hasTag boolean # True if it has an NBT tag.
--- @field tag string?    # An encoded version of the NBT tag (looks like the usual zlib encode for BNBT)
--- @field label string   # The localised name of the fluid.
--- @field name string    # The unlocalized name of the fluid.

--- @class EssentiaStack
--- @field amount integer # The amount of essentia available
--- @field label string   # The name of the essentia (seems to always be: [name] Super Critical Fluid)
--- @field name string    # The unlocalized name of the essentia
--- @field hasTag boolean # True if it has an NBT tag.
--- @field tag string?    # An encoded version of the NBT tag (looks like the usual zlib encode for BNBT)