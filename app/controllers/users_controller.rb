class UsersController < ApplicationController
  before_action :authenticate_user!

  def search
    num = params[:num]
    @search = User.search(params[:search], (num))
  end


  def following
    @user = User.find(params[:id])
    # @users = @user.followings
    render 'show_follow'
  end

  def followers
    @user = User.find(params[:id])
    # @users = @user.followers
    render 'show_follower'
  end

  def index
    @users = User.all
    @user = current_user
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
    #余裕があればページング機能追加する
    # @users = @user.books.page(params[:id]).reverse_order
  end

  def edit
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end

  def update
    @user = User.find(params[:id])
     if @user.update(user_params)
        flash[:notice] = "successfully"
        redirect_to user_path(@user.id)
      else
        render :edit
     end
   end



private
def user_params
  params.require(:user).permit(:name, :profile_image, :introduction)
end

end
