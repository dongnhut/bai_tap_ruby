Person = Class.new
# [:name, :age].each do |attr|
# 	Person.send(:attr_accessor, attr)
# end
Person.send(:attr_accessor, name)

Person.send(:define_method, :hi) do
	puts "I'm #{@name}"
end

class Person 
	def bye
		puts "bye bye!"
	end
end

# class Person 
# 	attr_accessor :name, :age

# 	def hi
# 		puts "I'm #{@name}"
# 	end

# 	def bye
# 		puts "bye!"
# 	end
# end

j = Person.new
j.name="jack"
j.hi
j.bye