class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit]

  def show
    @accepts = @user.accepts.order("date ASC")
    @requests = @user.requests.order("date ASC")
  end

  def edit
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to "/users/#{current_user.id}"
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :nickname, :email, :region, :address, :age, :gender)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
