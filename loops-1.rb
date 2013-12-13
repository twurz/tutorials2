i = 0
string = "Hello World"

while i <= 10 
	string = "Hello World #{i}"
	puts "i is now #{i}"
	i += 1
end

puts "The final value of #{i}"
puts "The final value of string #{string}"