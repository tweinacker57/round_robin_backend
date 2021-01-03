class Api::UsersController < ApplicationController
  def index
    if current_user
      render "index.json.jb"
    else
      render json: []
    end
  end

  def show
    id = params[:id]
    @user = User.find_by(id: id)
    render 'show.json.jb'
  end

  def create 
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: {message: "User created successfully"}, status: :created
    else
      render json: { errors: user. errors.full_messages }, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.save
    render 'show.json.jb'
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "User has been removed"}
  end 
end
