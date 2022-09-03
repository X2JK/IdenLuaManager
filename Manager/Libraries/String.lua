local String = {}

function String:toBytes(a)
 return a:gsub(".",function(b)return"\\"..b:byte()end)
end

function String:toByteTable(a)
 local b = {}
 a:gsub(".",function(c)table.insert(b,c:byte())end)
 return b
end

function String:toCharTable(a)
 local b = {}
 a:gsub(".",function(c)table.insert(b,c)end)
 return b
end

return String
