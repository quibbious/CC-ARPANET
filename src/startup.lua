local id0 = multishell.launch({}, "/receiver.lua")
 
multishell.setTitle(id0, "Receiver")
local id1 = multishell.launch({}, "/network.lua")
 
multishell.setTitle(id1, "Network")
local id2 = multishell.launch({}, "/mirror.lua")
 
multishell.setTitle(id1, "Mirror")
