class Api::BooksController < ApplicationController
  def index
    render 'index.json.jb'
  end

  def show
    render 'show.json.jb'
  end
end
