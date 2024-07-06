local modem = peripheral.find("modem") or error("No modem found", 0)
local compID = os.getComputerID()
if modem then

  print("modem found!") 

  write("Transmit or receive (T or R)? ") -- asks to transmit only OR recieve only. recieve only could be useful for servers and whatnot.
    local user_mode = read()

    if user_mode == "T" then 

    write("Transmitting Channel (0-65535): ")
    transmitChannel = read()
 transmitChannelInt = tonumber(transmitChannel) -- modem.open can only handle integer input, so we change transmitChannelInt to an integer.
     write("Recieving Channel (0-65535): ")

    receiveChannel = read()
 
    receiveChannelInt = tonumber(receiveChannel) -- modem.open can only handle integer input, so we change receiveChannelInt to an integer.

    print("Opening channel " .. receiveChannelInt .. "...")
    
    modem.open(receiveChannelInt)
    
        while true do 
    print("Message to transmit? ")
    tmessage = read()
payload = compID .. ": " .. tmessage
    print("Channel " .. receiveChannelInt .. " open.")
      modem.transmit(transmitChannelInt, receiveChannelInt, payload)
    print(
        "broadcasting message as " .. compID .. ', ' .. '"' .. tmessage .. '"' .. " on channel " .. transmitChannelInt .. " .")-- big ol' broadcast msg!
      end
    
  elseif user_mode == "R" then 
     write("Recieving Channel #2(0-65535): ")

    receiveChannel = read()    
 
    receiveChannelInt = tonumber(receiveChannel) -- modem.open can only handle integer input, so we define receiveChannelInt as an integer of receiveChannel.

    print("Opening channel " .. receiveChannelInt .. "...")
    
    modem.open(receiveChannelInt)

    print("Channel " .. receiveChannelInt .. " open.")
    while true do
    local event, side, channel, replyChannel, message, distance -- defines vars, the channel variable here is from the computer contacting us from a channel (x).
    repeat
        event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
    until channel == receiveChannelInt -- when the channel transmitting msgs is equal to the receiving channel, stop the loop. 
     print("received a reply from " .. tostring(message))
    end
  end
  else 
    printError("Invalid input.")
  end
