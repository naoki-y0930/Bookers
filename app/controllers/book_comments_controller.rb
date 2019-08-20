class BookCommentsController < ApplicationController
before_action :authenticate_user!

   def create
     book = Book.find(params[:book_id])
     comment = current_user.book_comments.new(book_comment_params)
     comment.book_id = book.id
     if comment.save
       redirect_to book_path(book)
     else
       @books = Book.new
       @book = book
       @user = @book.user
       @book_comment = comment
       render "books/show"

     end
   end

   def edit
     @book = Book.find(params[:book_id])
     @book_comment = BookComment.find(params[:id])
   end

   def update
     book = Book.find(params[:book_id])
     @comment = BookComment.find(params[:id])
     @comment.update(book_comment_params)
     redirect_to book_path(book)
   end

   def destroy
      book = Book.find(params[:book_id])
      @comment = BookComment.find(params[:id])
      @comment.destroy
      redirect_to book_path(book)
   end


private
def book_comment_params
  params.require(:book_comment).permit(:comment, :user_id, :book_id)
end
end
