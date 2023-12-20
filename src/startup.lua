
local periList = peripheral.getNames()
print("detecting peripherals...")
sleep(2)
for i = 1, #periList do
	print("I have a "..peripheral.getType(periList[i]).." attached as \""..periList[i].."\".")
end

print("end of program")