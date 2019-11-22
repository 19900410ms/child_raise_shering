class RequestsController < ApplicationController

  def show
  end

  def new
    @request = Request.new
    @child = Child.new
  end

  def create
    @request = Request.create(request_params)
    redirect_to root_path
  end

  def destroy
    request.destroy
  end

  private
  def request_params
    params.require(:request).permit(:date, :time, :mention).merge(user_id: current_user.id)
  end

end