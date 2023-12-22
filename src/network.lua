local modem = peripheral.find("modem") or error("No modem found", 0) -- checks for a modem 
local compID = os.getComputerID()
if modem then

  print("modem found!") 

  write("Transmit or receive (T or R)? ") -- asks user if they want to transmit AND receive , or only receive. 
    local user_mode = read()

    if user_mode == "T" then 

    write("Transmitting Channel (0-65535): ") -- asks user for input 
    transmitChannel = read()
 transmitChannelInt = tonumber(transmitChannel) -- defines the transmitChannel as an integer, as modem.open can only handle integer input.
     write("Recieving Channel #2(0-65535): ") -- asks user for input 

    receiveChannel = read()
 
    receiveChannelInt = tonumber(receiveChannel) -- defines the receiveChannel as an integer, as modem.open can only handle integer input.

    print("Opening channel " .. receiveChannelInt .. "...")
    
    modem.open(receiveChannelInt)
    
        while true do 
    print("Message to transmit? ")
    tmessage = read()
payload = compID .. ": " .. tmessage
    print("Channel " .. receiveChannelInt .. " open.")
      modem.transmit(transmitChannelInt, receiveChannelInt, payload)
    print(
        "broadcasting message as " .. compID .. ', ' .. '"' .. tmessage .. '"' .. " on channel " .. transmitChannelInt .. " .")-- large broadcast message printed to computer screen.
      end
    
  elseif user_mode == "R" then 
     write("Recieving Channel #2(0-65535): ") -- asks user for input 

    receiveChannel = read()    
 
    receiveChannelInt = tonumber(receiveChannel) -- defines the receiveChannel as an integer, as modem.open can only handle integer input.

    print("Opening channel " .. receiveChannelInt .. "...")
    
    modem.open(receiveChannelInt)

    print("Channel " .. receiveChannelInt .. " open.")
    while true do
    local event, side, channel, replyChannel, message, distance -- defines vars, the channel variable here is from the computer contacting us from a channel (x).
    repeat
        event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
    until channel == receiveChannelInt -- puts variables into event until the channel variable is equal to the recieving channels variable. This helps prevent spoofing and allows messages from a certain channel. 
     print("received a reply: " .. tostring(message))  -- prints a reply
    end
  end
  else 
    printError("Invalid input.") --error handling
  end
