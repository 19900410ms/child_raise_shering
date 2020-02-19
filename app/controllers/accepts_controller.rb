class AcceptsController < ApplicationController

  before_action :set_accept, only: [:show, :edit, :hide]

  def index
    @accepts = Accept.includes(:user).order("date ASC")
  end

  def show
  end

  def new
    @accept = Accept.new
  end

  def create
    accept = Accept.create(accept_params)
    if accept.save
      redirect_to root_path
    else
      redirect_to new_accept_path
    end
  end

  def edit
  end

  def update
    accept = Accept.find(params[:id])
    accept.update(accept_revise)
    redirect_to user_path(current_user.id)
  end

  def destroy
    accept = Accept.find(params[:id])
    accept.destroy
    redirect_to user_path(current_user.id)
  end

  def hide
  end
  
  def search
  end
  
  private
  def accept_params
    params.require(:accept).permit(:date, :time, :capacity, :age_range, :beg, :hide).merge(user_id: current_user.id)
  end

  def accept_revise
    params.require(:accept).permit(:date, :time, :capacity, :age_range, :beg, :hide)
  end

  def set_accept
    @accept = Accept.find(params[:id])
  end
  
end
