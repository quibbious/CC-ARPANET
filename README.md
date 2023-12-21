
# CC: ARPANET

## The goal of this program is to facilitate a connection between computers in ComputerCraft using Modems and Lua. 
The majority of this program will be in Lua.

### Todo

- [x] detect peripherals (disk drive and modem)
- [x] transfer network files from disk to root drive or programs folder
- [x] Make a connection program
- [x] Allow connection to specific computers (using channels)
- [x] transmit and recieve messages
- [] "How to Connect to a computer" 
- [] encryption
- [] authorization
- [] disk drive server capable of storing mass amounts of information

So far, the basic connection program is done. so now ill tell you how to use it.

## Materials/Prerequisites:
CC:Tweaked or Computercraft is all you need for this guide, as well as basic understanding of code. (functions/variables) 

# Installation

### start with a computer on top of a disk drive, like this: 

![https://imgur.com/3fYqPN9](https://i.imgur.com/3fYqPN9.png)

enter the terminal and type these commands: 

```
cd ..
pastebin get aE9Jr64Z startup.lua
pastebin get YWxzgzuD load.lua
pastebin get Ujtukn8D network.lua
```
Now that you have all the files installed, make sure you have either a modem or an Ender Modem connected to the Computer. Without a modem, network.lua will not run and you will not be able to transmit/recieve messages.

Do the same for another computer. this should leave you with two computers on top of their respective Disk Drives, with modems on them. (image below)

![https://i.imgur.com/dAp2Ejc.png](https://i.imgur.com/dAp2Ejc.png)

# Usage

Depending on your uses, the user modes will vary. in network.lua, there are two (2) user modes.
- Transmit & Recieve (T/R)
- Recieve (R)

**For most people, T/R is the best option because you can send (transmit) and recieve messages.** However, if you are running a Disk Drive Server in CC: Tweaked or Computercraft and you only want your server to recieve data/messages, the "R" mode will work best for you. 


