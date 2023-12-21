local monitor = peripheral.find("monitor") -- define monitor as the peripheral found
--Note that the monitor must be adjacent to the computer, not diagonal to it. otherwise, the computer will not detect the peripheral. :/

print("Starting...")
sleep(1) -- acts like its doing something, optional to have this line
if monitor then -- checks if monitor is present
    monitor.clear() -- clears the monitor from any previous text
    monitor.setTextScale(1)
    monitor.setCursorPos(2, 1)
    print("monitorLinked") -- prints to a link message on the computer
    monitor.write("computerLinked") -- prints a link message to the monitor
else
    print("Startup Completed, but no Monitor was Found!") -- error handling
end
