scores = {"chuong"=>2, "html"=>4}
scores
scores.keep_if {|key,value| value<4}
scores.each do |key, value|
	puts "#{value}"	
end