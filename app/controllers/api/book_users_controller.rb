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
        book_id: book.id,
        status: params[:status],
        rating: params[:rating]
      )
      @book_user.save
      render "index.json.jb"
    else
      render json: "Book not saved"
    end
  end
end
