class RoomsController < ApplicationController

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.cerate(user_id: current_user.id, request_id: @request.id)
    if @room.save
      redirect_to request_room_path(room_id: room.id)
    end
  end

  private
  
end
