class RequestsController < ApplicationController

  def show
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.create(request_params)
    redirect_to root_path
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    request = Request.find(params[:id])
    request.update(request_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    request = Request.find(params[:id])
    request.destroy
    redirect_to user_path(current_user.id)
  end

  private
  def request_params
    params.require(:request).permit(:accept_id, :date, :time, :name, :gender, :age, :allergy, :personality, :mention).merge(user_id: current_user.id)
  end

end