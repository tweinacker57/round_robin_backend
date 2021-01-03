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
end
