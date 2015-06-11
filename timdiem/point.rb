class Point
	def initialize(x,y)
		@x = x
		@y = y
	end

	attr_accessor :x, :y

	def distance(other)
		Math.sqrt((other.x - @x)*(other.x - @x) + (other.y - @y)*(other.y - @y))
	end

	def to_s
		"(#{@x}, #{@y})"
	end
end

