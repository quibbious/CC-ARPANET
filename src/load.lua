-- Copies the network.lua file from a disk to the computer

if fs.exists("/network.lua") then 
    printError("file 'network.lua' already exists") 
else   
    if fs.exists("/disk/network.lua") then
        print("found network file")
        fs.copy("/disk/network.lua", "/network.lua") -- copy to root directory
        print("copied network file to root directory.")
        print("please run the network.lua file to begin.)
    else
        printError("Unable to locate 'network.lua'. Please make sure that 'network.lua' is in the main directory of the floppy disk.") 
    end
    else
        printError("could not find '/disk' directory. Make sure to put the floppy disk into the disk drive.")
    end
end

