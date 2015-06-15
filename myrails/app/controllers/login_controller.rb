class LoginController < ApplicationController
  def index
  end
  def checklogin
  	
    @dn= User.find_by(password_1: params[:password], Ten: params[:name])
    if @dn.nil?
  	    redirect_to action: :index #flash.now[:alert] => "Invalid email or password"
       # flash.now[:alert] = "Invalid email or password"
       # redirect_to '/welcome' 
   	    # render action: "index.html.erb"
    else
    	@password=params[:password]
  	    @name=params[:name]
    end 
  end
  def logout
  	redirect_to action: :index
  	
  end
end