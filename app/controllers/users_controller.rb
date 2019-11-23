class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @accepts = Accept.includes(:user)
    @requests = Request.includes(:user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to "/users/#{current_user.id}"
  end

  def destroy
    accept = Accept.find(params[:id])
    accept.destroy
    redirect_to "/users/#{current_user.id}"
  end

  private
  def user_params
    params.require(:user).permit(:name, :nickname, :email, :region, :address, :age, :gender)
  end

end
