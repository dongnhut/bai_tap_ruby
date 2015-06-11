class BadWord
	
	def initialize(path)
		@file_path = path
		@bad_words = {}
	end

	# read file content into an array
	def read_file
		file = File.open(@file_path, "r")
		@file_content = file.readlines	
		file.close
	end

	# write array content into file 
	def update_file
		file = File.open(@file_path, "w")
		file.puts self.replace
		file.close
	end

	# add a bad word 
	def add_bad_word(word)
		value = word[0]
		for i in 2..word.length
			value << "*"
		end

		@bad_words[word] = value # add a word into hash
	end

	# replace bad word by another word
	def replace
		@file_content.map { |line| 
			@bad_words.keys.map { |word| line.sub!(word, @bad_words[word]) }
			line
		}
		@file_content
	end
end

file_path = File.join(Dir.pwd, "badword.txt")
bw = BadWord.new(file_path)
bw.add_bad_word("bad")
bw.read_file
# bw.replace
bw.update_file