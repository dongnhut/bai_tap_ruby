class Car
	colour = ""
	def startEngine
		puts "Engine Started"
	end
 end
 
my_car = Car.new
puts my_car.class
 
new_car = my_car.clone # my_car.dup
puts new_car.class


puts my_car.eql? new_car