class ApplicationController < ActionController::Base
  #before_action :require_login




private
  def require_login
    if session[:user_id].nil?
  redirect_to :action=> 'login'
  flash[:notice] = "Login first...!"
  end
end
end
