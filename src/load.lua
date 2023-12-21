-- This program runs on the computer and grabs the network.lua file that holds network capabilities.

if fs.exists("/network.lua") then
    printError("file 'network.lua' already exists")
else
    if fs.exists("/disk") then
        print("found disk")
        sleep(1)

        if fs.exists("/disk/network.lua") then
            print("found network file")
            fs.copy("/disk/network.lua", "/network.lua")
            print("Copied network file!")
            print("network file is in root directory.")
        else
            print("could not find network.lua, check the file is in the root disk directory.")
        end
    else
        print("could not find '/disk' directory. Is there a valid floppy disk?")
    end
end

