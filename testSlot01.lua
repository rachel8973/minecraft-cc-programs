-------------------------------------------------
-- Test out slot maniputlation
-------------------------------------------------
print("What's in slot 16?")
turtle.select(16)
print(turtle.getItemDetail())
print(textutils.serialize(turtle.getItemDetail()))

