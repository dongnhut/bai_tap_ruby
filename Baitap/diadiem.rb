class Database
	def initialize
	end


end
x=[2,4,5,6,8,12,7,12,15]
y=[4,5,2,9,6,14,78,9,2]
puts "Nhap toa do diem o:"
puts "nhap x:"
$xx= gets.chomp.to_i
puts "nhap y:"
$yy= gets.chomp.to_i
i=x.length-1
for i in (0..i)
	r=Math.sqrt(($xx-x[i])*($xx-x[i])+($yy-y[i])*($yy-y[i]))
	if r<=5
		puts "[#{x[i]},#{y[i]}]"
	end
	puts r
end
# puts x.length
# puts y.length