file_path = File.join(Dir.pwd, "**/*")
arr = Dir.glob(file_path)
arr.collect do |item| 
	puts "File: #{item}" if File.file?(item) 
	puts "Dir: #{item}" if File.directory?(item)
end