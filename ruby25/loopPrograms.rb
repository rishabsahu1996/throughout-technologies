#for loop 

a = gets.chomp.to_i
for i in 1..a do
	puts "#{a} #{i}" 
	puts i
end


x =["bagani","jamuni","nila","pila","narangi","lal"]
for i in x do
	puts i
end

#while loop
x = gets.chomp.to_i

while x>10 do
	puts x
	x-=1
end
# do while loop
loop do
	puts "enter the right number"
	a = gets.chomp
	if a != "h"
		break
	end
end

#until loop

i = 1
until i == 10
	print i*10 , "\n"
    i+=1
 end 

#break keyword
i = 1
while true
	if 5*i >= 25
		break
	else
		puts i*5
		i+=1
	end
end


#next keyword

for i in 5..11 do
	if i == 7
		next
	end
	puts i
end

#redo keyword

i = 1
while i < 5
	puts i
	i += 1
	redo if i == 5
end