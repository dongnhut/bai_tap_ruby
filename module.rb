module Module1
	def method
		puts "I'm in module method"
	end
end

class A
	extend Module1

	def method_a
		puts "I'm in A method"
	end
end

class B
	include Module1

	def method_b
		puts "I'm in B method"
	end
end

A.method
B.new.method
