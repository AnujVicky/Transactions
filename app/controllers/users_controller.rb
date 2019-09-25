class UsersController < ApplicationController
  before_action :require_login, :only=> [:dashbord]
  def login
  end

  def index
  end

  def new
@signup = User.new
  end

  def create
    #raise params.inspect
  @signup = User.new
  @signup.name =params[:user][:name]
  @signup.email = params[:user][:email]
  @signup.password = params[:user][:password]
  #@signup.confirm_password = params[:user][:confirm_password]
  if params[:user][:password] == params[:user][:password_confirmation]
  #@signup.confirm_password = params[:user][:confirm_password]
  if @signup.save

    flash[:notice] = "Account Created Successfully!"
    redirect_to :action => 'login'
  else
    render 'new'
  end

else
  redirect_to :action => 'new'
flash[:warning] =  "Password Donesn't match!!"
end

  end
  def login
    #raise params.inspect

  end
def dash
  #raise params.inspect
  signin = User.find_by_email(params[:user][:email])
  @pass = params[:user][:password]
  #raise signin.id.inspect
  if signin.present? && signin.authenticate(@pass)
    session[:user_id] = signin.id
    #raise session[:user_id].inspect
  redirect_to :action => 'dashbord', :id => signin.id
  #render_to_string
  else
    redirect_to :action => 'login'
  flash[:warning] =  "Please Try Again!"
  end
end

def dashbord
#raise params.inspect
  @sign = User.find_by_id(params[:id])
end
  def edit
  end

def destroy
session.delete(:user_id)
render :action=> 'login'

end

  def list
  end
end
