class DealsController < ApplicationController

  def show
    @deals = Deals.includes(:user, :accept, :request)
  end
  
end
