class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :current_user

private
def current_user
  @current_user ||= Account.find(session[:account_id]) if session[:account_id]
rescue ActiveRecord::RecordNotFound
    session[:account_id] = nil
end
  protect_from_forgery with: :exception
end
