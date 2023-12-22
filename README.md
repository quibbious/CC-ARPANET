
# CC: ARPANET

## The goal of this program is to facilitate a connection between computers in ComputerCraft using Modems and Lua. 
The majority of this program will be in Lua.

### Todo

- [x] detect peripherals (disk drive and modem)
- [x] transfer network files from disk to root drive or programs folder
- [x] Make a connection program
- [x] Allow connection to specific computers (using channels)
- [x] transmit and receive messages
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
Now that you have all the files installed, make sure you have either a modem or an Ender Modem connected to the Computer. Without a modem, network.lua will not run and you will not be able to transmit/receive messages.

Do the same for another computer. this should leave you with two computers on top of their respective Disk Drives, with modems on them. (image below)

![https://i.imgur.com/dAp2Ejc.png](https://i.imgur.com/dAp2Ejc.png)

# Usage

Depending on your uses, the user modes will vary. in network.lua, there are two (2) user modes.
- Transmit & receive (T/R)
- receive (R)

**For most people, T/R is the best option because you can send (transmit) and receive messages.** However, if you are running a Disk Drive Server in CC: Tweaked or Computercraft and you only want your server to receive data/messages, the "R" mode will work best for you. 

### Setup steps for a T/R or R connection:
- (also, dont worry about the "no monitor found" error, you can attach a monitor if you want to get rid of it.) 
- Enter the computer and type network
- You will be shown a text prompt that asks if you want to use T/R mode or R mode. choose whichever you want, or refer above to the User Modes.
- Enter any number from 1-65535 for the recieving channel, and same for the transmit channel if you picked T/R mode. (the numbers to not have to be the same, but for this test they will be.
- For R Mode, you only have to enter the receive channel number from 1-65535.

Your screen on the computer should look similar to mine: 
![https://i.imgur.com/1HlGksk.png](https://i.imgur.com/1HlGksk.png)

- exit the computer and do the same process on the other until it asks for a message.
- Type in any message you want on one computer, then the other
- if you enter one computer, you will see the message you typed in one computer (we'll call it A) in the other (computer B)
- This points out a WIP "feature" of this project.

# You can only send & receive one message at a time (as of now)

## Yeah, the README says "messages", but this is my first time coding with Lua, so it will be a bit until I figure it out. If you have a suggestion/solution, feel free to make a pull request.
- The network.lua program can only send and receive ONE message at a time before needing to be restarted.
- It can also only receive ONE message at a time on R mode until needing a restart (of the program, not the computer) 
