class FavoritesController < ApplicationController
before_action :authenticate_user!
before_action :set_variables

  def favorite
    # book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: @book.id)
    favorite.save
    # redirect_to book_path(book)
  end

  def unfavorite
    # book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: @book.id)
    favorite.destroy
    # redirect_to book_path(book)
  end

  private
  def set_variables
    @book = Book.find(params[:book_id])
    @id_name = "#like-link-#{@book.id}"
    @id_heart = "#heart-#{@book.id}"
  end
end
