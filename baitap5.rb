class PhanSo
	def initialize()

		puts "nhap tu1 = "
		$tu1 = (gets.chomp).to_i
		puts "nhap mau1 = "
		$mau1 = (gets.chomp).to_i
		puts "nhap tu2 = "
		$tu2 = (gets.chomp).to_i
		puts = "nhap mau 2"
		$mau2 = (gets.chomp).to_i

	end
	def Input()
		array = []
		i = 0
		for i in (1..4)
			puts "nhap tu[i] = "
			array[i] = (gets.chomp).to_i
			puts "nhap mau1 = "
			array[i+1] = (gets.chomp).to_i
			i = i + 1
		end
		for i in (1..4)
			puts "#{array[Input]}"
		end
	end
	def Tong()

		@tu = ($tu1*$mau2) + ($tu2*$mau1)
		@mau = $mau1*$mau2
		puts "---- Ket qua ca phep cong 2 phan so ----"
		puts "result : #{@tu}/#{@mau}"

	end
	def Hieu()

		@tu = ($tu1*$mau2) - ($tu2*$mau1)
		@mau = $mau1*$mau2
		puts "---- Ket qua ca phep Hieu 2 phan so ----"
		puts " result : #{@tu}/#{@mau}"

	end
	def Nhan()

		@tu = ($tu1*$tu2)
		@mau = $mau1*$mau2
		puts "---- Ket qua ca phep nhan 2 phan so ----"
		puts " result : #{@tu}/#{@mau}"

	end
	def Chia()

		@tu = ($tu1*$mau2)
		@mau = $mau1*$tu2
		puts "---- Ket qua ca phep chia 2 phan so ----"
		puts "result : #{@tu}/#{@mau}"

	end
end
obj = PhanSo.new
obj.Input
