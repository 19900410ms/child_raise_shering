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
    redirect_to "/requests/#{current_user.id}/edit"
  end

  def destroy
    request.destroy
  end

  private
  def request_params
    params.require(:request).permit(:date, :time, :mention).merge(user_id: current_user.id)
  end

end