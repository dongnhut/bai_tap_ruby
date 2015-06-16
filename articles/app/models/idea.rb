class Idea < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	def self.do_avatar
		Idea.all
	end
	
end
