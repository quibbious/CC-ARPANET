-- holds pastebin data in separate commands for users to install one file \

shell.run("pastebin get UmWLCieW reciever.lua") -- downloads reciever.lua
shell.run("pastebin get aE9Jr64Z startup.lua") -- downloads startup.lua
shell.run("pastebin get YWxzgzuD load.lua") -- downloads load.lua
shell.run("pastebin get Ujtukn8D network.lua") -- downloads network.lua
shell.run("pastebin get QDU9uW8K wipe.lua") -- downloads wiper
        print("All dependencies downloaded. Please reboot to save changes.")
shell.run("delete /dependencies.lua")

-- QDU9uW8K
