puts "Enter marks: "
arr = []
i = 0
while i<4
	begin
		number = gets.chomp
		Integer(number)
		arr.push(number.to_i)
		i = i + 1
	rescue 
		puts "#{number} is not a number"
		redo
	end	
end
puts "Marks: #{arr}"
odds = 0
evens = 0
arr.each { |item| 	
	if item.even? then
		evens += item
	else odds += item
	end		
}

if odds > evens 
	puts "Odds sum: #{odds}"
else puts "Evens sum: #{evens}"
end
