class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # @books = @user.books
    @books = Book.all
    #余裕があればページング機能追加する
    # @users = @user.books.page(params[:id]).reverse_order
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
 if @user.update(user_params)
    flash[:notice] = "successfully"
    redirect_to user_path(@user.id)
  else
    render action: :edit
   end
  end

private
def user_params
  params.require(:user).permit(:name, :profile_image, :introduction)
end

end
