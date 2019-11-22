class ChildrenController < ApplicationController

  def create
    @child = Child.create(child_params)
  end

  private
  def child_params
    params.require(:child).permit(:name, :gender, :age, :allergy, :personality).merge(user_id: current_user.id, request_id: params[:request_id])
  end
  
end
