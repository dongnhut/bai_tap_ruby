 class Phanso
	def initialize(tu1 , mau1, tu2 , mau2)
        $tu1 =arr[0]
       $mau1 = arr[1]
        $tu2 = arr[2]
        $mau2 = arr[3]      
    
    end
    def nhap
       arr =[]
        puts "nhap tu so1"
        tu1 = gets.chomp
        arr.push tu1
        puts "nhap mau so1"
        mau1 =gets.chomp
        arr.push mau1
        puts "nhap tu so2"
        tu2=gets.chomp
        arr.push tu2
        puts "nhap mau so2"
        mau2= gets.chomp
        arr.push mau2 
  puts arr  
    end

    def cong()
    	@tu=($tu1*$mau2+ $tu2*$mau1)
    	@mau=($mau1*$mau2)
        puts "#{@tu} / #{@mau}"
    end
    def tru
    	@tu=(tu1*mau2-tu2*mau1)
    	@mau=(mau1*mau2)
    end
    def nhan
    	@tu=tu1*tu2
    	@mau=mau1*mau2
    end
    def chia
    	@tu=tu1*mau2
    	@mau=mau1*tu2
    end
    

end

p= Phanso.new(arr[0],arr[1],arr[2],arr[3])
p.nhap
p.cong
# nhap
#puts p.respond_to?("nhan")
# p.cong(tu1,mau1,tu2,mau2)
# p.inphanso(tu1,mau1)