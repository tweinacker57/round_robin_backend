class Api::UsersController < ApplicationController
  def index
    render "index.json.jb"
  end
end
