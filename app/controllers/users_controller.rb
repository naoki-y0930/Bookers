class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #余裕があればページング機能追加する
  end
end
