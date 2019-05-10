#!/usr/bin/lua
--1.global variable not need to declare
--2.if global variable is not declared,it's default value is nil
print(b)
--global variable b defined as 0
b = 0
print(b)
--if you want to delete global variable b,you should just set it as nil
b = nil
print(b)
