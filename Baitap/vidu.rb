    def variable_scope
	    blu=5
     end 
puts variable_scope
3.times {print "ruby!"}
1.upto(9){|x| print x}
a= [2,3,4,5]
a[3]=a[2]-1
a.each do |elt|
	print elt+1
end


    hash = {'nước' => 'ướt', 'lửa' => 'nóng'}

    puts hash['lửa']       # Xuất ra:  nóng

     

    hash.each_pair do |key, value| 

        puts "#{key} thì #{value}"

    end

     

    # Xuất ra:            nước thì ướt

    #                     lửa thì nóng

     

    hash.delete_if {|key, value| key == 'nước'}   # Hủy 'nước' => 'ướt'



    def foo(initial_value=0)

        var = initial_value

        return Proc.new {|x| var = x}, Proc.new { var }

    end

     

    setter, getter = foo

    setter.call(21)

    getter.call # => 21



