class Mang
	def initialize
	numbers = [11, 6, 5, 55, 9, 8, 15, 3, 7, 13]
	 numbers.sort!
	p numbers
	$i = numbers.find_index(9)  
	puts numbers[$i-1]
	end
end
Mang.new