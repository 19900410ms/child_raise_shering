class MessagesController < ApplicationController

  def show
    @message = Message.all.order("created_at DESC")
  end

  def create
  end
end
