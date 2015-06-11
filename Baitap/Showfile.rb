class Showfile
	def initialize
		$directory = "/home/chienpv/vidu/"

	    #puts Dir["#{directory}*"]
	    Dir["#{$directory}*"].each do |f| 
  		# if File.directory?(f)
    	puts "#{f}\n"
  		end
	end
end

 Showfile.new
