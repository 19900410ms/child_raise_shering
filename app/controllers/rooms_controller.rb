class RoomsController < ApplicationController

  def show
    @room = Room.find(params[:id])
  end

  def new
    @request = Request.find(params[:request_id])
    session[:id] = params[:request_id]
    @room = Room.new
  end

  def create
    @room = Room.find_or_initialize_by(user_id: current_user.id, request_id: session[:id])
    if @room.new_record?
      @room.save!
      redirect_to request_room_path(request_id: session[:id], id: @room.id)
    else
      redirect_to request_room_path(request_id: session[:id], id: @room.id)
    end
  end

end
