class Input
	require './point'

	def nhap
		puts "Nhap toa do: "
		print "\tx = "
		@x = gets.to_i
		print "\ty = "
		@y = gets.to_i
		Point.new(@x, @y)
	end
end

arr = []
input = Input.new
5.times {
	arr.push(input.nhap)
}
puts "Nhap toa do diem O: "
o = input.nhap
arr.each{|p| puts p if p.distance(o) <= 5}
