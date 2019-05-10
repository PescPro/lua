--[[
  lua examples
]]--

local cjson = require "cjson"
--1.create a table 
local table_a = {1,2,3}
print(cjson.encode(table_a))
print("table_a\'s type is "..type(table_a))

--2.table supports array,index starts with 1
print(table_a[3])

--3.table supports associative array
table_a["name"] = "associative array"
print(table_a["name"])
print(cjson.encode(table_a))

--4.use the same table with table_a and table_b
local table_b = table_a
table_a["name"] = "change to b"
print(cjson.encode(table_b))

--5.free table_a
table_a = nil
print(cjson.encode(table_a)) -- a is set to nil
print(cjson.encode(table_b)) -- b is not changed

--6.table.concat(),concat elements in table to string
table_a = {"apple","pear","strawberry"}
print(table.concat(table_a));
print(table.concat(table_a,","))
print(table.concat(table_a,",",1,2))

--7.table.insert() insert element 
table.insert(table_a,"grapes")
print(cjson.encode(table_a))

--8.insert element at index
table.insert(table_a,1,"mango")
print(cjson.encode(table_a))

--9.table.remove to remove a element
table.remove(table_a)
print(cjson.encode(table_a))

--10.remove a element at index
table.remove(table_a,1)
print(cjson.encode(table_a))

local fruits = {"mango","banana","orange","apple","strawberry","grapes"}
print(cjson.encode(fruits))
table.sort(fruits)
print(cjson.encode(fruits))

-- use # or table.getn to get length of table will get wrong length if table are used as associative array
function table_leng(t)
  local leng = 0
  for k,v in pairs(t) do
    leng = leng + 1
  end
  return leng
end

fruits["name"] = "watermelon"

--get length we get true length
print(table_leng(fruits))
fruits[2] = nil
--get length these with index
print(table.getn(fruits))
--get length these with index
print(#fruits)


