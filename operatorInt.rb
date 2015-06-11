class MyInt
  def initialize (value)
    @value = value
  end

  attr_accessor :value 

  def *(other)
    MyInt.new(value*other.value)
  end

  def to_s
    "#{@value}"
  end
end

a = MyInt.new(6)
b = MyInt.new(7)

puts a
c = a*b
puts c