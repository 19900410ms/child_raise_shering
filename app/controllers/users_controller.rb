class UsersController < ApplicationController

  before_action :set_user, only: [:show, :deal]
  before_action :move_to_index, only: [:show, :deal]

  def show
    @accepts = @user.accepts.order("date ASC")
    @requests = @user.requests.order("date ASC")
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to "/users/#{current_user.id}"
  end

  def deal
    @accepts = @user.accepts.order("date ASC")
    @requests = Request.all
  end

  private
  def user_params
    params.require(:user).permit(:name, :nickname, :email, :prefecture_id, :city, :building_street, :age, :gender)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def move_to_index
    redirect_to :root unless user_signed_in?
  end

end
