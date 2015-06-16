class WelcomeController < ApplicationController
   def index
    # binding.pry 
    @articles = Article.do_list
  
	@ideas = Idea.do_avatar
end

  
  
 
end
