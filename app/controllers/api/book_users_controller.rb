class Api::BookUsersController < ApplicationController

  def index
    @book_user = BookUser.all
    if current_user
      render "index.json.jb"
    else
      render json: []
    end
  end

  def create
    if current_user
      @book_user = BookUser.new(
        user_id: current_user.id,
        book_id: params[:book_id],
        status: params[:status]
      )
      @book_user.save
      render "show.json.jb"
    else
      render json: "Book not saved"
    end
  end

  def update
    if current_user
      @book_user = BookUser.find_by(id: params[:id])
      @book_user.status = params[:status]
      @book_user.rating = params[:rating]
      @book_user.save
      render 'show.json.jb'
    end
  end
end
