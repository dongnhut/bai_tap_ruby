class Xe
	def nhap
		puts "nhap ten: "
		@name = gets
		puts "nhap tuoi: "
		@age = gets.to_i
	end

	def xuat
		puts "#{@name}#{@age}"	
	end
end

xe = Xe.new
xe.nhap
xe.xuat