---@meta

---@class DIconLayout : DDragBase
local DIconLayout = {}

---[CLIENT] Creates a replica of the DIconLayout it is called on.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:Copy)
---@return Panel #The replica.
function DIconLayout:Copy() end

---[CLIENT] Copies the contents (Child elements) of another DIconLayout to itself.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:CopyContents)
---@param from Panel DIconLayout to copy from.
function DIconLayout:CopyContents(from) end

---[CLIENT] Returns the size of the border.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:GetBorder)
---@return number #
function DIconLayout:GetBorder() end

---[CLIENT] Returns the direction that it will be layed out, using the DOCK enumerations.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:GetLayoutDir)
---@return number #Layout direction.
function DIconLayout:GetLayoutDir() end

---[CLIENT] Returns the distance between two 'icons' on the X axis.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:GetSpaceX)
---@return number #Distance between two 'icons' on the X axis.
function DIconLayout:GetSpaceX() end

---[CLIENT] Returns distance between two "Icons" on the Y axis.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:GetSpaceY)
---@return number #distance between two "Icons" on the Y axis.
function DIconLayout:GetSpaceY() end

---[CLIENT] Returns whether the icon layout will stretch its height to fit all the children.
---
--- See also DIconLayout:GetStretchWidth
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:GetStretchHeight)
---@return boolean #
function DIconLayout:GetStretchHeight() end

---[CLIENT] Returns whether the icon layout will stretch its width to fit all the children.
---
--- See also DIconLayout:GetStretchHeight
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:GetStretchWidth)
---@return boolean #
function DIconLayout:GetStretchWidth() end

---[CLIENT] Resets layout vars before calling Panel:InvalidateLayout. This is called when children are added or removed, and must be called when the spacing, border or layout direction is changed.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:Layout)
function DIconLayout:Layout() end

---[CLIENT] Used internally to layout the child elements if the DIconLayout:SetLayoutDir is set to LEFT (See Enums/DOCK).
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:LayoutIcons_LEFT)
function DIconLayout:LayoutIcons_LEFT() end

---[CLIENT] Used internally to layout the child elements if the DIconLayout:SetLayoutDir is set to TOP (See Enums/DOCK).
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:LayoutIcons_TOP)
function DIconLayout:LayoutIcons_TOP() end

---[CLIENT] Sets the internal border (padding) within the DIconLayout. This will not change its size, only the positioning of children. You must call DIconLayout:Layout in order for the changes to take effect.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:SetBorder)
---@param width number The border (padding) inside the DIconLayout.
function DIconLayout:SetBorder(width) end

---[CLIENT] Sets the direction that it will be layed out, using the Enums/DOCK.
---
--- Currently only TOP and LEFT are supported.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:SetLayoutDir)
---@param direction number Enums/DOCK
function DIconLayout:SetLayoutDir(direction) end

---[CLIENT] Sets the horizontal (x) spacing between children within the DIconLayout. You must call DIconLayout:Layout in order for the changes to take effect.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:SetSpaceX)
---@param xSpacing number The width of the gap between child objects.
function DIconLayout:SetSpaceX(xSpacing) end

---[CLIENT] Sets the vertical (y) spacing between children within the DIconLayout. You must call DIconLayout:Layout in order for the changes to take effect.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:SetSpaceY)
---@param ySpacing number The vertical gap between rows in the DIconLayout.
function DIconLayout:SetSpaceY(ySpacing) end

---[CLIENT] If set to true, the icon layout will stretch its height to fit all the children.
---
--- See also DIconLayout:SetStretchWidth
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:SetStretchHeight)
---@param do_stretch boolean
function DIconLayout:SetStretchHeight(do_stretch) end

---[CLIENT] If set to true, the icon layout will stretch its width to fit all the children.
---
--- See also DIconLayout:SetStretchHeight
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DIconLayout:SetStretchWidth)
---@param stretchW boolean
function DIconLayout:SetStretchWidth(stretchW) end
