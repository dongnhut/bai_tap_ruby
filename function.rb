def findEvenNumbers(arr)
	arr.each { |item| print "#{item} " if item.even? }
end

a = [1,2,3,4,5,6,7,8,9,10]

print "Even numbers of array: "
findEvenNumbers(a)
puts ""