--[[
  1.global variable
  2.local variable
]]--

--gloabl variable
g_var = 1
print(g_var)

do
  --local variable
  local l_var = 2;
  print(l_var)
end

print(g_var,l_var)

--evaluation
g_var = 2
print(g_var)

do 
  local l_a,l_b = 1,2
  print(l_a,l_b)
  
  --swap l_a and l_b
  l_a,l_b = l_b,l_a
  print(l_a,l_b)
end

--[[
a. 变量个数 > 值的个数             按变量个数补足nil
b. 变量个数 < 值的个数             多余的值会被忽略
]]--
do
  local a, b, c = 1, 2
  print(a,b,c)
end

--[[
  when count of variable list is less than count of value list,
  spare value would be discarded
]]--
do
  local a, b = 1, 2, 3
  print(a,b)
end

--[[ 
  when count of value list is less than count of variable list,
  spare variables would be evaluated to nil
]]--
do 
  local a, b, c = 0
  print(a, b, c)
end

