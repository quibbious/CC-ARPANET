local id0 = multishell.launch({}, "/receiver.lua")
 
multishell.setTitle(id0, "Receiver")
local id1 = multishell.launch({}, "/network.lua")
 
multishell.setTitle(id1, "Network")
