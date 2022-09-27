-------------------------------------------------
-- Test out slot maniputlation
-- rachel
-------------------------------------------------
print("What's in slot 16?")
turtle.select(16)
print(turtle.getItemDetail())
print(textutils.serialize(turtle.getItemDetail()))

