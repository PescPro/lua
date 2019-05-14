--[[
	loop condition
	loop statements
]]--

--[[
	while loop
	
	while condition
	do
		statements
	end
]]--
do
	local i = 1
	while i <= 10 -- loop condition
	do
		-- loop body
		print("while loop : ",i)
		i = i + 1
	end
end

--[[
	break a loop
]]--
do
	local i = 1
	while i < 10
	do
		if(i == 5) then
			print("break a loop :","breaked")
			break
		end
		print("break a loop :",i)
		i = i + 1
	end
end

--[[
	for loop
	
	for init,max/min value, increment
	do
	   statements
	end
]]--

for i = 1, 10, 2
do
  print("for loop : ", i )
end

--[[
  
]]-- 
do
  local days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}
  for i,v in ipairs(days)
  do
    print("for loop in collecation : ",i,v)
  end 
end


--[[
	repeat until
]]--
do
	local l_a = 1
	repeat 
		print("repeat until", l_a)
		l_a = l_a + 1
	until l_a > 5
end

