local id0 = multishell.launch({}, "/reciever.lua")

multishell.setTitle(id, "Reciever")
local id1 = multishell.launch({}, "/network.lua")

multishell.setTitle(id1, "Network")
