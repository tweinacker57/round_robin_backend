class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    id = params[:id]
    @user = User.find_by(id: id)
    render 'show.json.jb'
  end

  def create 
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    @user.save
    render 'show.json.jb'
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.save
    render 'show.json.jb'
  end
end
