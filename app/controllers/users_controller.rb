class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def show
    @user = current_user
  end
  def new
    @user = User.new
 end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'ユーザー情報を更新しました。'  
    else
      render :edit
    end  
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :profile, :profile_image)
  end
end
