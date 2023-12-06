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
      redirect_to users_path
    else
      redirect_to root_path
    end
  end
  
  def show
    #@user = User.find(~~~)
  end

  def destroy
    #@user = User.find(~~~)
  end
end
