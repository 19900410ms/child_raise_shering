class AcceptsController < ApplicationController

  def index
    @accepts = Accept.includes(:user).order("date: :DESC")
  end

  def new
    @accept = Accept.new
  end

  def create
    accept = Accept.create(accept_params)
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def accept_params
    params.require(:accept).permit(:date, :time, :capacity, :age_range, :beg).merge(user_id: current_user.id)
  end
  
end
