---[SHARED AND MENU] Adds a callback to be called when the named convar changes.
---
--- This does not callback convars in the menu state.
--- This does not callback convars on the client with FCVAR_GAMEDLL and convars on the server without FCVAR_GAMEDLL.
--- This does not callback convars on the client with FCVAR_REPLICATED.
---
---[(View on wiki)](https://wiki.facepunch.com/gmod/cvars.AddChangeCallback)
---@param name string The name of the convar to add the change callback to.
---@param callback fun(convar: string, oldValue: string, newValue: string) The function to be called when the convar changes. The arguments passed are:
--- * string convar - The name of the convar.
--- * string oldValue - The old value of the convar.
--- * string newValue - The new value of the convar.
---@param identifier? string If set, you will be able to remove the callback using cvars.RemoveChangeCallback. The identifier is not required to be globally unique, as it's paired with the actual name of the convar.
function cvars.AddChangeCallback(name, callback, identifier) end