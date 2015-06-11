class BadWord
  def changeword
    bad_word = ["fuck","oopsShit","motherfucking","pussy","damn it","piss","hell","bullshit","bitch","ass"]
    data = File.read("script.txt")
    filterdata=bad_word.map{|item|
     data.gsub!("#{item}","***")
    
    }
    puts data
  file = File.open("script.txt","w")
  file.puts data
  file.close
  end
end
khue = BadWord.new()
khue.changeword()
