class AcceptsController < ApplicationController

  def index
    @accepts = Accept.includes(:user).order("date ASC")
  end

  def show
    @accept = Accept.find(params[:id])
  end

  def new
    @accept = Accept.new
  end

  def create
    accept = Accept.create(accept_params)
    redirect_to root_path
  end

  def edit
    @accept = Accept.find(params[:id])
  end

  def update
    accept = Accept.find(params[:id])
    accept.update(accept_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    accept = Accept.find(params[:id])
    accept.destroy
    redirect_to user_path(current_user.id)
  end
  
  private
  def accept_params
    params.require(:accept).permit(:date, :time, :capacity, :age_range, :beg).merge(user_id: current_user.id)
  end
  
end
