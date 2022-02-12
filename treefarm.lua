-----------------------------------------------------
-- Tree Farm
-- rachel
-- V1 : Jan 2022
-----------------------------------------------------

-- Check running in turtle
if not turtle then
  printError("Requires a Turtle")
  return
end

-- Check input 
local tArgs = { ... }
if #tArgs ~= 1 then
   print("Usage: treefarm setup/farm")
   return
end
  
if not(tArgs[1] == setup or tArgs[1] == farm) then
  printError("Please use setup or farm")
  return
end

print("=================================")
print("= tree farm v1 : " .. tArgs[1])
print("=================================")
print("Please place a chest behind the turtle")
print("with the following items ...")
print(" Slot 01 - Fuel for turtle")
print(" Slot 02 - Saplings (10)")
print("Press enter when complete")
local response = io.read

if  tArgs[1]=="setup" then
  print("Running the setup program")
elseif tArgs[1]=="farm" then
  print("Running the farm program")
else
  printError("Please use setup or farm")
  return
end





