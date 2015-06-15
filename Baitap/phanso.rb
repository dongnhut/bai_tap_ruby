class Phanso

	def initialize(tu1,mau1,tu2,mau2)
	
		$tu1=tu1
		$tu2=tu2
		$mau1=mau1
		$mau2=mau2
    
  end
 	# def initialize(arr)
	
		# $tu1=arr[0]
		# $mau1=arr[1]
		# $tu2=arr[2]
		# $mau2=arr[3]
	
    
  # end
 
  def cong

    	$tu=($tu1*$mau2+ $tu2*$mau1)
    	$mau=($mau1*$mau2)

  end
  def tru

    	$tu=($tu1*$mau2-$tu2*$mau1)
    	$mau=($mau1*$mau2)
  end
  def nhan
    	$tu=$tu1*$tu2
    	$mau=$mau1*$mau2
  end
  def chia
    	$tu=$tu1*$mau2
    	$mau=$mau1*$tu2
  end
  def inphanso
    	puts "phanso #{$tu}/#{$mau}"
    	
  end
end
  def nhap
      puts "nhaptu1:"
    	$tu1= gets.chomp.to_i
    	puts "nhap mau1"
    	$mau1=gets.chomp.to_i
    	puts "nhaptu2:"
    	$tu2= gets.chomp.to_i
    	puts "nhap mau2"
    	$mau2=gets.chomp.to_i
      arr=[$tu1,$mau,$tu2,$mau2]
    	
    end	
 nhap
 arr.each do |name|
  puts "#{name}!"
end
# p=Phanso.new(arr)
# puts $tu1
# puts $mau1
# puts $tu2
# puts $mau2
p= Phanso.new($tu1,$mau1,$tu2,$mau2)
 #p= Phanso.new(1,3,4,5)

puts p.respond_to?("cong")
p.cong
p.inphanso
p.tru
p.inphanso
p.nhan
p.inphanso
p.chia
p.inphanso