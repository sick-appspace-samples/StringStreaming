
--Start of Global Scope---------------------------------------------------------

-- Data which is streamed
local SHORT = 1346
local BYTE = 76
local LONG = 2464321

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope-----------------------------------------------

local function packString()
  --'HBL' = Unsinged short (H), unsinged byte (B) and unsinged long (L)
  --More information about the format can be found in the string component description
  local binaryString = string.pack('HBL', SHORT, BYTE, LONG)
  -- Writing data to file
  local file = File.open('/private/TestStringPacks.bin', 'wb')
  assert(file, 'File could not be opened to write')
  File.write(file, binaryString)
  File.close(file)
end

local function unpackString()
  -- Reading binary data from file
  local file = File.open('/private/TestStringPacks.bin', 'rb')
  assert(file, 'File could not be opened to read')
  local data = File.read(file)
  File.close(file)

  -- Unpacking binary data read from file
  local value1, value2, value3 = string.unpack('HBL', data)
  print('value 1 read: ' .. tostring(value1))
  print('value 2 read: ' .. tostring(value2))
  print('value 3 read: ' .. tostring(value3))
end

---Declaration of the 'main' function as an entry point for the event loop.
local function main()
  packString()
  unpackString()
end

--The following registration is part of the global scope which runs once after startup
--Registration of the 'main' function to the Engine.OnStarted event
Script.register('Engine.OnStarted', main)

--End of Function and Event Scope-----------------------------------------------
