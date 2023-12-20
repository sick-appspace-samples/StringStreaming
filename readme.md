## StringStreaming

Streaming binary data using the Lua functions string.pack() / string.unpack().

### Description

This sample shows the streaming of data packed with the Lua string.pack function.
First the data is packed (serialized in binary form) and written to a file.
Then the same file is read, unpacked and the data is stored back to variables.
Their values are then printed to the console. The packing and unpacking needs a
format string ("HBL" in this sample). This defines how the data is packed. More
information about the format string can be found in the component description or
in the Lua reference manual.

### Topics

programming-pattern, sample, sick-appspace
