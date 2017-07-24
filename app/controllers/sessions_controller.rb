class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      render 'new'
    else
      flash.now[:danger] = 'invalid email/password combination' 
      render 'new'
    end
  end

  def delete
  end
end