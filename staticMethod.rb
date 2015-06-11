class StaticMethod
	def StaticMethod.method1
		puts "I'm in static method 1"
	end

	def self.method2
		puts "I'm in static method 2"
	end
end

StaticMethod.method1
StaticMethod.method2

aName = StaticMethod.new
def aName.sayHi
	puts "Hi! I'm an object method"
end

aName.sayHi

# anotherName = StaticMethod.new
# anotherName.sayHi