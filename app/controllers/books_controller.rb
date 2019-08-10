class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    # @つけるか後で確認
     @book = Book.new(book_params)
     @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "successfully"
     redirect_to book_path(@book)
   else
     render action: :new
   end
  end

  def index
     @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
