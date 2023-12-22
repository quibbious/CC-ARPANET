-- holds pastebin data in seperate commands for users to install one file \

shell.run("pastebin get UmWLCieW reciever.lua") -- downloads reciever.lua
shell.run("pastebin get aE9Jr64Z startup.lua") -- downloads startup.lua
shell.run("pastebin get YWxzgzuD load.lua") -- downloads load.lua
shell.run("pastebin get Ujtukn8D network.lua") -- downloads network.lua 
        print("All dependencies downloaded.")
shell.run("reboot")
shell.run("delete /dependencies.lua")

