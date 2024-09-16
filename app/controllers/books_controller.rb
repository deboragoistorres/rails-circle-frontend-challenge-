class BooksController < ApplicationController

  def index
    response = BooksService.fetch_books
    @books = response["books"]
  end

  def show
    response = BooksService.fetch_books
    @book = response["books"].find { |book| book["id"] == params[:id].to_i }
  end
end
