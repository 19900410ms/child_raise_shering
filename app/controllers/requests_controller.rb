class RequestsController < ApplicationController

  def show
  end

  def new
    @request = Request.new
  end

  def create
    request.create(request_params)
  end

  def destroy
  end

  private
  def request_params

  end
  
end
