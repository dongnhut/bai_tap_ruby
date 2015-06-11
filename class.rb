class Car
	# def getColour
	# 	@colour
	# end
	 
	# def setColour colour
	# 	@colour = colour
	# end
	attr_accessor :colour, :engine_size
end
 
# my_car = Car.new
# my_car.setColour "Blue"
my_car = Car.new

my_car.colour = "red"
puts my_car.colour
# puts "My Car is #{my_car.getColour}"