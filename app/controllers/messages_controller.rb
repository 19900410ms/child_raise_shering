class MessagesController < ApplicationController

  def show
    @request = Request.find(params[:id])
    @messages = Message.all.order("created_at DESC")
  end

  def create
    @message = Message.create(message_params)
    respond_to do |format|
      format.json
    end
  end

  private
  def message_params
    params.require(:message).permit(:chat).merge(user_id: current_user.id, room_id: params[:room_id])
  end
end
