class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @accepts = @user.accepts.order("date ASC")
    @requests = @user.requests.order("date ASC")
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
    accept = Accept.find_by(params[:user_id])
    if current_user.id == accept.user_id
      accept.destroy
      redirect_to user_path(current_user.id)
    else
      redirect_to "/users/#{current_user.id}"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :nickname, :email, :region, :address, :age, :gender)
  end

end
