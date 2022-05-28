print('trying to make a new language in lua')
print('\n')
local file = io.open(arg[1],"r")
local code = file:read "*a"
local filename = arg[1]
local function execute()
  code = code:gsub("void ","function")
  code = code:gsub("{}}","end")
  local newfile = io.open(filename:gsub("idk","lua"),"w")
  newfile:write('local output = print\n' + code)

  newfile:close()
  os.execute("lua test.lua")
end
execute()
