-- This program runs on the computer via DISK to install the network software

if fs.exists("/disk") then --checks for /disk directory
 
    print("found disk")
    sleep(1)    
 
        if fs.exists("/disk/network.lua") then --then it checks for the network file
    
    print("found network file")
    
        else 
    
    print("could not find network.lua, check that the file is in the root disk directory.") -- error handling for no "network.lua" file
        end
        else
        
        print("could not find '/disk' directory") -- error handling for no disk in drive
        
            end
