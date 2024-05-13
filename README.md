
# CC: ARPANET

## The goal of this program is to facilitate a connection between computers in ComputerCraft using Modems and Lua. 
The majority of this program will be in Lua.

### Todo

- [x] detect peripherals (disk drive and modem)
- [x] transfer network files from disk to root drive or programs folder
- [x] Make a connection program
- [x] Allow connection to specific computers (using channels)
- [x] transmit and receive messages
- [x] "How to Connect to a computer" 
- [] disk drive server capable of storing information (hell no not now)
- [x] identification (to prevent spoofing)
- [] fancy display on monitors for transmitting & receiving messages (with maybe a touch screen)

## Materials/Prerequisites:
CC:Tweaked or Computercraft is all you need for this guide, as well as basic understanding of code. (functions/variables) 

# Installation

### start with a computer on top of a disk drive, like this: 

![https://imgur.com/3fYqPN9](https://i.imgur.com/3fYqPN9.png)

enter the terminal and type these commands: 

```
cd ..
pastebin get 6e8Cw4nL dependencies.lua
```
This pastebin command installs all files you will need to have CC:ARPANET. Make sure you have either a modem or an Ender Modem connected to the Computer. Without a modem, network.lua will not run and you will not be able to transmit messages.

Do the same for another computer. this should leave you with two computers on top of their respective Disk Drives (disk drives are optional), with modems on them. (image below)

![https://i.imgur.com/dAp2Ejc.png](https://i.imgur.com/dAp2Ejc.png)

# Usage

Depending on your uses, the user modes will vary. in network.lua, there are two (2) user modes. Receiver Mode is started automatically the next time thee computer starts, as well as Network Mode, which allows the user to send and recieve multiple messages. 
- Transmit & receive (T/R)
- receive (R)

**For most people, T/R is the best option because you can send (transmit) and receive messages.** However, if you are running a Disk Drive Server in CC: Tweaked or Computercraft and you only want your server to receive data/messages, the "R" mode will work best for you. 
On computer startup, a "Receiver" Tab shows at the top. Click it and open a channel for listening. This is helpful for keeping things clean looking while transmitting messages, and allows the user to use Recieve mode in conjunction with T/R mode, allowing 2 channels to be open at once. (ex. one port (A) for listening, and and another (B) for transmitting and listening.) 

### Setup steps for a T/R or R connection:
- Enter the computer and type network
- You will be shown a text prompt that asks if you want to use T/R mode or R mode. choose whichever you want, or refer above to the User Modes.
- Enter any number from 1-65535 for the recieving channel, and same for the transmit channel if you picked T/R mode. (the numbers to not have to be the same, but for this test they will be.
- For R Mode, you only have to enter the receive channel number from 1-65535.

Your screen on the computer should look similar to mine: 
![https://i.imgur.com/1HlGksk.png](https://i.imgur.com/1HlGksk.png)

- exit the computer and do the same process on the other until it asks for a message.
- Type in any message you want on one computer, then the other
- if you enter one computer, you will see the message you typed in one computer (we'll call it A) in the other (computer B)
