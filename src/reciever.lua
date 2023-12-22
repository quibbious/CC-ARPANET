local modem = peripheral.find("modem") or error("No modem found!", 0) -- checks for modem 


write("Receiving Channel (0-65535): ") -- asks user for input 

   local receiveChannel = read()
 
   local receiveChannelInt = tonumber(recieveChannel) -- defines the recieveChannel as an integer, as modem.open can only handle integer input.

    print("Opening channel " .. receiveChannelInt .. "...")
    
    modem.open(receiveChannelInt)

    print("Channel " .. receiveChannelInt .. " open.")
    while true do
    local event, side, channel, replyChannel, message, distance -- defines vars, the channel variable here is from the computer contacting us from a channel (x).
    repeat
        event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
    until channel == receiveChannelInt -- puts variables into event until the channel variable is equal to the recieving channels variable. This helps prevent spoofing and allows messages from a certain channel. 
     print("Recieved a reply: " .. tostring(message))  -- prints a reply
end
return receiverChannelInt
