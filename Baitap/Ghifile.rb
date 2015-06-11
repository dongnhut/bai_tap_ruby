class Ghifile
	def initialize

	end

	def Taofile
		out_file = File.new("out.txt", "w")
	  # file Join('root','home','abc.txt')
		out_file.puts("Tao File Thanh Cong!
			Ôi Việt Nam, Tổ quốc của chúng tôi
			Nơi mẹ nuôi con khôn lớn thành người
			Nơi mảnh đất cha ông tôi nằm xuống
			Việt Nam ơi... Trang sử đẹp ngàn năm!
			\t\t")
		# File.open("out.txt", "w") {|f| f.write("write your stuff here") }
		out_file.close
		
	end
	def Ghifile
		out_file = File.new("out.txt", "w")
		out_file.puts($arr2)
		out_file.close
	end
	def Docfile
		
		contents = File.open("out.txt", "r"){ |file| file.read }
    # puts contents
    $arr=Array.new
    $arr2=Array.new
    i=0
    contents.each_line do |line|
   	# arr = line.split
   		 $arr[i] = line
   		 i=i+1

   	# p $arr
  # ... do stuff with arr
  	end
  	 p $arr
  	j=0
  	
  	$mangtu=["Nam","Trang","xuống"]
  	$mangtu.each do |k|
  	$arr.each do |h|
  		# p k[1..-1]
  	 # $arr2[j]=h.tr('#{k[1..-1]}', '*')
  	  # $arr2[j]= h.gsub k[1..-1], "***" 
  	
  	   $arr2[j]= h.gsub k, "#{k[0]}***" 
 		 
  	 j=j+1

    end
    j=0
    $arr=$arr2

    end

		 p $arr2
    # out_file.close
		
	end
	def kiemtra
		  
		
	end
	def Tim

	end

end
f=Ghifile.new
f.Docfile
f.Ghifile