class SessionsController < ApplicationController
  def new
  end
  def create
  account = Account.authenticate params[:name], params[:password]
    if account
      session[:account_id] = account.id
      redirect_to root_path, :notice => "Welcome back to Checkgenger"
    else
      redirect_to :login, :alert => "Invalid name or password"
    end
end

def destroy
  session[:account_id] = nil
  redirect_to root_path :notice => "You have been logged out"
end
end
