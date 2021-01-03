class SessionsController < ApplicationController
  def show

  end

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    byebug
    if user && user.authenticate(params[:session][:password])
      reset_session
      log_in(user)
      redirect_to(user)
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
end
