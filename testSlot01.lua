-------------------------------------------------
-- Test out slot maniputlation
-------------------------------------------------
print("What's in slot 16?")
--EH?
turtle.select(16)
print(textutils.serialize(turtle.getItemDetail()))

