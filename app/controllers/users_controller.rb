class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :deal]
  before_action :move_to_index, only: :deal

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
    redirect_to :root unless current_user.id == @user.id
  end

end
