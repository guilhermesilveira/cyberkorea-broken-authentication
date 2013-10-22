class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.all
  end

  # GET /
  def loginForm
  end
  
  # POST /users/login
  def login
    login = params[:login]
    password = params[:password]
    @found = User.where("login = ? and password = ?", login, password).first
  end
end
