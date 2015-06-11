object = "ABC"
new_object = object.dup #Duplicate the object

puts object == new_object
puts object.equal? new_object
puts object.equal? object
puts object.class
puts new_object.class
puts new_object
puts object

puts 1 == 1
puts 1.eql? 1.0
puts 1.eql? 1