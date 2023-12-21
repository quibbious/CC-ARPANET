-- This program runs on the computer and grabs the network.lua file from a floppy disk that holds it.

if fs.exists("/network.lua") then -- checks if /network.lua is a valid directory
    printError("file 'network.lua' already exists") -- error if the file already exists in the root directory
else    -- if not, it looks for a disk
    if fs.exists("/disk") then
        print("found disk") -- if it finds a disk, it prints it and checks for the directory "/disk/network.lua" (line 10) 
        sleep(1)

        if fs.exists("/disk/network.lua") then
            -- lines 12-15 are copying and moving the file "network.lua" to the main filesystem of the computer.
            print("found network file")
            fs.copy("/disk/network.lua", "/network.lua")
            print("Copied network file!")
            print("network file is in root directory.")
        else -- if network.lua doesn't exist inside the disk, it prints an error.
            printError("could not find network.lua, check the file is in the disk directory.") -- error handling 
        end
    else
        printError("could not find '/disk' directory. Is there a valid floppy disk?") -- error handling 
    end
end

