print "nhap n = "
n = gets.to_i
arr = Array.new(n) {}
puts "nhap mang: "
i = 0
while i<n
	print "arr[#{i}]="
	arr.push(gets.to_i)
	i = i+1
end

puts "mang da nhap la: "
arr.each { |item| print item, " " }
puts ""