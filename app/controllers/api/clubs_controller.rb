class Api::ClubsController < ApplicationController
  

  def show
    render 'show.json.jb'
  end

  def create 
    book_club = BookClub.new(
      name: params[:name],
      book_id: params[:book_id]
    )
    if book_club.save
      render json: {message: "Book club created successfully"}, status: :created
    else
      render json: { errors: user. errors.full_messages }, status: :bad_request
    end
  end
end
