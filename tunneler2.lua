-----------------------------------------------------------------------------------------------
-- TUNNELER2
-----------------------------------------------------------------------------------------------
-- Rachel
-- Create a 3x3 tunnel for n blocks
-----------------------------------------------------------------------------------------------

-- Program Initialisation

-- Check running in turtle
if not turtle then
  printError("Requires a Turtle")
  return
end

-- Check input 
local tArgs = { ... }
if #tArgs ~= 1 then
   print("Usage: tunneller2 <distance>")
   return
end
  
local tLength = tonumber(tArgs[1])
if tLength < 1 then
  printError("Tunnel length must be positive")
  return
end

-- Check fuel
if turtle.getFuelLevel() < 100 then
   print("Refuel turtle!")
   return
end

-- Initialise Variables  
pos = 0

-- March Onwards
function goForwards()
  if turtle.detect() then turtle.dig() end
  turtle.attack()
  turtle.forward() 
end 

-- Dig out section
function digSection()
  goForwards()
  turtle.digUp()
  turtle.digDown()
  turtle.turnLeft()
  goForwards()
  turtle.digUp()
  turtle.digDown()
  turtle.back()
  turtle.turnRight()
  turtle.turnRight()
  goForwards()
  turtle.digUp()
  turtle.digDown()
  turtle.back()
  turtle.turnLeft()
end

-- Main function
print("+-------------------------------+")
print("+-----    Tunneler 2  ---------+")
print("+-------------------------------+")

turtle.up()
for pos = 1,tLength,1 do
  digSection()
end
turtle.down()
