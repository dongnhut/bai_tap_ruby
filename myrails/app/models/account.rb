class Account < ActiveRecord::Base
	
	def self.list_nam
	 Account.where(GioiTinh: 'nam')
	end
	
	def self.list_all
		Account.all
	end
	def self.chitiet(id)
		 Account.find_by_id(id)
	end
	def self.Edit(id)
		Account.find_by_id(id)
		
	end
	def self.update(id,ten,gioitinh,diachi)
		Account.find_by_id(id).update(:Ten=>ten,:GioiTinh=>gioitinh,:DiaChi=>diachi)

		
	end
	def self.create(ten,gioitinh,diachi)
		# binding.pry
		object=Account.new(:Ten=>ten,:GioiTinh=>gioitinh,:DiaChi=>diachi)
		object.save
	end
end
