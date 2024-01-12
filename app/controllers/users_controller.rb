require 'bcrypt'

class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    puts "create起動"
    puts  params[:user][:password_encrypt]
    @user = User.new(
      a: "a",
      user_name: params[:user][:user_name],
      email: params[:user][:email],
      password_encrypt: params[:user][:password_encrypt],
      password_encrypt_confirmation: params[:user][:password_encrypt_confirmation])
    puts "@userインスタンス作成完了"
    @user.valid?
    puts @user.errors.full_messages
    if @user.save
      print("新規追加したuserのid表示：", @user.id)
      session[:login_id] = @user.id
      redirect_to root_path
    else
      render "new"
    end
  end
  
  def show
    @selected_user = User.find(params[:id])
    @user_questions = @selected_user.questions
    render "show"
  end

  def destroy
    print("destroy起動")
    delete_user = User.find(current_user.id)
    delete_user.destroy
    session.delete(:login_id)
    print(session)
    redirect_to root_path
  end
end
