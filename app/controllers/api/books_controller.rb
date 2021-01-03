class Api::BooksController < ApplicationController
  
  def index
    @book = Book.all
    if current_user
      render "index.json.jb"
    else
      render json: []
    end
  end

  def show
    id = params[:id]
    @book = Book.find_by(id: id)
    if current_user
      render "show.json.jb"
    else
      render json: []
    end
  end
end
