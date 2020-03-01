class RequestsController < ApplicationController

  before_action :set_request, only: [:show, :edit, :destroy, :reply]

  def new
    @request = Request.new
  end

  def create
    @request = Request.create(request_params)
    RequestMailer.with(user: @user).receive_request.deliver_later
    redirect_to root_path
  end

  def edit
  end

  def update
    request = Request.find(params[:id])
    request.update(request_revise)
    if request.reply == "承諾"
      @room = Room.new
      redirect_to new_request_room_path(request_id: request.id)
    else
      redirect_to root_path
    end
  end

  def destroy
    @request.destroy
    redirect_to user_path(current_user.id)
  end

  def reply
  end

  private
  def request_params
    params.require(:request).permit(:accept_id, :date, :time, :name, :gender, :age, :allergy, :personality, :mention, :reply).merge(user_id: current_user.id)
  end

  def request_revise
    params.require(:request).permit(:accept_id, :date, :time, :name, :gender, :age, :allergy, :personality, :mention, :reply)
  end

  def set_request
    @request = Request.find(params[:id])
  end

end