---@meta

---@class DEntityProperties : DProperties
local DEntityProperties = {}

---[CLIENT] Called internally by DEntityProperties:RebuildControls.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DEntityProperties:EditVariable)
---@param varname string
---@param editdata table
function DEntityProperties:EditVariable(varname, editdata) end

---[CLIENT] Called internally when an entity being edited became invalid.
---
--- You should use DEntityProperties:OnEntityLost instead.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DEntityProperties:EntityLost)
function DEntityProperties:EntityLost() end

---[CLIENT] Called when we were editing an entity and then it became invalid (probably removed)
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DEntityProperties:OnEntityLost)
function DEntityProperties:OnEntityLost() end

---[CLIENT] Called internally by DEntityProperties:SetEntity to rebuild the controls.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DEntityProperties:RebuildControls)
function DEntityProperties:RebuildControls() end

---[CLIENT] Sets the entity to be edited by this panel. The entity must support the Editable Entities system or nothing will happen.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DEntityProperties:SetEntity)
---@param ent Entity The entity to edit
function DEntityProperties:SetEntity(ent) end
