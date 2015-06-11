# require './PhanSo'

class Test	
	require './PhanSo'
	def self.nhap
		while true
			begin				
				print "Nhap tu so: "
				so = gets.chomp
				tu = Integer(so)
				print "Nhap mau so: "
				so = gets.chomp
				mau = Integer(so)
				ps = PhanSo.new(tu,mau)
				puts "Phan so da nhap: #{ps}"
				break
			rescue Exception => e
				puts "#{so} khong phai la so, moi nhap lai"
				puts ""
			end	
		end

		puts ""
		ps	
	end

	# def is_number?
	# 	true Integer(self) rescue false
	# end

	ps1 = Test.nhap
	ps2 = Test.nhap 

	puts "Cac phep toan: "
	puts "#{ps1} + #{ps2} = #{ps1 + ps2}"
	puts "#{ps1} - #{ps2} = #{ps1 - ps2}"
	puts "#{ps1} * #{ps2} = #{ps1 * ps2}"
	puts "#{ps1} / #{ps2} = #{ps1 / ps2}"
end