class WelcomeController < ApplicationController
  def index
  	@user = User.all
  end

  def check_login
  	@check = User.find_by(name: params[:email], pwd: params[:password])
		if @check.nil?
			redirect_to :back
			# redirect_to action: :index
		else						
			@email= params[:email]
			@pwd= params[:password]
		end
		
	end
end
