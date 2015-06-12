
class WelcomeController < ApplicationController
  def index
  end
  def new
  end
  def authenticate
    @name = params[:name]
    @password = params[:password]
  user = User.find_by_name(@name)
  if user && user.password == @password
      redirect_to users_path
    else
      redirect_to root_path, :alert => "Invalid name or password"
    end
end
end
