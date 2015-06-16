class Article < ActiveRecord::Base
	def self.do_list
		Article.all
	end

end

