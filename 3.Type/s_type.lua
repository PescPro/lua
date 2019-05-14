--[[
  lua's data type
]]--

--1. nil means invalid value
local t_nil = nil
print(type(t_nil))

--use nil to delete value
local t_table = {}
print(type(t_table))
t_table = nil -- free memory
print(t_table)

print("t_table equals nil:",t_table == nil)
print("type(t_table) equals nil",type(t_table) == nil)
print("type(t_table) equals nil",type(t_table) == "nil") --for type(type(nil)) == "string"

--2. boolean has two values true / false ,nil can be used as false
local t_boolean = true
print(t_boolean) 

local t_boolean = false
print(t_boolean)
print(type(t_boolean))

print("nil can be used as false :",nil == false)  -- nil == false equals false
print("nil can be used as false :",(not nil) or false)  --nil can only be used in not and or

--3. number can represent int,double etc.
local t_number = 1
print(t_number)
print(type(t_number))

local t_number = 1.01
print(t_number)
print(type(t_number))

--4.string
local t_string = "hello world"
print(t_string)

local t_string = 'hello my world'
print(t_string)

local t_string = [[
    java is useful
    python is useful
]]
print(t_string)

-- use .. to link string
print("string link example : ","hello".."world")

-- use # to get length of string
local t_string = "helloworld"
print("string length example : ",t_string.."'s length is : ",#t_string)

--5.function
print(type(require))
print(type(table.insert))




