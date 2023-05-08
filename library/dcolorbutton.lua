---@meta

---@class DColorButton : DLabel
local DColorButton = {}

---[CLIENT] Returns the color of the button
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DColorButton:GetColor)
---@return table #The Color of the button
function DColorButton:GetColor() end

---[CLIENT] Returns the unique ID set by DColorButton:SetID.
---
--- Used internally by DColorPalette
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DColorButton:GetID)
---@return number #The unique ID of the button
function DColorButton:GetID() end

---[CLIENT] Returns whether the DColorButton is currently being pressed (the user is holding it down).
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DColorButton:IsDown)
---@return boolean #
function DColorButton:IsDown() end

---[CLIENT] Sets the color of the DColorButton.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DColorButton:SetColor)
---@param color table A Color to set the color as
---@param noTooltip? boolean If true, the tooltip will not be reset to display the selected color.
function DColorButton:SetColor(color, noTooltip) end

---[CLIENT] Used internally by DColorPalette to detect which button is which.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/DColorButton:SetID)
---@param id number A unique ID to give this button
function DColorButton:SetID(id) end
