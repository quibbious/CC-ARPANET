local modem = peripheral.find("modem") or error("No modem found", 0) -- checks for a modem 

if modem then

  print("modem found!") 

  write("Transmit & recieve or only recieve (T/R or R)? ") -- asks user if they want to transmit AND recieve , or only recieve. 
    local user_mode = read()

    if user_mode == "T/R" then 
    
    write("Recieving Channel (0-65535): ") -- asks user for input 

    recieveChannel = read()

    recieveChannelInt = tonumber(recieveChannel) -- defines the recieveChannel as an integer, as modem.open can only handle integer input.

    print("Opening channel " .. recieveChannelInt .. "...") 

    modem.open(recieveChannelInt)

    sleep(1)

    print("Channel " .. recieveChannelInt .. " open.") -- 

    print("Transmitting Channel (0-65535): ") -- asks user for input 
    transmitChannel = read()

    sleep(1)
    
    transmitChannelInt = tonumber(transmitChannel) -- defines the transmitChannel as an integer, as modem.open can only handle integer input.

    print("Message to transmit? ")
    tmessage = read()

      modem.transmit(transmitChannelInt, recieveChannelInt, tmessage)
    print(
        "broadcasting message " .. '"' .. tmessage .. '"' .. " on channel " .. transmitChannelInt .. " recieving on channel " .. recieveChannelInt .. "." -- large broadcast message printed to computer screen.
    )
  -- wait for reply
    local event, side, channel, replyChannel, message, distance -- defines vars, the channel variable here is from the computer contacting us from a channel (x).
    repeat
        event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
    until channel == recieveChannelInt -- puts variables into event until the channel variable is equal to the recieving channels variable. This helps prevent spoofing and allows messages from a certain channel. 

    print("Recieved a reply: " .. tostring(message)) -- prints a reply
  elseif user_mode == "R" then 
     write("Recieving Channel (0-65535): ") -- asks user for input 

    recieveChannel = read()
 
    recieveChannelInt = tonumber(recieveChannel) -- defines the recieveChannel as an integer, as modem.open can only handle integer input.

    print("Opening channel " .. recieveChannelInt .. "...")
    
    modem.open(recieveChannelInt)

    print("Channel " .. recieveChannelInt .. " open.")
    
    local event, side, channel, replyChannel, message, distance -- defines vars, the channel variable here is from the computer contacting us from a channel (x).
    repeat
        event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
    until channel == recieveChannelInt -- puts variables into event until the channel variable is equal to the recieving channels variable. This helps prevent spoofing and allows messages from a certain channel. 
     print("Recieved a reply: " .. tostring(message))  -- prints a reply
  end
  else 
    printError("Invalid input.") --error handling
  end
