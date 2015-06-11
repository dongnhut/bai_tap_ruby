class PhanSo
	def initialize(tu, mau)
		@tu = tu
		@mau = mau
	end	

	attr_accessor :tu, :mau	

	def +(other)
		a = tu*other.mau + mau*other.tu
		b = mau*other.mau
		x = ucln(a, b)
		self.class.new(a/x, b/x)
		# self.class.new(tu*other.mau + mau*other.tu, mau*other.mau).toiGian
	end

	def -(other)
		a = tu*other.mau - mau*other.tu
		b = mau*other.mau
		x = ucln(a, b)
		self.class.new(a/x, b/x)
		# self.class.new(tu*other.mau - mau*other.tu, mau*other.mau).toiGian
	end

	def *(other)
		a = tu*other.tu
		b = mau*other.mau
		x = ucln(a, b)
		self.class.new(a/x, b/x)
		# self.class.new(tu*other.tu, mau*other.mau).toiGian
	end

	def /(other)
		x = ucln(tu*other.mau, mau*other.tu)
		self.class.new(tu*other.mau/x, mau*other.tu/x)
		# result = self.class.new(tu*other.mau, mau*other.tu)
		# result.toiGian
		# result
	end

	def to_s
		"#{@tu}/#{@mau}"
	end	

	def ucln(a, b)
		a = a.abs
		b = b.abs		
		while a != b
			if a > b then a = a - b
			else b = b - a 
			end
		end
		a	
	end

	def toiGian
		tu = tu / ucln(tu, mau)
		mau = mau / ucln(tu, mau)
	end

end

