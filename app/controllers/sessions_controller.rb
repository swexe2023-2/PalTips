class SessionsController < ApplicationController
  def index
    render "login"
  end

  def login
    user = User.find_by(email: params[:email])
    if user != nil
      login_password = BCrypt::Password.new(user.password)
      if login_password == params[:password_encrypt]
        session[:login_id] = user.id
        redirect_to root_path
      else
        render "login"
      end
    else
      render "login"
    end
  end

  def logout
    session.delete(:login_id)
    redirect_to root_path
  end
end
