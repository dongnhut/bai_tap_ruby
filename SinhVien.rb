class SV	
	module ClassMethods
		def hoc_bai
			puts "SV hoc bai"
		end
	end
		
	module InstanceMethods
		def dang_ky
			puts "dang ky hoc phan"
		end
	end
	
	def self.an_com
		puts "an com"
	end
end

sv = SV.new
# sv.hoc_bai
# SV.hoc_bai
SV::an_com
# sv::hoc_bai