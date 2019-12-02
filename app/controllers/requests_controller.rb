class RequestsController < ApplicationController

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.create(request_params)
    RequestMailer.with(user: @user).receive_request.deliver_later
    redirect_to :root
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    request = Request.find(params[:id])
    request.update(request_revise)
    RequestMailer.with(user: @user).change_request.deliver_later
    redirect_to :root
  end

  def destroy
    request = Request.find(params[:id])
    request.destroy
    redirect_to user_path(current_user.id)
  end

  def reply
    @request = Request.find(params[:id])
  end

  private
  def request_params
    params.require(:request).permit(:accept_id, :date, :time, :name, :gender, :age, :allergy, :personality, :mention, :reply).merge(user_id: current_user.id)
  end

  def request_revise
    params.require(:request).permit(:accept_id, :date, :time, :name, :gender, :age, :allergy, :personality, :mention, :reply)
  end

end